package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.dao.IauctionDao;

@Service

public class AuctionMM {
	@Autowired
	private IauctionDao aDao;
	@Autowired
    private HttpSession session;
	
	private ModelAndView mav;

	public ModelAndView auctionWriteSubmit(MultipartHttpServletRequest multi) {
		mav=new ModelAndView();
		String id = (String)session.getAttribute("id");
		String view=null;
		String title = multi.getParameter("au_title");
		String cgcode = multi.getParameter("au_cgcode");
		int qty = Integer.parseInt(multi.getParameter("au_qty"));
		int minprice = Integer.parseInt(multi.getParameter("au_minprice"));
		int inprice = Integer.parseInt(multi.getParameter("au_inprice"));
		String contents = multi.getParameter("au_contents");
		
		System.out.println("id ="+multi.getParameter("au_mbid_w"));
		System.out.println("title ="+multi.getParameter("au_title"));
		System.out.println("cgcode ="+Integer.parseInt(multi.getParameter("au_cgcode")));
		System.out.println("qty ="+Integer.parseInt(multi.getParameter("au_qty")));
		System.out.println("minprice ="+Integer.parseInt(multi.getParameter("au_minprice")));
		System.out.println("inprice ="+Integer.parseInt(multi.getParameter("au_inprice")));
		System.out.println("contents ="+multi.getParameter("au_contents"));
		
		Auction au = new Auction();
		/*
		  if(aDao.getAuctionWriteInsert(au)) { 
		  view = "auctionList"; 
		  } else { 
		  view = "auctionWrite"; }
		*/
		
		
		mav.setViewName(view);
		return mav;
	}
	

}
