package mycaffe.web.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface BoardService {

	List<Map<String, Object>> selectRecentlyOrderList5(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> selectRecentlyOrderList(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> selectNoticeBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> selectNoticeBoardDetail(Map<String, Object> map) throws Exception;
	
	void insertNoticeBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;
	int getNoticeParentIDXCount(int cafeIDX) throws Exception;
	void updateNoticeBoard(Map<String, Object> map) throws Exception;
	void deleteNoticeBoard(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectUserOrderList(Map<String, Object> map) throws Exception;
}
