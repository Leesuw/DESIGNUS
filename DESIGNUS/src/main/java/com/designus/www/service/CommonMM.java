package com.designus.www.service;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Category;
import com.designus.www.bean.Notify;
import com.designus.www.bean.RealTimeSearchRanking;
import com.designus.www.bean.RevAuction;
import com.designus.www.bean.Sponsor;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.IauctionDao;
import com.designus.www.dao.IcommonDao;
import com.designus.www.userClass.DateAdjust;
import com.google.gson.Gson;

@Service
public class CommonMM {
	@Autowired
	private IcommonDao cDao;
	@Autowired
	private IRevAuctionDao rDao;
	@Autowired
	private IauctionDao aDao;
	@Autowired
	private HttpSession session;
	private ModelAndView mav;
	/*
	public ModelAndView bestajax(Auction at) {
		mav =  new ModelAndView();
		String view=null;
		List<Auction> aList=null;
		Auction au = new Auction();
		aList = cDao.getbestInfo(au);
		mav.addObject("aList",aList);
		return mav;
	}
	*/

	public String searchRanking() {
		List<RealTimeSearchRanking> sList = cDao.getSearchRankingSelect();
		String json = new Gson().toJson(sList);
		return json;
	}
	public ModelAndView searching(String word) throws ParseException {
		mav = new ModelAndView();
		List<RealTimeSearchRanking> check = cDao.getSearchingSelect(word);
		DateAdjust da = new DateAdjust();
		System.out.println("검색어 체크결과="+check);
		if(check.isEmpty()) {
			cDao.searchingInsert(word);
			System.out.println("검색어 insert 성공");
		} else {
			cDao.searchingUpdate(word);
			System.out.println("검색어 update 성공");
		}
		
		List<Auction> auList = aDao.getAuctionListSelect2(word);
		for(int i = 0 ; i < auList.size(); i++) {
			String new_Audate = da.changeDateToString(auList.get(i).getAu_date());
			auList.get(i).setAu_date(new_Audate);
		}
		
		List<RevAuction> raList = rDao.getRevAuctionListSelect2(word);
		for(int i = 0 ; i < raList.size(); i++) {
			String new_Radate = da.changeDateToString(raList.get(i).getRa_date());
			raList.get(i).setRa_date(new_Radate);
		}
		
		mav.addObject("auList",auList);
		mav.addObject("raList",raList);
		//mav.addObject("paging", getPaging(num));
		
		mav.setViewName("searchingPage");
		return mav;
	}
	public String category() {
		List<Category> cList = cDao.categorySelect();
		String jsonStr = new Gson().toJson(cList);
		System.out.println("jsonStr(카테고리 리스트)="+jsonStr);
		return jsonStr;
	}
	public String notification() {
		String id = session.getAttribute("id").toString();
		List<Notify> nList = cDao.notificationSelect(id);
		String jsonStr = new Gson().toJson(nList);
		return jsonStr;
	}
	public String updateArm(Notify nf) {
		String jsonStr = null;
		int chk = cDao.updateArmUpdate(nf);
		if(chk>0) {
			jsonStr = "확인";
		}
		jsonStr = new Gson().toJson(jsonStr);
		return jsonStr;
	}
	public ModelAndView homeSetting() throws ParseException {
		mav = new ModelAndView();
		
		//DateAdjust 클래스에서 설정한 시간에 대해 경과유무를 확인할 수 있도록 하는 클래스 및 boolean
		DateAdjust da = new DateAdjust();
		boolean f = true;
		
		List<Auction> aRecommList=cDao.getbestInfo(); //AU_RECOMM_LIST 뷰에서 가져옴
		List<Auction> au_recommList = new ArrayList<>();

		for(int i=0;i<aRecommList.size();i++) {
			f = da.compareDateToBoolean(aRecommList.get(i).getAu_date());
			if(f)
			au_recommList.add(aRecommList.get(i));
		}
		
		List<RevAuction> raRecommList = cDao.getbestInfo2();
		List<RevAuction> ra_recommList = new ArrayList<>();
		
		for(int i=0;i<raRecommList.size();i++) {
			f = da.compareDateToBoolean(raRecommList.get(i).getRa_date());
			if(f)
				ra_recommList.add(raRecommList.get(i));
		}
		
		
		List<Sponsor> ssRecommList = cDao.getbestInfo3();
		List<Sponsor> ss_recommList = new ArrayList<>();
			
		for(int i=0;i<ssRecommList.size();i++) {
			f = da.compareDateToBoolean(ssRecommList.get(i).getSs_date());
			if(f)
				ss_recommList.add(ssRecommList.get(i));
		}
		
		
		System.out.println("ss_recommList의 사이즈="+ss_recommList.size());
		for (int i = 0; i < ss_recommList.size(); i++) {
		if(ss_recommList.get(i).getSst_order()!=0) {
				int a = ss_recommList.get(i).getSst_order();
				int b = ss_recommList.get(i).getSs_goalqty();
				Double c =	(double) Math.round((a*100)/b);
		  
				ss_recommList.get(i).setSs_curPercent(c);
				System.out.println(a+"나누기"+b+"는="+c);
			} else {
				ss_recommList.get(i).setSs_curPercent((double)0);
			}
		}

		mav.addObject("recommList", au_recommList);
		mav.addObject("recommList_ra", ra_recommList);
		mav.addObject("recommList_ss", ss_recommList);
		mav.setViewName("home");
		return mav;

	}
	
}
