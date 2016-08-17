package mycaffe.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mycaffe.common.controller.CommandMap;

@Controller
public class OrderController {

	
	
	//================================================================================
    // Web -> iOS
    //================================================================================
	
	@RequestMapping("/order/manufactureComplete.do")
	public void manufactureComplete(CommandMap commandMap) throws Exception {
		
		
	}
	
	
	
	//================================================================================
    // iOS -> Web
    //================================================================================
	
	
}
