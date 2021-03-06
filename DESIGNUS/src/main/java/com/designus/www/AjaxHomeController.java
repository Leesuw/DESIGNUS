package com.designus.www;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Member;
import com.designus.www.bean.Notify;
import com.designus.www.service.CommonMM;
import com.designus.www.service.MemberMM;

@RestController
public class AjaxHomeController {
	
	@Autowired
	private CommonMM cm;
	@Autowired
	private MemberMM mm;
	
	ModelAndView mav;
	
	@RequestMapping(value = "/mem", produces = "application/json;charset=utf-8", method = { RequestMethod.GET, RequestMethod.POST })
	public String mem() {
     System.out.println("여기는 와야 정상인디... 아!! 메소드 방시 적어야 된다...ㅠㅠ");
		String ab = mm.mem();
	
		return ab;
	}
	
	@RequestMapping(value = "ajax/searchranking", produces = "application/json;charset=utf-8", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody String searchRanking() {
		String jsonStr = cm.searchRanking();
		return jsonStr;
	}
	
	@RequestMapping(value = "ajax/category", produces = "application/json;charset=utf-8", method = { RequestMethod.GET, RequestMethod.POST })
	public String category() {
		String jsonStr = cm.category();
		return jsonStr;
	}
	
	@RequestMapping(value = "ajax/notification", produces = "application/json;charset=utf-8", method = { RequestMethod.GET, RequestMethod.POST })
	public String notification() {
		String jsonStr = cm.notification();
		return jsonStr;
	}
	
	@RequestMapping(value = "ajax/updatearm", produces = "application/json;charset=utf-8", method = { RequestMethod.GET, RequestMethod.POST })
	public String updatearm(Notify nf) {
		String jsonStr = cm.updateArm(nf);
		return jsonStr;
	}
	
	
	
}
