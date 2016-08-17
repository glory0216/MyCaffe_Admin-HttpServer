package mycaffe.login.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

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
public class LoginController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="boardService")
    private BoardService boardService;
    
    @Resource(name="customerService")
	private CustomerService customerService;
	
	/********************
	* Web Admin(Customer) 로그인
	********************/
	
	@RequestMapping("/openLoginPage.do")
	public ModelAndView openLoginPage() throws Exception {
		ModelAndView mv = new ModelAndView("/login");
		
		return mv;
	}
	
	@RequestMapping("/openRegisterPage.do")
	public ModelAndView openRegisterPage() throws Exception {
		ModelAndView mv = new ModelAndView("/register");
		
		return mv;
	}
	
	@RequestMapping("/login.do")
	public ModelAndView login() throws Exception {
		ModelAndView mv = new ModelAndView("/login");
		
		return mv;
	}
	
	@RequestMapping("/loginSuccess.do")
	public ModelAndView loginSuccess(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/main");
		
		//Spring Security 로그인 정보 가져와서 commandMap에 put
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String customerId = auth.getName();
		
		commandMap.getMap().put("customerId", customerId);
		
		int customerIDX = customerService.getCustomerIDX(commandMap.getMap().get("customerId"));
		String cafeName = customerService.getCafeName(customerIDX);
		
		System.out.println("customer IDX : " + customerIDX);
		System.out.println("카페 이름 : " + cafeName);
		
		int cafeIDX = customerService.getCafeIDX(customerIDX);
		
		commandMap.getMap().put("cafeIDX", cafeIDX);
		
		System.out.println("카페 IDX : " + cafeIDX);
		
		List<Map<String, Object>> list = boardService.selectRecentlyOrderList5(commandMap.getMap());
		
		mv.addObject("list", list);
		mv.addObject("cafeName", cafeName);
		
		return mv;
	}
	
	@RequestMapping("/logoutSuccess.do")
	public ModelAndView logoutSuccess() throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/openLoginPage.do");
		
		return mv;
	}
	
	@RequestMapping("/login.do?fail=true")
	public ModelAndView loginFail() throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/openLoginPage.do");
		
		return mv;
	}
	
	@RequestMapping("/loginDuplicate.do")
	public ModelAndView loginDuplicate() throws Exception {
		ModelAndView mv = new ModelAndView("/loginDuplicate");
		
		return mv;
	}
	
	/********************
	* App 사용 유저 로그인
	********************/
	
}
