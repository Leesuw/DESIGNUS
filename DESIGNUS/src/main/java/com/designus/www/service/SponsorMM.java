package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Sponsor;
import com.designus.www.bean.SponsorProgress;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.dao.IsponsorDao;
import com.designus.www.userClass.UploadFile;
import com.google.gson.Gson;

import lombok.Data;

@Service
public class SponsorMM {

	@Autowired
	private IsponsorDao sDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private UploadFile upload;

	Sponsor sp;

	private ModelAndView mav;

	public ModelAndView sponupload(MultipartHttpServletRequest multi) {
		System.out.println("넘어와라ㅏ");

		mav = new ModelAndView();
		String view = null;
		int num = 10000;
		String id = (String) session.getAttribute("id");
		String sstitle = multi.getParameter("ss_title");
		int ssprice = Integer.parseInt(multi.getParameter("ss_price"));
		int ssqty = Integer.parseInt(multi.getParameter("ss_goalqty"));
		String scontents = multi.getParameter("ss_contents");

		System.out.println("id2=" + id);
		System.out.println("title2=" + sstitle);
		/*
		 * String id = (String) session.getAttribute("id"); String sstitle =
		 * ss.getSs_title(); int ssprice = ss.getSs_price(); int ssqty =
		 * ss.getSs_goalqty(); String scontents = ss.getSs_contents();
		 */

		Sponsor sp = new Sponsor();

		sp.setSs_mbid_w(id);
		sp.setSs_title(sstitle);
		sp.setSs_price(ssprice);
		sp.setSs_goalqty(ssqty);
		sp.setSs_contents(scontents);

		System.out.println("id=" + id);
		System.out.println("title=" + sstitle);
		System.out.println("ssprice=" + ssprice);
		System.out.println("ssqty=" + ssqty);
		System.out.println("scontents=" + scontents);

		num = sDao.getSponserwri(sp);

		sp.setSs_num(num);
		if (sDao.getSponserwriterinsert(sp)) {
			num = sDao.getSponserwri(sp);
			sp.setSs_num(num);
			upload.fileUpsponsor(multi, sp);
			mav.addObject("ss_num", num);
			view = "redirect:/sponsor";
			System.out.println("num=" + num);
		} else {
			view = "sponregistration";
		}

		mav.setViewName(view);
		return mav;
	}

	public String productinfo() {
		mav = new ModelAndView();
		System.out.println("후원리스트 불러오기");
		String id = session.getAttribute("id").toString();
		List<SponsorProgress> spList = sDao.productinfo();
		System.out.println(id);
		Gson gs = new Gson();
		String jsonObj = gs.toJson(spList);
		System.out.println(jsonObj);

		return jsonObj;
	}
}
