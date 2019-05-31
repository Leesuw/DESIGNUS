package com.designus.www;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	ModelAndView mav;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}
	@RequestMapping(value = "/logingo", method = RequestMethod.GET)
	public String logingo() {
		
		return "loginBox";
	}
	@RequestMapping(value = "/servicecenter", method = RequestMethod.GET)
	public String servicecenter() {
		
		return "sc_Question";
	}
	@RequestMapping(value = "/bestwriter", method = RequestMethod.GET)
	public String bestwriter() {
		
		return "popularWriterFrm";
	}
	@RequestMapping(value = "/norJoinFrm", method = RequestMethod.GET)
	public String norJoinFrm() {
		
		return "norjoinFrm";
	}
	@RequestMapping(value = "/wriJoinFrm", method = RequestMethod.GET)
	public String wriJoinFrm() {
		
		return "wrijoinFrm";
	}
}
