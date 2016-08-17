package mycaffe.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import mycaffe.web.dao.BoardDAO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Resource(name="boardDAO")
	private BoardDAO boardDAO;
	
	@Override
	public List<Map<String, Object>> selectRecentlyOrderList5(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.selectRecentlyOrderList5(map);
	}
	
	@Override
	public List<Map<String, Object>> selectRecentlyOrderList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.selectRecentlyOrderList(map);
	}

	@Override
	public List<Map<String, Object>> selectNoticeBoardList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.selectNoticeBoardList(map);
	}

	@Override
	public Map<String, Object> selectNoticeBoardDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.updateHitCnt(map);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Map<String, Object> tempMap = boardDAO.selectNoticeBoardDetail(map);
		resultMap.put("map", tempMap);
		
		//첨부 파일 추가할 때
		//List<Map<String, Object>> list = boardDAO.selectFileList(map);
		//resultMap.put("list", list);
		
		return resultMap;
	}

	@Override
	public void insertNoticeBoard(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.insertNoticeBoard(map);
	}
	
	@Override
	public int getNoticeParentIDXCount(int cafeIDX) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.getNoticeParentIDXCount(cafeIDX);
	}
	
	@Override
	public void updateNoticeBoard(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.updateNoticeBoard(map);
	}

	@Override
	public void deleteNoticeBoard(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.deleteNoticeBoard(map);
	}

	@Override
	public List<Map<String, Object>> selectUserOrderList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return boardDAO.selectUserOrderList(map);
	}

	

}
