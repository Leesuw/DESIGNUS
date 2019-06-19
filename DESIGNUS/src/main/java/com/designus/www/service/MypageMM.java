package com.designus.www.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.AloneQuestion;
import com.designus.www.bean.AuctionProgress;
import com.designus.www.bean.AuctionTender;
import com.designus.www.bean.Basket;
import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.bean.Notify;
import com.designus.www.bean.QuestionReply;
import com.designus.www.bean.SponsorProgress;
import com.designus.www.bean.SponsorTender;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.dao.IboardDao;
import com.designus.www.dao.ImemberDao;
import com.designus.www.dao.ImypageDao;
import com.google.gson.Gson;

@Service
public class MypageMM {
	ModelAndView mav;
	@Autowired
	private ImypageDao pDao;
	@Autowired
	private ImemberDao mDao;
	@Autowired
	private IboardDao bDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private com.designus.www.userClass.UploadFile upload;

	public ModelAndView historylist(String list) {
		mav = new ModelAndView();

		String view = null;
		/*
		 * List<Basket> lbauc = null; List<Basket> lbrev = null; List<Basket> lbspon =
		 * null;
		 */

		System.out.println("sddd:" + list);
		if (list.equals("rev")) {
			view = "redirect:/revAuctionMyOrderList";
		} else if (list.equals("revre")) {
			view = "redirect:/revAuctionMyAcceptList";
		} else if (list.equals("auc")) {
			view = "redirect:/auctionMyOrderList";
		} else if (list.equals("aucre")) {
			view = "redirect:/auctionMyAcceptList";
		} else if (list.equals("spon")) {
			view = "redirect:/fundingAcceptList";
		} else if (list.equals("sponre")) {
			view = "redirect:/fundingOrderList";
		} else {
			view = "redirect:/basketFrm?kind=A";
		}
		// System.out.println("view"+view);
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView privacyedit() {
		mav = new ModelAndView();
		String view = null;
		String id = session.getAttribute("id").toString();
		Member mb = new Member();

		mb = pDao.privacyeditSelect(id);
		if (mb != null) {
			mav.addObject("mb", mb);
			view = "memberEdit";
		} else {
			view = "myPage";
		}

		mav.setViewName(view);
		return mav;
	}

	public ModelAndView memberout() {
		mav = new ModelAndView();
		String id = session.getAttribute("id").toString();
		mav.addObject("id", id);
		mav.setViewName("memberDelete");
		return mav;
	}

	public ModelAndView nortowri() {
		mav = new ModelAndView();
		String id = session.getAttribute("id").toString();
		mav.addObject("id", id);
		mav.setViewName("memberTransform");
		return mav;
	}

	public ModelAndView memberrevise(MultipartHttpServletRequest multi, String kind) {
		mav = new ModelAndView();
		String view = null;
		kind = "M";
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		String id = session.getAttribute("id").toString();
		String pw = (multi.getParameter("mb_pw"));
		String address = multi.getParameter("addr1") + multi.getParameter("addr2") + multi.getParameter("addr3");
		;
		String email = (multi.getParameter("mb_email"));
		String profile = multi.getParameter("mb_profile");
		System.out.println("id1:" + id);
		System.out.println("id3:" + pw);
		System.out.println("id4:" + address);
		System.out.println("id5:" + email);
		Member mb = new Member();
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setMb_pw(pwdEncoder.encode(pw));
		mb.setMb_id(id);
		mb.setMb_address(address);
		mb.setMb_email(email);
		mb.setMb_profile(profile);
		boolean f = false;
		if (check == 1) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.fileUp(multi, mb, kind);
			if (f) {
				System.out.println("일단 여기까지는 된건데....");
				view = "redirect:/mypage";
			} else {
				System.out.println("인설트 실패인데....");
				view = "memberEdit";
			}
		} else {
			System.out.println("파일이 없다는건데....");
			view = "memberEdit";
		}
		System.out.println(view);
		mav.setViewName(view);

		return mav;
	}

