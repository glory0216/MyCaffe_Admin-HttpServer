package mycaffe.web.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface CustomerService {
	
	String getCustomerName(String username);
	String getCustomerPwd(String username);
	String getCustomerAuth(String username);
	void updateCustomerDateLogin(String username);
	void addCustomer(Map<String, Object> map, HttpServletRequest request) throws Exception;
	Map<String, Object> getCustomerInfo(Map<String, Object> map);
	int getSignUpResult(Map<String, Object> map);
	
	int getCustomerIDX(Object customerId);
	String getCafeName(int customerIDX);
	Map<String, Object> getCafeInfo(int customerIDX);
	String getCafeLogo(int cafeIDX);
	
	void updateCafeName(Map<String, Object> map, HttpServletRequest request);
	void updateCafeTel(Map<String, Object> map, HttpServletRequest request);
	void updateCafeLocation(Map<String, Object> map, HttpServletRequest request);
	void updateCafeComment(Map<String, Object> map, HttpServletRequest request);
	void updateCafeLogo(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	void insertCafeMenu(Map<String, Object> map);
	void updateCafeMenu(Map<String, Object> map);
	void deleteCafeMenu(Map<String, Object> map);
	List<Map<String, Object>> selectMenuBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> selectMenuDetail(Map<String, Object> map);
	
	List<Map<String, Object>> selectMarketingList(Map<String, Object> map) throws Exception;
	void insertMarketing(Map<String, Object> map) throws Exception;
	void restartMarketing(Map<String, Object> map) throws Exception;
	void terminateMarketing(Map<String, Object> map) throws Exception;
	
	void insertCoupon(Map<String, Object> map);
	List<Map<String, Object>> selectCouponAnalyticsBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> selectUserInfo(Map<String, Object> map);
	
	void addCafe(Map<String, Object> map);
	int getCafeIDXByCafeTel(Object cafeTel);
	
}
