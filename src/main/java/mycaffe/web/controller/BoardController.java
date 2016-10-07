package mycaffe.web.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mycaffe.common.controller.CommandMap;
import mycaffe.web.service.BoardService;
import mycaffe.web.service.CustomerService;

@Controller
public class BoardController {
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="boardService")
    private BoardService boardService;
    
    @Resource(name="customerService")
	private CustomerService customerService;
    
    @RequestMapping("/board/openCafeNoticeMnt.do")
	public ModelAndView openCafeNoticeMnt(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/board/board_list");
		
		int cafeIDX = Integer.parseInt(request.getSession().getAttribute("cafeIDX").toString());
		commandMap.getMap().put("cafeIDX", cafeIDX);
		
		List<Map<String, Object>> list = boardService.selectNoticeBoardList(commandMap.getMap());
		mv.addObject("list", list);
		
		return mv;
	}
    
    @RequestMapping(value="/board/openBoardWrite.do")
    public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("/board/board_write");
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/insertBoard.do")
    public ModelAndView insertBoard(CommandMap commandMap, HttpServletRequest request) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/board/openCafeNoticeMnt.do");
    	
    	int cafeIDX = Integer.parseInt(request.getSession().getAttribute("cafeIDX").toString());
		commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	//해당 카페의 공지사항 글 Count
    	int noticeParentIDX = boardService.getNoticeParentIDXCount(cafeIDX);
    	commandMap.getMap().put("noticeParentIDX", noticeParentIDX);
    	
    	boardService.insertNoticeBoard(commandMap.getMap(), request);
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/openBoardDetail.do")
    public ModelAndView openBoardDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
    	ModelAndView mv = new ModelAndView("/board/board_detail");
    	
    	int cafeIDX = Integer.parseInt(request.getSession().getAttribute("cafeIDX").toString());
		commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	Map<String, Object> map = boardService.selectNoticeBoardDetail(commandMap.getMap());
    	mv.addObject("map", map.get("map"));
    	
    	//첨부 파일 추가할 때
    	//mv.addObject("list", map.get("list"));
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/openBoardUpdate.do")
    public ModelAndView openBoardUpdate(CommandMap commandMap, HttpServletRequest request) throws Exception {
    	ModelAndView mv = new ModelAndView("/board/board_update");
    	
    	int cafeIDX = Integer.parseInt(request.getSession().getAttribute("cafeIDX").toString());
		commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	Map<String, Object> map = boardService.selectNoticeBoardDetail(commandMap.getMap());
    	mv.addObject("map", map.get("map"));
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/updateBoard.do")
    public ModelAndView updateBoard(CommandMap commandMap, HttpServletRequest request) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/board/openCafeNoticeMnt.do");
    	
    	int cafeIDX = Integer.parseInt(request.getSession().getAttribute("cafeIDX").toString());
		commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	boardService.updateNoticeBoard(commandMap.getMap());
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/deleteBoard.do")
    public ModelAndView deleteBoard(CommandMap commandMap, HttpServletRequest request) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/board/openCafeNoticeMnt.do");
    	
    	int cafeIDX = Integer.parseInt(request.getSession().getAttribute("cafeIDX").toString());
		commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	boardService.deleteNoticeBoard(commandMap.getMap());
    	
    	return mv;
    }
    
}
