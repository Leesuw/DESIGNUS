package com.designus.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController_SO {
	
	@RequestMapping(value = "/permitWriApply", method = RequestMethod.GET)
	public String permitWriApply() {
		
		return "permitWriApply";
	}
	
}