	@Transactional
	public ModelAndView withdrawalconfirm(Member mb) {
		mav = new ModelAndView();

		String view = null;
		String id = session.getAttribute("id").toString();
		mb.setMb_id(id);
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		System.out.println("idididi" + mb.getMb_id());
		String pwdEncode = pDao.withdrawalconfirmselect(mb.getMb_id());

		System.out.println("dddddddd" + mb.getMb_pw());

		if (pwdEncode != null) {
			System.out.println("일단 아이디는 가져 왔고 된거고...");
			System.out.println("111111111" + pwdEncoder.matches(mb.getMb_pw(), pwdEncode));
			if (pwdEncoder.matches(mb.getMb_pw(), pwdEncode)) {
				System.out.println("일단 복호화는 된거고...");
				Member mmd = pDao.withdrawalconfirmselect2(mb.getMb_id());
				if (pDao.withdrawalconfirmInsert(mmd)) {
					System.out.println("인설트까지는 된건데.....");
					pDao.withdrawalconfirmDelete(mb);
					session.invalidate();
					view = "home";
				} else {
					view = "memberDelete";
				}
			} else {
				System.out.println("이쪽으로 오는건가...??");

			}
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView nortowriapply(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String view = null;

		String id = session.getAttribute("id").toString();
		int cate = Integer.parseInt(multi.getParameter("mj_cg_code"));
		String conten = multi.getParameter("mj_contents");
		int check = Integer.parseInt(multi.getParameter("fileCheck"));

		Major mj = new Major();
		mj.setMj_mbid(id);
		mj.setMj_cgcode(cate);
		mj.setMj_contents(conten);

		Notify nf = new Notify();
		nf.setNf_mbid_r(id);
		nf.setNf_notify(id+" 님이 작가 전환신청을 하였습니다.");
		pDao.setNotifyWriApply(nf);
		
		
		
		
		
		boolean f = false;
		if (check == 1) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.swfileUp(multi, mj);
			if (f) {
				boolean b = pDao.nortowriapplyupdate(mj.getMj_mbid());
				if (b) {
					view = "myPage";
				} else {
					view = "memberTransform";
				}

			}
		} else {
			System.out.println("ㅆ.......여기로 오네....");
			view = "memberTransform";
		}

		mav.setViewName(view);
		return mav;
	}

	public ModelAndView basketFrmrev(Integer pageNum, String kind) {

		mav = new ModelAndView();
		String view = null;
		List<Basket> rList = null;
		String id = session.getAttribute("id").toString();
		int num = (pageNum == null) ? 1 : pageNum;
		System.out.println("id=" + id);
		System.out.println("num=" + num);
		rList = pDao.basketFrmRSelect(num, id);
		mav.addObject("rList", rList);
		mav.addObject("paging", getPaging(num, kind));// 현재 페이지 번호 ${paging}
		Gson gsonObj = new Gson();
		String jsonStr = gsonObj.toJson(rList);
		mav.addObject("jsonStr", jsonStr);
		view = "basketFrmrev";
		mav.setViewName(view);
		return mav;

	}

	/*
	 * private String gettPaging(int pageNum, String kind) { String
	 * id=session.getAttribute("id").toString();
	 * System.out.println("dddddddddd="+id); int maxNum = pDao.getrevCount(id); //
	 * 전체 글의 개수 int listCount = 5; // 페이지당 글의 수 int pageCount = 2;// 그룹당 페이지 수
	 * String boardName = "ajax/lbrev"; // 개시판이 여러개 일때
	 * System.out.println("dddddddddd:"+boardName);
	 * com.designus.www.userClass.Paging paging = new
	 * com.designus.www.userClass.Paging(maxNum, pageNum, listCount, pageCount,
	 * boardName,kind); return paging.makeHtmlPaging(); }
	 */

	public ModelAndView basketFrmspon(Integer pageNum, String kind) {

		mav = new ModelAndView();
		String view = null;
		List<Basket> sList = null;
		String id = session.getAttribute("id").toString();
		int num = (pageNum == null) ? 1 : pageNum;
		System.out.println("id=" + id);
		System.out.println("num=" + num);
		sList = pDao.basketFrmSSelect(num, id);
		mav.addObject("sList", sList);
		mav.addObject("paging", getPaging(num, kind));// 현재 페이지 번호 ${paging}
		Gson gsonObj = new Gson();
		String jsonStr = gsonObj.toJson(sList);
		mav.addObject("jsonStr", jsonStr);
		view = "basketFrmspon";
		mav.setViewName(view);
		return mav;
	}

	/*
	 * private Object getsponPaging(int pageNum, String kind) { String
	 * id=session.getAttribute("id").toString();
	 * System.out.println("dddddddddd="+id); int maxNum = pDao.getsponCount(id); //
	 * 전체 글의 개수 int listCount = 5; // 페이지당 글의 수 int pageCount = 2;// 그룹당 페이지 수
	 * String boardName = "basketFrm"; // 개시판이 여러개 일때
	 * com.designus.www.userClass.Paging paging = new
	 * com.designus.www.userClass.Paging(maxNum, pageNum, listCount, pageCount,
	 * boardName,kind); return paging.makeHtmlPaging(); }
	 */

	public ModelAndView basketFrm(Integer pageNum, String kind) {
		mav = new ModelAndView();
		String view = null;
		List<Basket> bList = null;
		String id = session.getAttribute("id").toString();
		int num = (pageNum == null) ? 1 : pageNum;
		System.out.println("id=" + id);
		System.out.println("num=" + num);
		bList = pDao.basketFrmSelect(num, id);
		mav.addObject("bList", bList);
		mav.addObject("paging", getPaging(num, kind));// 현재 페이지 번호 ${paging}
		Gson gsonObj = new Gson();
		String jsonStr = gsonObj.toJson(bList);
		mav.addObject("jsonStr", jsonStr);
		view = "basketFrm";
		mav.setViewName(view);
		return mav;
	}

	private Object getPaging(int pageNum, String kind) {
		String a = null;
		String id = session.getAttribute("id").toString();
		System.out.println("dddddddd=" + id);
		int maxNum = pDao.getBoardCount(id); // 전체 글의 개수
		int listCount = 5; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		if (kind.equals("A")) {
			a = "basketFrm";
		} else if (kind.equals("R")) {
			a = "basketFrmrev";
		} else {
			a = "basketFrmspon";
		}
		String boardName = a;// 개시판이 여러개 일때

		com.designus.www.userClass.Paging paging = new com.designus.www.userClass.Paging(maxNum, pageNum, listCount,
				pageCount, boardName, kind);
		return paging.makeHtmlPaging();
	}

	public ModelAndView auctionMyOrderList(Integer pageNum, String kind) {
		mav = new ModelAndView();
		String id = session.getAttribute("id").toString();
		List<AuctionProgress> apList = null;

		String view = null;
		System.out.println("kind" + kind);
		int num = (pageNum == null) ? 1 : pageNum;

		System.out.println("여기까지 오나????....");
		// AuctionProgress ap=new AuctionProgress();
		apList = pDao.auctionMyOrderListSelect(id, num);
		Gson gson = new Gson();
		String apListjson = gson.toJson(apList);
		System.out.println("size" + apList.size());
		mav.addObject("apList", apListjson);
		mav.addObject("MPpaging", getMPaging(num, kind));
		System.out.println("사망띠....");
		System.out.println("apList" + apList.size());

		System.out.println("여기까지가 끝인가보오....");

		view = "auctionMyOrderList";

		mav.setViewName(view);
		System.out.println("여기 진짜 와야 돼... 안그럼 나 프로젝트 접어.....");
		return mav;
	}

	private Object getMPaging(int pageNum, String kind) {
		String id = session.getAttribute("id").toString();
		System.out.println("dddddddd=" + id);
		// 전체 글의 개수
		int listCount = 4; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		int maxNum = pDao.getSetpCount(id);
		System.out.println("전체 글의 개수" + maxNum);
		String boardName = "auctionMyOrderList";

		com.designus.www.userClass.Paging paging = new com.designus.www.userClass.Paging(maxNum, pageNum, listCount,
				pageCount, boardName, kind);
		return paging.makeHtmlPaging();
	}

	@Transactional
	public ModelAndView aucapply(AuctionProgress ap) {
		mav = new ModelAndView();
		System.out.println("(서비스클래스) 배송정보 입력 하기 시작!!!");
		int ponitN = mDao.memberNpoint(ap);
		System.out.println("ponitN" + ponitN);
		boolean a = pDao.aucapplyMbWupdate(ap);
		System.out.println("여기 까지는 오는 건가요//????");
		ap.setPonitN(ponitN);
		if (a) {
			boolean b = pDao.aucapplyMbNupdate(ap);
			System.out.println("여기 까지는 오는 건가요11//????");
			if (b) {
				mav.addObject("msg", 1);
			} else {
				mav.addObject("msg", 2);
			}

		}
		System.out.println("(컨트롤러) 배송정보 입력 하기 마무리!!!");
		mav.setViewName("redirect:/auctionMyOrderList");

		return mav;
	}

	@Transactional
	public ModelAndView reviewBoardyhWrite(MultipartHttpServletRequest multi) {
		System.out.println("뭐지?? 또 시작이네...");

		String view = null;
		String bd_kind = "이용후기";
		int ptnum = Integer.parseInt(multi.getParameter("aup_ptnum"));
		String id = session.getAttribute("id").toString();
		String title = multi.getParameter("bd_title");
		String contents = multi.getParameter("bd_contents");
		String aumbidw = multi.getParameter("au_mbid_w");
		int priceN = Integer.parseInt(multi.getParameter("aup_price"));
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		System.out.println("title=" + title);
		System.out.println("contents=" + contents);
		System.out.println("check=" + check);
		com.designus.www.bean.Board b = new com.designus.www.bean.Board();

		b.setBd_mbid(id);
		b.setBd_title(title);
		b.setBd_contents(contents);
		b.setBd_kind(bd_kind);

		boolean a = bDao.reviewBoardyhWrite(b);
		System.out.println("[컨트롤러].reviewBoardWrite:a값 확인 : " + a);
		System.out.println("boardnum=" + b.getBd_num());
		AuctionProgress ap = new AuctionProgress();
		ap.setAup_ptnum(ptnum);
		ap.setAu_mbid_w(aumbidw);
		ap.setAup_price(priceN);
		int ponitW = mDao.memberWpoint(ap);
		System.out.println("[컨트롤러].reviewBoardWrite:ponitW값 확인 : " + ponitW);
		ap.setPonitW(ponitW);
		boolean f = false;
		if (check == 1) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.fileboardUp(multi, b.getBd_num(), b.getBd_kind());
			System.out.println("[컨트롤러].reviewBoardWrite:f값 확인 : " + f);
			if (f) {
				boolean c = pDao.memberpointup(ap);
				if (c) {
					boolean d = pDao.reviewBoardyhWriteupDate(ap);
					if (d) {
						view = "redirect:/auctionMyOrderList";
					} else {
						view = "myPage";
					}
				}

			}
		}

		System.out.println("[서비스].reviewBoardWrite:마무리");
		mav.setViewName(view);
		return mav;

	}

