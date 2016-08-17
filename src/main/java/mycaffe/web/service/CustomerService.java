package mycaffe.web.service;

import java.util.List;
import java.util.Map;

public interface CustomerService {
	
	String getCustomerName(String username);
	String getCustomerPwd(String username);
	String getCustomerAuth(String username);
	void updateCustomerDateLogin(String username);
	void addCustomer(Map<String, Object> map);
	Map<String, Object> getCustomerInfo(Map<String, Object> map);
	int getSignUpResult(Map<String, Object> map);
	
	int getCustomerIDX(Object customerId);
	String getCafeName(int customerIDX);
	int getCafeIDX(int customerIDX);
	
	void updateCafeName(Map<String, Object> map);
	void updateCafeTel(Map<String, Object> map);
	void updateCafeLocation(Map<String, Object> map);
	void updateCafeComment(Map<String, Object> map);
	
	void insertCafeMenu(Map<String, Object> map);
	void updateCafeMenu(Map<String, Object> map);
	void deleteCafeMenu(Map<String, Object> map);
	List<Map<String, Object>> selectMenuBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> selectMenuDetail(Map<String, Object> map);
	void insertCoupon(Map<String, Object> map);
	List<Map<String, Object>> selectCouponAnalyticsBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> selectUserInfo(Map<String, Object> map);
	
	void addCafe(Map<String, Object> map);
	int getCafeIDXByCafeTel(Object cafeTel);
	
}
