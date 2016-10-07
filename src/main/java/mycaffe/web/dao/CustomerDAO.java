package mycaffe.web.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import mycaffe.common.dao.AbstractDAO;

@Repository("customerDAO")
public class CustomerDAO extends AbstractDAO {

	public String getCustomerName(String username) {
		
		return selectOne("customer.getCustomerName", username).toString();
	}
	
	public String getCustomerPwd(String username) {
		
		return selectOne("customer.getCustomerPwd", username).toString();
	}
	
	public String getCustomerAuth(String username) {
		
		return selectOne("customer.getCustomerAuth", username).toString();
	}
	
	public void addCustomer(Map<String, Object> map) {
		
		insert("customer.addCustomer", map);
	}
	
	public void updateImageFile(Map<String, Object> map) throws Exception{
	    update("customer.updateImageFile", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> getCustomerInfo(Map<String, Object> map) {
		
		return (Map<String, Object>)selectOne("customer.getCustomerInfo", map);
	}
	
	public void updateCustomerDateLogin(String username) {
		
		update("customer.updateCustomerDateLogin", username);
	}
	
	public int getSignUpResult(Map<String, Object> map) {
		
		return (Integer) selectOne("customer.getSignUpResult",map);
	}
	
	public int getCustomerIDX(Object customerName) {
		
		return (Integer) selectOne("customer.getCustomerIDX", customerName);
	}
	
	public String getCafeName(int customerIDX) {
		
		return selectOne("customer.getCafeName", customerIDX).toString();
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> getCafeInfo(int customerIDX) {
		
		return (Map<String, Object>)selectOne("customer.getCafeInfo", customerIDX);
	}
	
	public void updateCafeName(Map<String, Object> map) {
		
		update("customer.updateCafeName", map);
	}
	
	public void updateCafeTel(Map<String, Object> map) {
		
		update("customer.updateCafeTel", map);
	}
	
	public void updateCafeLocation(Map<String, Object> map) {
		
		update("customer.updateCafeLocation", map);
	}
	
	public void updateCafeComment(Map<String, Object> map) {
		
		update("customer.updateCafeComment", map);
	}

	public void insertCafeMenu(Map<String, Object> map) {
		
		insert("customer.insertCafeMenu", map);
	}
	
	public void updateCafeMenu(Map<String, Object> map) {
		
		update("customer.updateCafeMenu", map);
	}
	
	public void deleteCafeMenu(Map<String, Object> map) {
		
		delete("customer.deleteCafeMenu", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMenuBoardList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("customer.selectMenuBoardList", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMenuDetail(Map<String, Object> map) {
		
		return (Map<String, Object>) selectOne("customer.selectMenuDetail", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMarketingList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return (List<Map<String, Object>>)selectList("customer.selectMarketingList", map);
	}
	
	public void insertMarketing(Map<String, Object> map) {
		
		insert("customer.insertMarketing", map);
	}
	
	public void restartMarketing(Map<String, Object> map) {
		
		update("customer.restartMarketing", map);
	}
	
	public void terminateMarketing(Map<String, Object> map) {
		
		update("customer.terminateMarketing", map);
	}
	
	public void insertCoupon(Map<String, Object> map) {
		
		insert("customer.insertCoupon", map);
	}
	
	public int selectUserIDX(Map<String, Object> map) {
		
		return (Integer) selectOne("customer.selectUserIDX", map);
	}
	
	public int selectCouponCount(Map<String, Object> map) {
		
		return (Integer) selectOne("customer.selectCouponCount", map);
	}
	
	public void updateCoupon(Map<String, Object> map) {
		
		update("customer.updateCoupon", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCouponAnalyticsBoardList(Map<String, Object> map) throws Exception {
		
		return (List<Map<String, Object>>)selectList("customer.selectCouponAnalyticsBoardList", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectUserInfo(Map<String, Object> map) {
		
		return (Map<String, Object>) selectOne("customer.selectUserInfo", map);
	}
	
	public void addCafe(Map<String, Object> map) {
		
		insert("customer.addCafe", map);
	}

	public int getCafeIDXByCafeTel(Object cafeTel) {
		
		return (Integer) selectOne("customer.getCafeIDXByCafeTel", cafeTel);
	}

	public String getCafeLogo(int cafeIDX) {
		
		return selectOne("customer.getCafeLogo", cafeIDX).toString();
	}
	
}