	public boolean goods(String idw) {
		System.out.println("내마음 오지고 지리고 레릿고 : ");
		boolean a = bDao.goods(idw);
		System.out.println("aaaaa : " + a);
		return a;
	}

	@Transactional
	public ModelAndView auccancel(AuctionProgress ap, Notify ni) {
		mav = new ModelAndView();
		System.out.println("(서비스클래스)출품구매 취소 시작 ");
		System.out.println("(서비스클래스)출품구매 취소 파라미터 넘겨온 값 확인ranum : " + ap.getAup_ptnum());
		System.out.println("(서비스클래스)출품구매 취소 파라미터 넘겨온 값 확인 autnum: " + ap.getAup_ranum());
		System.out.println("(서비스클래스)출품구매 취소 파라미터 넘겨온 값 확인 mbidn: " + ap.getAup_mbid_n());
		System.out.println("(서비스클래스)출품구매 취소 파라미터 넘겨온 값 확인 autdate: " + ap.getAut_date().substring(0, 19));
		boolean a = pDao.auccancelDelete(ap);
		System.out.println("(서비스클래스)출품구매 취소 a 값 확인 :" + a);

		String date = ap.getAut_date().substring(0, 19);
		ap.setAut_date(date);
		if (a) {
			boolean b = pDao.autcancelDelete(ap);
			System.out.println("bbbb : " + b);
			if (b) {

				String nf_mbid_r = ap.getAu_mbid_w();
				String nf_mbid_s = ap.getAup_mbid_n();
				ni.setNf_mbid_r(nf_mbid_r);
				ni.setNf_mbid_s(nf_mbid_s);
				pDao.revaucinfocancelInsert(ni);
				mav.addObject("check", 1);
				System.out.println("끝날때까지 끝난게 아니다!!!");
			}

		} else {
			mav.addObject("check", 2);
		}
		mav.setViewName("redirect:/auctionMyOrderList");
		return mav;
	}

