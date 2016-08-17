package mycaffe.login.dao;

import org.apache.log4j.Logger;
import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SecurityDAOImpl extends SqlSessionDaoSupport implements SecurityDAO {

	Logger log = Logger.getLogger(this.getClass());
	
	@Override
	public String getCustomerPwd(String username) {
		// TODO Auto-generated method stub
		
		return getSqlSession().selectOne("customer.getCustomerPwd", username).toString();
	}

	@Override
	public String getCustomerName(String username) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("customer.getCustomerName", username).toString();
	}

	@Override
	public String getCustomerAuth(String username) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("customer.getCustomerAuth", username).toString();
	}

	@Override
	public void updateCustomerDateLogin(String username) {
		// TODO Auto-generated method stub
		
		getSqlSession().selectOne("customer.updateCustomerDateLogin", username);
		
	}

}
