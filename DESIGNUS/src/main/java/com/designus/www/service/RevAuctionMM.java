package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.RevAuction;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.userClass.UploadFile;

@Service
public class RevAuctionMM {

	@Autowired
	HttpSession session;
	@Autowired
	private IRevAuctionDao rDao;
	@Autowired
	private UploadFile upload;

	ModelAndView mav;

	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		String view = null;
		mav = new ModelAndView();

		String ra_mbid = session.getAttribute("id").toString();
		String ra_title = multi.getParameter("ra_title");
		String ra_contents = multi.getParameter("ra_contents");
		int ra_cgcode = Integer.parseInt(multi.getParameter("ra_cgcode"));
		String ra_oc = "O";

		//		if(ra_oc.equals("비공개")) {
		//			ra_oc="C";
		//		} else
		//			ra_oc="O";
		//			System.out.println("공개/비공개 여부를 확인해야합니다.");

		RevAuction ra = new RevAuction();
		ra.setRa_num(0);
		ra.setRa_mbid(ra_mbid);
		ra.setRa_title(ra_title);
		ra.setRa_contents(ra_contents);
		ra.setRa_cgcode(ra_cgcode);
		ra.setRa_oc(ra_oc);

		//boolean b = bDao.raInsert(ra);
		//ra.setB_num(bDao.getraNum());
		//raFile 등록을 위해 DB에서 글번호가져옴

		int currval = upload.fileUp(multi, ra);
		if (currval != 0) {
			//글쓰기 성공 view = "redirect:boardList";
			mav.addObject("ra_num", currval);
			view = "redirect:/revauctionread";
			///"+currval
		} else if (currval == 0) {
			view = "revAuctionWrite";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView revAuctionRead(int ra_num) {
		//mav.addObject("ra_num", ra_num);
		String view = null;
		RevAuction ra = new RevAuction();
		ra = rDao.revAuctionReadSelect(ra_num);
		
		System.out.println("ra_num="+ra.getRa_num());
		System.out.println("ra_mbid="+ra.getRa_mbid());
		System.out.println("ra_title="+ra.getRa_title());
		System.out.println("ra_cgcode="+ra.getRa_cgcode());
		System.out.println("ra_image="+ra.getRa_image());
		System.out.println("ra_file="+ra.getRa_file());
		System.out.println("ra_oc="+ra.getRa_oc());
		System.out.println("ra_date="+ra.getRa_date());
		System.out.println("ra_contents="+ra.getRa_contents());
		
		mav.addObject("raInfo",ra);
		if(ra!=null) {
			view = "revAuctionRead";
		}
			mav.setViewName(view);
		return mav;
	}

}
