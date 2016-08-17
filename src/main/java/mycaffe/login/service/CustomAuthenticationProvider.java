package mycaffe.login.service;

import java.util.ArrayList;
import java.util.Collection;

import org.apache.log4j.Logger;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;

import mycaffe.login.dao.SecurityDAO;

public class CustomAuthenticationProvider implements AuthenticationProvider {
	Logger log = Logger.getLogger(this.getClass());
	
	private PasswordEncoder passwordEncoder;
	
	private SecurityDAO securityDAO;
	
	public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}
	
	public void setSecurityDAO(SecurityDAO securityDAO) {
		this.securityDAO = securityDAO;
	}
	
	/*
	 * (non-Javadoc)
	 * username, password, auth를 한번에 가져오는 쿼리 필요. (map을 이용)
	 */
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		String username = authentication.getName();
		String userPwd = (String) authentication.getCredentials();
		 
		if (!username.equals(securityDAO.getCustomerName(username))) {
            throw new BadCredentialsException("Username not found.");
        }
		
		String dbuserPwd = securityDAO.getCustomerPwd(username);
		
        if (!passwordEncoder.matches(userPwd, dbuserPwd)) {
            throw new BadCredentialsException("Wrong password.");
        }
        
        Collection<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority(securityDAO.getCustomerAuth(username)));
        
        UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(username, userPwd, roles);
        result.setDetails(new User(username, userPwd, roles));
        
        securityDAO.updateCustomerDateLogin(username);
        
        return result;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return true;
	}

}
