package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Report;
import com.designus.www.service.AdminMM;
import com.designus.www.service.AuctionMM;

@Controller
public class AdminController {

	@Autowired
	private AdminMM adm;
	
	ModelAndView mav;
	@RequestMapping(value = "/adminInfo", method = RequestMethod.GET)
	public String admininfo() {

		return "adminInfo";
	}

	@RequestMapping(value = "/declareWrite", method = RequestMethod.GET)
	public String declareWrite() {

		return "declareWrite";
	}

	@RequestMapping(value = "/questionList", method = RequestMethod.GET)
	public String questionList() {

		return "questionList";
	}

	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList() {

		return "memberList";
	}

	@RequestMapping(value = "/categoryEdit", method = RequestMethod.GET)
	public String categoryEdit() {

		return "categoryEdit";
	}
	@RequestMapping(value = "/declareWriteCheck", method = RequestMethod.GET)
	public ModelAndView declareWriteCheck(int rp_num) {
		System.out.println("이거찍히니?"+rp_num);
		mav = new ModelAndView();
		mav = adm.declareWriteCheck(rp_num);
		return mav;
	}

}