	public ModelAndView auctionMyAcceptList(Integer pageNum, String kind) {
		mav = new ModelAndView();
		String id = session.getAttribute("id").toString();
		List<AuctionProgress> apwList = null;
		String view = null;
		int num = (pageNum == null) ? 1 : pageNum;
		apwList = pDao.auctionMyAcceptListSelect(id, num);
		Gson gson = new Gson();
		String str = gson.toJson(apwList);
		System.out.println("size" + apwList.size());

		mav.addObject("apwList", str);
		mav.addObject("pagMPWing", getMPWaging(num, kind));
		System.out.println("사망띠....");

		System.out.println("여기까지가 끝인가보오....");

		view = "auctionMyAcceptList";

		mav.setViewName(view);
		System.out.println("여기 진짜 와야 돼... 안그럼 나 프로젝트 접어.....");
		return mav;
	}

	private Object getMPWaging(int pageNum, String kind) {
		String id = session.getAttribute("id").toString();
		System.out.println("dddddddd=" + id);
		// 전체 글의 개수
		int listCount = 4; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		int maxNum = pDao.getSetpWCount(id);
		System.out.println("전체 글의 개수" + maxNum);
		String boardName = "auctionMyAcceptList";

		com.designus.www.userClass.Paging paging = new com.designus.www.userClass.Paging(maxNum, pageNum, listCount,
				pageCount, boardName, kind);
		return paging.makeHtmlPaging();
	}

	@Transactional
	public ModelAndView delinumupload(AuctionProgress ap) {
		mav = new ModelAndView();
		System.out.println("그럼 여기는??");
		boolean a = pDao.delinumuploadupdate(ap);
		System.out.println("nnnnuuuummmm::::" + ap.getAup_ptnum());
		System.out.println("getAup_track::::" + ap.getAup_track());

		if (a) {
			System.out.println("ㅎㅎ");
			mav.addObject("msg", 1);

		} else {
			System.out.println("실패?? 왜?? 뒤질래??");
			mav.addObject("msg", 2);
		}

		mav.setViewName("redirect:/auctionMyAcceptList");
		System.out.println("된거야??");
		return mav;
	}

	public String sends(AuctionProgress ap) {
		String id = session.getAttribute("id").toString();
		String json = null;
		ap = pDao.sendsSelect(ap);
		if (ap != null) {
			json = new Gson().toJson(ap);
			System.out.println("json=" + json);
		} else {
			json = null;

		}
		return json;
	}

	public String enter(AuctionProgress ap) {

		String json = null;
		ap = pDao.enterSelect(ap);
		System.out.println(ap.getAu_mbid_w());
		if (ap != null) {
			json = new Gson().toJson(ap);
			System.out.println("json=" + json);
		}
		return json;
	}

	public String scheck(AuctionProgress ap) {
		System.out.println("(메니저먼트) 스타트");
		String json = null;
		ap = pDao.scheckSelect(ap);
		System.out.println(ap.getAu_mbid_w());
		if (ap != null) {
			json = new Gson().toJson(ap);
			System.out.println("json=" + json);
		}
		System.out.println("(메니저먼트) 마무의리");
		return json;
	}

