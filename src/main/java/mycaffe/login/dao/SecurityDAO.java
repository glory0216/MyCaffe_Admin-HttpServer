package mycaffe.login.dao;

public interface SecurityDAO {

	String getCustomerName(String username);
	String getCustomerPwd(String username);
	String getCustomerAuth(String username); 
	void updateCustomerDateLogin(String username);
	
}
