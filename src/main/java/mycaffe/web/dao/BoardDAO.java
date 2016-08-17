package mycaffe.web.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import mycaffe.common.dao.AbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRecentlyOrderList5(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("board.selectRecentlyOrderList5", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRecentlyOrderList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("board.selectRecentlyOrderList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectNoticeBoardList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("board.selectNoticeBoardList", map);
	}
	
	public void insertNoticeBoard(Map<String, Object> map) throws Exception {
		insert("board.insertNoticeBoard", map);
	}
	
	public void updateHitCnt(Map<String, Object> map) throws Exception{
	    update("board.updateHitCnt", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectNoticeBoardDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectOne("board.selectNoticeBoardDetail", map);
	}
	
	public void updateNoticeBoard(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		update("board.updateNoticeBoard", map);
	}
	
	public void deleteNoticeBoard(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		update("board.deleteNoticeBoard", map);
	}
	
	public int getNoticeParentIDXCount(int cafeIDX) throws Exception {
		
		return (Integer) selectOne("board.getNoticeParentIDXCount", cafeIDX);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectUserOrderList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("board.selectUserOrderList", map);
	}
	
}