	public String reviewboard(AuctionProgress ap) {
		System.out.println("(메니저먼트) reviewboard 스타트");
		String json = null;
		ap = pDao.reviewboardSelect(ap);
		System.out.println("(메니저먼트) reviewboard 중간 테스트 :" + ap.getAu_mbid_w());
		if (ap != null) {
			json = new Gson().toJson(ap);
			System.out.println("json=" + json);
		}
		System.out.println("(메니저먼트) reviewboard 마무의리");
		return json;
	}

	public ModelAndView revAuctionMyOrderList(Integer pageNum, String kind) {
		mav = new ModelAndView();
		System.out.println("(서비스클래스)제작의뢰  시작");
		String id = session.getAttribute("id").toString();
		List<revAuctionProgress> revList = null;
		String view = null;
		int num = (pageNum == null) ? 1 : pageNum;
		revList = pDao.revAuctionMyOrderListSelect(id, num);
		System.out.println("(서비스클래스)제작의뢰  중간지점 1 revList.size(): " + revList.size());
		System.out.println("(서비스클래스)제작의뢰  중간지점 1-2 revList.size(): " + revList.get(0).getRap_mbid_w());
		System.out.println("(서비스클래스)제작의뢰  중간지점 1-3 revList.size(): " + revList.get(0).getRap_ptnum());
		System.out.println("(서비스클래스)제작의뢰  중간지점 1-1 revList.size(): " + revList.get(0).getRa_title());
		Gson gson = new Gson();
		String str = gson.toJson(revList);
		mav.addObject("revList", str);
		mav.addObject("ROpaging", getROaging(num, kind));
		System.out.println("(서비스클래스)제작의뢰  중간지점 3 페이지징 완료 ");
		view = "revAuctionMyOrderList";
		mav.setViewName(view);
		System.out.println("(서비스클래스)제작의뢰  마무리");
		return mav;
	}

	private Object getROaging(int pageNum, String kind) {
		String id = session.getAttribute("id").toString();
		System.out.println("dddddddd=" + id);
		// 전체 글의 개수
		int listCount = 4; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		int maxNum = pDao.getreSetpCount(id);
		System.out.println("(서비스클래스)제작의뢰  중간지점 2 전체 글의 개수: " + maxNum);
		String boardName = "revAuctionMyOrderList";

		com.designus.www.userClass.Paging paging = new com.designus.www.userClass.Paging(maxNum, pageNum, listCount,
				pageCount, boardName, kind);
		return paging.makeHtmlPaging();
	}

	public String request(revAuctionProgress rap) {
		System.out.println("(서비스클래스)제작의뢰내역 스타트!!!");
		String json = null;
		rap = pDao.requestSelect(rap);
		System.out.println("(서비스클래스)제작의뢰내역 1차 중간 테스트 pt_num의 값 :" + rap.getRap_ptnum());
		if (rap != null) {
			json = new Gson().toJson(rap);
			System.out.println("(서비스클래스)제작의뢰내역 2차 중간 테스트 json의 값 :json=" + json);
		}
		System.out.println("(서비스클래스)제작의뢰내역 마무리!!!");
		return json;
	}

	@Transactional
	public ModelAndView requestby(revAuctionProgress rap) {
		mav = new ModelAndView();
		System.out.println("(서비스클래스)제작의뢰 스텝1 요청 시작");
		int point = mDao.ravmemberNpoint(rap);
		System.out.println("(서비스클래스)제작의뢰 스텝1 요청 1차 중간 확인 !ponitN :" + point);
		boolean a = pDao.requestbyupdate(rap);
		System.out.println("여기 까지는 오는 건가요//????");
		rap.setPointN(point);
		if (a) {
			boolean b = pDao.requestbyREVupdate(rap);
			System.out.println("여기 까지는 오는 건가요11//????");
			if (b) {
				mav.addObject("msg", 1);
			} else {
				mav.addObject("msg", 2);
			}

		}

		mav.setViewName("redirect:/revAuctionMyOrderList");

		return mav;
	}

	public String revauccancel(revAuctionProgress rap) {
		mav = new ModelAndView();
		System.out.println("(서비스클래스)제작의로 취소폼 시작 ");

		String json = null;
		rap = pDao.revauccancelSelect(rap);
		System.out.println("(서비스클래스)제작의로 취소폼 시작 중간 테스트1 ptnum=" + rap.getRap_ptnum());
		if (rap != null) {
			json = new Gson().toJson(rap);
			System.out.println("(서비스클래스)제작의로 취소폼 시작 중간 테스트2 json=" + json);
		}
		System.out.println("(서비스클래스)제작의로 취소폼 마무리 ");

		return json;
	}

	@Transactional
	public ModelAndView revaucinfocancel(revAuctionProgress rap, Notify ni) {
		System.out.println("(서비스클래스)제작의뢰 스텝1 취소 시작");
		String view = null;
		String nf_mbid_r = rap.getRap_mbid_w();
		String nf_mbid_s = rap.getRap_mbid_n();
		ni.setNf_mbid_r(nf_mbid_r);
		ni.setNf_mbid_s(nf_mbid_s);
		mav = new ModelAndView();
		boolean can = pDao.revaucinfocancelDelete(rap);
		if (can) {
			if (rap.getRa_mbid() == rap.getRap_mbid_n()) {
				boolean up = pDao.revaucinfocancelupDate(rap);
				if (up) {

					pDao.revaucinfocancelInsert(ni);
					view = "redirect:/revAuctionMyOrderList";
				}
			} else {
				pDao.revaucinfocancelInsert(ni);
				view = "redirect:/revAuctionMyOrderList";
			}
		}
		System.out.println("(서비스클래스)제작의뢰 스텝1 취소 마무리");
		mav.setViewName(view);
		return mav;
	}

