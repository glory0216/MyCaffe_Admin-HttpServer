package mycaffe.web.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
	public ModelAndView openCafeNoticeMnt(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/board/board_list");
		
		//Spring Security 로그인 정보 가져와서 commandMap에 put
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String customerId = auth.getName();
		commandMap.getMap().put("customerId", customerId);
				
		int customerIDX = customerService.getCustomerIDX(commandMap.getMap().get("customerId"));
		String cafeName = customerService.getCafeName(customerIDX);
		commandMap.getMap().put("customerIDX", customerIDX);
		
		int cafeIDX = customerService.getCafeIDX(customerIDX);
		commandMap.getMap().put("cafeIDX", cafeIDX);
		
		List<Map<String, Object>> list = boardService.selectNoticeBoardList(commandMap.getMap());
		mv.addObject("list", list);
		
		mv.addObject("cafeName", cafeName);
		
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
    	
    	//Spring Security 로그인 정보 가져와서 commandMap에 put
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   		String customerId = auth.getName();
   		commandMap.getMap().put("customerId", customerId);
    					
   		int customerIDX = customerService.getCustomerIDX(commandMap.getMap().get("customerId"));
   		String cafeName = customerService.getCafeName(customerIDX);
  		commandMap.getMap().put("customerIDX", customerIDX);
    			
    	int cafeIDX = customerService.getCafeIDX(customerIDX);
    	commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	//해당 카페의 공지사항 글 Count
    	int noticeParentIDX = boardService.getNoticeParentIDXCount(cafeIDX);
    	commandMap.getMap().put("noticeParentIDX", noticeParentIDX);
    	
    	boardService.insertNoticeBoard(commandMap.getMap(), request);
    	
    	mv.addObject("cafeName", cafeName);
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/openBoardDetail.do")
    public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("/board/board_detail");
    	
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   		String customerId = auth.getName();
   		commandMap.getMap().put("customerId", customerId);
    					
   		int customerIDX = customerService.getCustomerIDX(commandMap.getMap().get("customerId"));
   		String cafeName = customerService.getCafeName(customerIDX);
  		commandMap.getMap().put("customerIDX", customerIDX);
    			
    	int cafeIDX = customerService.getCafeIDX(customerIDX);
    	commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	mv.addObject("cafeName", cafeName);
    	
    	Map<String, Object> map = boardService.selectNoticeBoardDetail(commandMap.getMap());
    	mv.addObject("map", map.get("map"));
    	
    	//첨부 파일 추가할 때
    	//mv.addObject("list", map.get("list"));
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/openBoardUpdate.do")
    public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("/board/board_update");
    	
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   		String customerId = auth.getName();
   		commandMap.getMap().put("customerId", customerId);
    					
   		int customerIDX = customerService.getCustomerIDX(commandMap.getMap().get("customerId"));
   		String cafeName = customerService.getCafeName(customerIDX);
  		commandMap.getMap().put("customerIDX", customerIDX);
    			
    	int cafeIDX = customerService.getCafeIDX(customerIDX);
    	commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	mv.addObject("cafeName", cafeName);
    	
    	Map<String, Object> map = boardService.selectNoticeBoardDetail(commandMap.getMap());
    	mv.addObject("map", map.get("map"));
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/updateBoard.do")
    public ModelAndView updateBoard(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/board/openCafeNoticeMnt.do");
    	
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   		String customerId = auth.getName();
   		commandMap.getMap().put("customerId", customerId);
    					
   		int customerIDX = customerService.getCustomerIDX(commandMap.getMap().get("customerId"));
   		String cafeName = customerService.getCafeName(customerIDX);
  		commandMap.getMap().put("customerIDX", customerIDX);
    			
    	int cafeIDX = customerService.getCafeIDX(customerIDX);
    	commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	mv.addObject("cafeName", cafeName);
    	
    	boardService.updateNoticeBoard(commandMap.getMap());
    	
    	return mv;
    }
    
    @RequestMapping(value="/board/deleteBoard.do")
    public ModelAndView deleteBoard(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/board/openCafeNoticeMnt.do");
    	
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   		String customerId = auth.getName();
   		commandMap.getMap().put("customerId", customerId);
    					
   		int customerIDX = customerService.getCustomerIDX(commandMap.getMap().get("customerId"));
  		commandMap.getMap().put("customerIDX", customerIDX);
    			
    	int cafeIDX = customerService.getCafeIDX(customerIDX);
    	commandMap.getMap().put("cafeIDX", cafeIDX);
    	
    	boardService.deleteNoticeBoard(commandMap.getMap());
    	
    	return mv;
    }
    
}
