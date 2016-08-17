package mycaffe.web.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import mycaffe.web.dao.CustomerDAO;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="customerDAO")
	private CustomerDAO customerDAO;
	
	@Override
	public String getCustomerName(String username) {
		// TODO Auto-generated method stub
		
		return customerDAO.getCustomerName(username);
	}

	@Override
	public String getCustomerPwd(String username) {
		// TODO Auto-generated method stub
		
		return customerDAO.getCustomerPwd(username);
	}
	
	@Override
	public String getCustomerAuth(String username) {
		// TODO Auto-generated method stub
		
		return customerDAO.getCustomerAuth(username);
	}

	@Override
	public void addCustomer(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.addCustomer(map);
	}

	@Override
	public Map<String, Object> getCustomerInfo(Map<String, Object> map) {
		// TODO Auto-generated method stub
	
		return customerDAO.getCustomerInfo(map);
	}

	@Override
	public void updateCustomerDateLogin(String username) {
		// TODO Auto-generated method stub
		
		customerDAO.updateCustomerDateLogin(username);
	}

	@Override
	public int getSignUpResult(Map<String, Object> map) {
		// TODO Auto-generated method stub
	
		return customerDAO.getSignUpResult(map);
	}

	@Override
	public int getCustomerIDX(Object customerId) {
		// TODO Auto-generated method stub
		
		return customerDAO.getCustomerIDX(customerId);
	}

	@Override
	public String getCafeName(int customerIDX) {
		// TODO Auto-generated method stub
		
		return customerDAO.getCafeName(customerIDX);
	}

	@Override
	public int getCafeIDX(int customerIDX) {
		// TODO Auto-generated method stub
		
		return customerDAO.getCafeIDX(customerIDX);
	}

	@Override
	public void updateCafeName(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.updateCafeName(map);
	}

	@Override
	public void updateCafeTel(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.updateCafeTel(map);
	}

	@Override
	public void updateCafeLocation(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.updateCafeLocation(map);
	}

	@Override
	public void updateCafeComment(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.updateCafeComment(map);
	}

	@Override
	public void insertCafeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.insertCafeMenu(map);
	}
	
	@Override
	public void updateCafeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.updateCafeMenu(map);
	}
	
	@Override
	public void deleteCafeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.deleteCafeMenu(map);
	}

	@Override
	public List<Map<String, Object>> selectMenuBoardList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return customerDAO.selectMenuBoardList(map);
	}
	
	@Override
	public Map<String, Object> selectMenuDetail(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		return customerDAO.selectMenuDetail(map);
	}

	@Override
	public void insertCoupon(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		int userIDX = customerDAO.selectUserIDX(map);
		map.put("userIDX", userIDX);
		
		int checkCoupon = customerDAO.selectCouponCount(map);
		
		if (checkCoupon == 0) {
			customerDAO.insertCoupon(map);
		}
		else {
			customerDAO.updateCoupon(map);
		}
		
	}

	@Override
	public List<Map<String, Object>> selectCouponAnalyticsBoardList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return customerDAO.selectCouponAnalyticsBoardList(map);
	}

	@Override
	public Map<String, Object> selectUserInfo(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		int userIDX = customerDAO.selectUserIDX(map);
		map.put("userIDX", userIDX);
		
		return customerDAO.selectUserInfo(map);
	}

	@Override
	public void addCafe(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		customerDAO.addCafe(map);
	}

	@Override
	public int getCafeIDXByCafeTel(Object cafeTel) {
		// TODO Auto-generated method stub
		
		return customerDAO.getCafeIDXByCafeTel(cafeTel);
	}

	
	

}