	@Transactional
	public ModelAndView revAuctionMyAcceptList(Integer pageNum, String kind) {
		mav = new ModelAndView();
		System.out.println("(서비스클래스)제작의뢰 접수내역 시작");
		String id = session.getAttribute("id").toString();
		List<revAuctionProgress> revAList = null;
		String view = null;
		int num = (pageNum == null) ? 1 : pageNum;
		revAList = pDao.revAuctionMyAcceptList(id, num);
		if (revAList.size() != 0) {

			Gson gson = new Gson();
			String str = gson.toJson(revAList);
			mav.addObject("revAList", str);
			mav.addObject("RApaging", getRAaging(num, kind));
			System.out.println("(서비스클래스)제작의뢰 접수내역 중간지점 3 페이지징 완료 ");
			view = "revAuctionMyAcceptList";

		} else if (revAList.size() == 0) {
			System.out.println("(서비스클래스)제작의뢰 접수내역 중간지점 4 위치확인 ");
			view = "revAuctionMyAcceptList";
		}
		mav.setViewName(view);
		System.out.println("(서비스클래스)제작의뢰 접수내역 마무리");
		return mav;
	}

	private Object getRAaging(int pageNum, String kind) {
		String id = session.getAttribute("id").toString();
		System.out.println("dddddddd=" + id);
		// 전체 글의 개수
		int listCount = 3; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		int maxNum = pDao.getreASetpCount(id);
		System.out.println("(서비스클래스)제작의뢰  중간지점 2 전체 글의 개수: " + maxNum);
		String boardName = "revAuctionMyAcceptList";

		com.designus.www.userClass.Paging paging = new com.designus.www.userClass.Paging(maxNum, pageNum, listCount,
				pageCount, boardName, kind);
		return paging.makeHtmlPaging();
	}

	public String delinumSelect(revAuctionProgress rap) {
		String json = null;
		rap = pDao.delinumSelect(rap);
		if (rap != null) {
			json = new Gson().toJson(rap);
			System.out.println("json=" + json);
		} else {
			json = null;

		}
		return json;
	}

	public ModelAndView revdelinumupload(revAuctionProgress rap) {
		mav = new ModelAndView();
		System.out.println("(서비스클래스)제작의뢰 스텝2 배송보내기 시작");
		boolean a = pDao.revdelinumupload(rap);
		System.out.println("(서비스클래스)제작의뢰 스텝2 배송보내기 마무리");
		mav.setViewName("redirect:/revAuctionMyAcceptList");

		return mav;
	}

	public String boardwrite(revAuctionProgress rap) {
		System.out.println("(메니저먼트) 제작의뢰 스텝3 구매 후기및 수령확인 스타트");
		String json = null;
		rap = pDao.boardwriteSelect(rap);
		System.out.println("(메니저먼트) 구매 후기및 수령확인 중간 테스트1 pnum 확인 :" + rap.getRap_ptnum());
		if (rap != null) {
			json = new Gson().toJson(rap);
			System.out.println("json=" + json);
		}
		System.out.println("(메니저먼트) 구매 후기및 수령확인 마무의리");
		return json;
	}

	@Transactional
	public ModelAndView boardapply(MultipartHttpServletRequest multi) {
		System.out.println("(서비스클래스)제작의뢰 스텝2 구매후기 및 수령확인 스타트");

		String view = null;
		String bd_kind = "이용후기";
		int ptnum = Integer.parseInt(multi.getParameter("rap_ptnum"));
		String id = session.getAttribute("id").toString();
		String title = multi.getParameter("bd_title");
		String contents = multi.getParameter("bd_contents");
		String aumbidw = multi.getParameter("rap_mbid_w");
		int priceN = Integer.parseInt(multi.getParameter("rap_price"));
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		com.designus.www.bean.Board b = new com.designus.www.bean.Board();

		b.setBd_mbid(id);
		b.setBd_title(title);
		b.setBd_contents(contents);
		b.setBd_kind(bd_kind);

		boolean a = bDao.reviewBoardyhWrite(b);
		revAuctionProgress rap = new revAuctionProgress();
		rap.setRap_ptnum(ptnum);
		rap.setRap_mbid_w(aumbidw);
		rap.setRap_price(priceN);
		int ponitW = mDao.memberWrevpoint(rap);
		rap.setPointW(ponitW);
		boolean f = false;
		if (check == 1) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.fileboardUp(multi, b.getBd_num(), b.getBd_kind());
			System.out.println("[컨트롤러].reviewBoardWrite:f값 확인 : " + f);
			if (f) {
				boolean c = pDao.revmemberpointup(rap);
				if (c) {
					System.out.println("(서비스클래스)제작의뢰 스텝2 구매후기 및 수령확인 중간 확인 8 c :확인 " + c);
					boolean d = pDao.revBoardyhWriteupDate(rap);
					if (d) {
						System.out.println("(서비스클래스)제작의뢰 스텝2 구매후기 및 수령확인 중간 확인 7 위치값 확인 ");
						view = "redirect:/revAuctionMyOrderList";
					} else {
						view = "myPage";
					}
				}

			}
		}

