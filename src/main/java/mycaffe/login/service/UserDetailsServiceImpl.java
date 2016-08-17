package mycaffe.login.service;

import org.apache.log4j.Logger;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import mycaffe.login.dao.SecurityDAO;

public class UserDetailsServiceImpl implements UserDetailsService {
	Logger log = Logger.getLogger(this.getClass());
	
	private SecurityDAO securityDAO;
	
	public void setSecurityDAO(SecurityDAO securityDAO) {
		this.securityDAO = securityDAO;
	}

	/*
	 * 로그인 시 아이디 유효성 검사 필요함. 사용 안함.  
	 */
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub    
		
		String userPwd = securityDAO.getCustomerPwd(username);
		CustomUserDetails user = new CustomUserDetails(username, userPwd);
		
		System.out.println("user : " + user);
		
		return user;
		
	}

}
