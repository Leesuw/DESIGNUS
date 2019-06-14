package com.designus.www;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.designus.www.bean.AuctionProgress;
import com.designus.www.bean.Basket;
import com.designus.www.bean.Major;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.service.MypageMM;

@RestController
public class AjaxMypageController {
	@Autowired
	private MypageMM pm;

	@RequestMapping(value = "/goods", method = { RequestMethod.GET, RequestMethod.POST })

	public boolean lbrev(String idw) {
		System.out.println("여기로 와라 제발...");
		System.out.println("이게 작가 아이디인데....=" + idw);
		boolean a = pm.goods(idw);
		return a;

	}

	@RequestMapping(value = "/sends", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")

	public String sends(@RequestBody AuctionProgress ap) {
		System.out.println("여기로 와라 제발111...ㅠㅠ");
		System.out.println("이게 작가 아이디인데1111...ㅠㅠ.=" + ap);
		String json = pm.sends(ap);
		return json;

	}

	@RequestMapping(value = "/enter", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public String enter(@RequestBody AuctionProgress ap) {
		System.out.println("여기로 와라 제발111...");
		System.out.println(ap.getAup_ptnum());
		// System.out.println(map.get("pnum"));
		// System.out.println("이게 작가 아이디인데1111....=" + pnum);
		// int pnum1 = Integer.parseInt(pnum.substring(5,5));
		// System.out.println(pnum1);
		// int pnum = map.get("pnum");
		String json = pm.enter(ap);
		System.out.println("5번째 시도....");
		return json;

	}

	@RequestMapping(value = "/scheck", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public String scheck(@RequestBody AuctionProgress ap) {
		System.out.println("(컨트롤러)의뢰인 배송정보 시작!!!");
		System.out.println(ap.getAup_ptnum());
		String json = pm.scheck(ap);
		System.out.println("(컨트롤러)의뢰인 배송정보 마무으리!!!");
		return json;

	}
	@RequestMapping(value = "/reviewboard", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public String reviewboard(@RequestBody AuctionProgress ap) {
		System.out.println("(컨트롤러)수령확인 및 구매후기 작성 시작!!!");
		System.out.println(ap.getAup_ptnum());
		String json = pm.reviewboard(ap);
		System.out.println("(컨트롤러)수령확인 및 구매후기 작성 마무으리!!!");
		return json;

	}
	@RequestMapping(value = "/request", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public String request(@RequestBody revAuctionProgress rap) {
		System.out.println("(컨트롤러)제작의뢰내역 스타트!!!");
		System.out.println(rap.getRap_ptnum());
		String json = pm.request(rap);
		System.out.println("(컨트롤러)제작의뢰내역 스타트!!!");
		return json;
	}
	@RequestMapping(value = "/revauccancel", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public String revauccancel(@RequestBody revAuctionProgress rap) {
		System.out.println("(컨트롤러)제작의뢰내역 스텝 1 취소폼!!! 시작!!!");
		System.out.println(rap.getRap_ptnum());
		String json = pm.revauccancel(rap);
		System.out.println("(컨트롤러)제작의뢰내역  스텝 1 취소폼 마무리!!!");
		return json;
	}
	@RequestMapping(value = "/delinumSelect", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public String delinumSelect(@RequestBody revAuctionProgress rap) {
		System.out.println("(컨트롤러)제작의뢰내역 스텝 2 취소폼!!! 시작!!!");
		System.out.println("(컨트롤러)제작의뢰내역 스텝 2 취소폼!!! 중간테스트1 pnum확인 :" + rap.getRap_ptnum());
		String json = pm.delinumSelect(rap);
		System.out.println("(컨트롤러)제작의뢰내역 스텝 2 배송보내기!!! 마무리!!!");
		return json;

	}
	@RequestMapping(value = "/boardwrite", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public String boardwrite(@RequestBody revAuctionProgress rap) {
		System.out.println("(컨트롤러)제작의뢰내역 스텝 2 구매후기및 수령확인!!! 시작!!!");
		System.out.println("(컨트롤러)제작의뢰내역 스텝 2 취소폼!!! 중간테스트1 pnum확인 :" + rap.getRap_ptnum());
		String json = pm.boardwrite(rap);
		System.out.println("(컨트롤러)제작의뢰내역 스텝 2 구매후기및 수령확인 마무리!!!");
		return json;

	}
}