		System.out.println("(서비스클래스)제작의뢰 스텝2 구매후기 및 수령확인 마무리");
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView mypagemove() {
		mav = new ModelAndView();
		String view = null;
		List<Notify> NoList = null;
		List<AuctionTender> apsList = null;
		List<Integer> maxpList = new ArrayList<Integer>();
		//HashMap<Object, Object> apsMap = new HashMap<Object, Object>();
		String id = session.getAttribute("id").toString();
		// String grade=session.getAttribute("grade").toString();
		Member mb = new Member();
		mb = pDao.mypagemoveSelect(id);
		NoList = pDao.notismypageSelect(id);
		// apsList=pDao.AuctionProSelect(id);
		apsList = pDao.auctionInfoSelect(id);

		// 금,은,동
		int g = pDao.gold(id);
		int s = pDao.silver(id);
		int c = pDao.copper(id);
		mav.addObject("g", g);
		mav.addObject("s", s);
		mav.addObject("c", c);

		for (int i = 0; i < apsList.size(); i++) {
			maxpList.addAll(pDao.auctionMaxSelect(apsList.get(i).getAut_aunum()));
		}


		// apsMap.put("maxpList",maxpList);
		Gson gson = new Gson();
		String str = gson.toJson(NoList);

		String apssList = gson.toJson(apsList);
		String maxList = gson.toJson(maxpList);

		if (mb != null && NoList != null && apsList != null ) {
			mav.addObject("mb", mb);
			mav.addObject("NoList", str);
			mav.addObject("toMap", apssList);
			mav.addObject("maxList", maxList);
			view = "myPage";
		} else if (id == null) {
			mav.addObject("idnull", "i");
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView fullDelete() {
		mav = new ModelAndView();
		String view = null;
		String id = session.getAttribute("id").toString();
		boolean d = pDao.fullDelete(id);
		if (d) {
			// mav.addObject("check", 1);
			view = "redirect:/mypage";
		} else {
			// mav.addObject("check", 2);
			view = "myPage";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView nodelete(Notify nf) {
		mav = new ModelAndView();
		String view = null;

		boolean d = pDao.nodelete(nf);
		if (d) {
			mav.addObject("check", 1);
			view = "redirect:/mypage";
		} else {
			mav.addObject("check", 2);
			view = "myPage";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView AuctionGiveUp(AuctionTender at, String kind) {
		mav = new ModelAndView();
		String view = null;
		String id = session.getAttribute("id").toString();
		at.setAut_mbid(id);
		if (kind.equals("Aut")) {
			boolean f = pDao.AuctionGiveUpDelete(at);
			if (f) {
				view = "redirect:/mypage";
			}
		}

		mav.setViewName(view);
		return mav;
	}

	public String auccancelDelete(AuctionProgress ap) {
		mav = new ModelAndView();
		System.out.println("(서비스클래스)제작의로 취소폼 시작 ");

		String json = null;
		ap = pDao.auccancelDeleteDel(ap);
		System.out.println("(서비스클래스)제작의로 취소폼 시작 중간 테스트1 ptnum=" + ap.getAup_ptnum());
		if (ap != null) {
			json = new Gson().toJson(ap);
			System.out.println("(서비스클래스)제작의로 취소폼 시작 중간 테스트2 json=" + json);
		}
		System.out.println("(서비스클래스)제작의로 취소폼 마무리 ");

		return json;
	}

	public ModelAndView questionlist(Integer pageNum, String kind) {
		mav = new ModelAndView();
		String id = session.getAttribute("id").toString();
		String view = null;
		List<AloneQuestion> aqList = null;
		int num = (pageNum == null) ? 1 : pageNum;
		aqList = pDao.questionlist(id, num);
		System.out.println("ddddd=" + aqList.get(0).getAq_date());
		if (aqList != null) {
			for (int i = 0; i < aqList.size(); i++) {
				if (aqList.get(i).getAbc() != null) {
					aqList.get(i).setAbc("처리 완료");
				} else {
					aqList.get(i).setAbc("처리 대기중");
				}
			}
		}
		System.out.println("ddd+9" + aqList.get(0).getAq_num());
		// qrList = pDao.questionalistSelect(aqList.get(i).getAq_num());

		Gson gson = new Gson();
		String aqgList = gson.toJson(aqList);
		System.out.println("11111:"+aqList.get(0).getAbc());
		mav.addObject("aqgList", aqgList);
		mav.addObject("Aqpaging", getAqpaging(num, kind));
		view = "questionaList";

		mav.setViewName(view);
		return mav;
	}

	private Object getAqpaging(int pageNum, String kind) {
		String id = session.getAttribute("id").toString();
		System.out.println("dddddddd=" + id);
		// 전체 글의 개수
		int listCount = 8; // 페이지당 글의 수
		int pageCount = 3;// 그룹당 페이지 수
		int maxNum = pDao.getAqpagingCount(id);
		System.out.println("(서비스클래스)제작의뢰  중간지점 2 전체 글의 개수: " + maxNum);
		String boardName = "revAuctionMyAcceptList";

		com.designus.www.userClass.Paging paging = new com.designus.www.userClass.Paging(maxNum, pageNum, listCount,
				pageCount, boardName, kind);
		return paging.makeHtmlPaging();
	}

	public ModelAndView questionread(AloneQuestion aq) {
		mav = new ModelAndView();
		aq=pDao.questionreadSelct(aq);
		Gson gson = new Gson();
		String quest = gson.toJson(aq);
		mav.addObject("quest", quest);
		mav.setViewName("questionCheck");
		return mav;
	}

	public void download(Map<String, Object> params) throws Exception {
	       String root=(String) params.get("root");
	       String sysFileName=(String)params.get("aqi_img");
	       String oriFileName=(String)params.get("aqi_img");
	       String fullPath=root+"/resources/upload/"+sysFileName;
	       
	       HttpServletResponse resp=(HttpServletResponse)params.get("responce");
	       //실제 다운로드
	       upload.download(fullPath, oriFileName, resp);
		}

	public ModelAndView fundingAcceptList(Integer pageNum, String kind) {
		mav = new ModelAndView();
		
		
		String id = session.getAttribute("id").toString();
		String view = null;
		List<SponsorProgress> spList = null;
		List<Integer> stList= new ArrayList<Integer>();
		int aa=0;
		HashMap<Object, Object> soMap = new HashMap<Object, Object>();
		
		int num = (pageNum == null) ? 1 : pageNum;
		spList=pDao.fundingAcceptListSelect(id,num);
		 for(int i=0;i<spList.size();i++) {
			 stList.addAll( pDao.SponsorTenderSelect(spList.get(i)));
			System.out.println("구분하래="+stList.size());
		 }
		 System.out.println("그럼 마지막은??="+stList.size());
		Gson gson = new Gson();
		String spgList = gson.toJson(spList);
		 //Gson gson = new Gson();
			//String stgList = gson.toJson(stList);
			//mav.addObject("stpList", stgList);
		String Mapst = gson.toJson(stList);
		mav.addObject("stList", stList);
		mav.addObject("spgList", spgList);
		
		mav.addObject("Spaging", getSpaging(num, kind));
		view = "fundingAcceptList";

		mav.setViewName(view);
		return mav;
	}

	private Object getSpaging(int pageNum, String kind) {
		String id = session.getAttribute("id").toString();
		System.out.println("dddddddd=" + id);
		// 전체 글의 개수
		int listCount = 6; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		int maxNum = pDao.getSuwonCountt(id);
		System.out.println("(서비스클래스)제작의뢰  중간지점 2 전체 글의 개수: " + maxNum);
		String boardName = "fundingAcceptList";

		com.designus.www.userClass.Paging paging = new com.designus.www.userClass.Paging(maxNum, pageNum, listCount,
				pageCount, boardName, kind);
		return paging.makeHtmlPaging();
	}

	public String support(SponsorProgress sp) {
		mav=new ModelAndView();
		String json=null;
		boolean a=pDao.supportupdate(sp);
		if(a) {
			json = new Gson().toJson(a);
		}else {
			json = new Gson().toJson(a);
		}
		return json;
	}

	public ModelAndView fundingOrderList(Integer pageNum, String kind) {
		mav=new ModelAndView();
		String id = session.getAttribute("id").toString();
		String view=null;
		List<SponsorProgress> spList = null;
		List<Integer> stList= new ArrayList<Integer>();
		int num = (pageNum == null) ? 1 : pageNum;
		spList=pDao.fundingOrderListSelect(id,num);
		for(int i=0;i<spList.size();i++) {
			 stList.addAll( pDao.fundingOrderLisSelect(spList.get(i)));
			System.out.println("구분하래="+stList.size());
		 }
		 System.out.println("그럼 마지막은??="+stList.size());
		 Gson gson = new Gson();
			String spgList = gson.toJson(spList);
			String Mapst = gson.toJson(stList);
			mav.addObject("Mapst", Mapst);
			mav.addObject("spgList", spgList);
			mav.addObject("Spqging", getSpqging(num, kind));
	    view="fundingOrderList";
	    mav.setViewName(view);
		return mav;
	}

	private Object getSpqging(int pageNum, String kind) {
		String id = session.getAttribute("id").toString();
		System.out.println("dddddddd=" + id);
		// 전체 글의 개수
		int listCount = 6; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		int maxNum = pDao.getSuonCountt(id);
		System.out.println("(서비스클래스)제작의뢰  중간지점 2 전체 글의 개수: " + maxNum);
		String boardName = "fundingAcceptList";

		com.designus.www.userClass.Paging paging = new com.designus.www.userClass.Paging(maxNum, pageNum, listCount,
				pageCount, boardName, kind);
		return paging.makeHtmlPaging();
	}

}
