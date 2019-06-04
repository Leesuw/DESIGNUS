package com.designus.www;

import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.RevAuctionMM;

@Controller
public class AuctionController_sub {
	/*
	 * @Autowired private CommonMM cm;
	 */

	ModelAndView mav;

	@Autowired
	private RevAuctionMM ram;

	@RequestMapping(value = "/revauctionWrite", method = RequestMethod.GET)
	public ModelAndView revAuctionWrite() {
		mav = new ModelAndView();
		mav.setViewName("revAuctionWrite"); // joinFrm 하나 생성
		return mav;
	}

	@RequestMapping(value = "/revauctionsubmit", method = RequestMethod.POST)
	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		Iterator<String> ite = multi.getFileNames();
		int i = 1;
		while(ite.hasNext()) {
			System.out.println(i+". "+ite.next());
			i++;
		}
		
		mav = ram.revAuctionSubmit(multi);
		return mav;
	}
}