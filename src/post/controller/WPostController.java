package post.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Work.Service.WorkSerchService;
import business.model.CdataReadService;
import business.model.CompanyData;
import post.model.CPostReadService;
import post.model.PostData;
import post.model.PostPageService;
import post.model.WPostReadService;

@Controller
public class WPostController {

	@Autowired
	CdataReadService cds;
	@Autowired
	WPostReadService wpr;
	@Autowired
	PostPageService pps;
	@Autowired
	CPostReadService cpr;

	@Autowired
	WorkSerchService ws;

	
	
	@RequestMapping("company/introduction/{com}")
	public ModelAndView getintrodunction(@PathVariable(name = "com") String com) {
		ModelAndView mav = new ModelAndView("/work/CompanyIntro.jsp");
		CompanyData cd = cds.getIntrodunction(com);
		mav.addObject("list", cd);
		return mav;
	}

	@RequestMapping("work/post/{num}")
	public ModelAndView goPostRead(@PathVariable(name = "num") int num) {
		ModelAndView mav = new ModelAndView("/post/companyview/viewPost.jsp");
		PostData pd = wpr.readPostData(num);
		CompanyData cd = cds.getIntrodunction(pd.getCOMPANY());
		
		cpr.hitup(num);
		mav.addObject("pd", pd);
		mav.addObject("com", cd);
		mav.addObject("sort", true);
		return mav;
	}


	@RequestMapping("/find")
	public ModelAndView topPostRead() {
		ModelAndView mav = new ModelAndView("findjob");
		List<PostData> list = wpr.readTopPost();
		// 지역
		String[] local = new String[] { "전체", "서울", "경기", "인천", "강원", "대전", "세종", "충남", "충북", "부산", "울산", "경남", "경북",
				"대구", "광주", "전남", "전북", "제주" };
		// 직무
		String[] job = new String[] { "전체", "외식-음료", "유통-판매", "문화-여가-생활", "교육-강사", "사무직", "디자인", "생산-건설-운송", "IT-컴퓨터",
				"서비스", "고객상담-리서치-영업", "미디어" };
		// 경력
		String[] career = new String[] { "전체", "신입", "1년이상", "2년이상", "3년이상", "4년이상", "5년이상", "6년이상", "7년이상", "8년이상",
				"9년이상", "10년이상" };
		// 고용형태
		String[] hiretype = new String[] { "전체", "정규직", "계약직", "인턴", "파견직", "프리랜서", "아르바이트", "연수생/교육생", "개인사업자" };
		// 자격요건
		String[] education = new String[] { "전체", "무관", "중학교졸업", "고등학교졸업", "대학교중퇴", "학사", "박사", "석사" };

		// 직급
		String[] rank = new String[] { "전체", "인턴", "사원", "대리", "과장", "부장", "차장", "팀장", "본부장", "전문경영인" };
		// 급여
		String[] salary = new String[] { "전체", "연봉", "월급", "주급", "일급", "시급" };

		mav.addObject("local", local);
		mav.addObject("job", job);
		mav.addObject("career", career);
		mav.addObject("hiretype", hiretype);
		mav.addObject("education", education);
		mav.addObject("rank", rank);
		mav.addObject("salary", salary);
		mav.addObject("list", list);
		List wlist = ws.WSservice();

		mav.addObject("wlist", wlist);
		return mav;
	}

	// Post를 입력받는곳
	@RequestMapping("/find/result")
	public ModelAndView WorkSelectSerch(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("findresult");
		List<PostData> list = wpr.readTopPost();
		// 지역
		String[] local = new String[] { "전체", "서울", "경기", "인천", "강원", "대전", "세종", "충남", "충북", "부산", "울산", "경남", "경북",
				"대구", "광주", "전남", "전북", "제주" };
		// 직무
		String[] job = new String[] { "전체", "외식-음료", "유통-판매", "문화-여가-생활", "교육-강사", "사무직", "디자인", "생산-건설-운송", "IT-컴퓨터",
				"서비스", "고객상담-리서치-영업", "미디어" };
		// 경력
		String[] career = new String[] { "전체", "신입", "1년이상", "2년이상", "3년이상", "4년이상", "5년이상", "6년이상", "7년이상", "8년이상",
				"9년이상", "10년이상" };
		// 고용형태
		String[] hiretype = new String[] { "전체", "정규직", "계약직", "인턴", "파견직", "프리랜서", "아르바이트", "연수생/교육생", "개인사업자" };
		// 자격요건
		String[] education = new String[] { "전체", "무관", "중학교졸업", "고등학교졸업", "대학교중퇴", "학사", "박사", "석사" };

		// 직급
		String[] rank = new String[] { "전체", "인턴", "사원", "대리", "과장", "부장", "차장", "팀장", "본부장", "전문경영인" };
		// 급여
		String[] salary = new String[] { "전체", "연봉", "월급", "주급", "일급", "시급" };

		mav.addObject("local", local);
		mav.addObject("job", job);
		mav.addObject("career", career);
		mav.addObject("hiretype", hiretype);
		mav.addObject("education", education);
		mav.addObject("rank", rank);
		mav.addObject("salary", salary);
		mav.addObject("list", list);
		String[] keys = { "local", "job", "career", "hiretype", "education", "rank", "salary" };
		HashMap<String, String[]> map = new HashMap<>();

		for (int i = 0; i < keys.length; i++) {
			String[] ar = req.getParameterValues(keys[i]);
			map.put(keys[i], ws.fillArray(ar));
		}

		System.out.println("컨트롤2" + map.toString());


		List<PostData> sslist = ws.SelectSerchService(map);

		mav.addObject("sslist", sslist);

		System.out.println("컨트롤 리스트" + sslist.size());
		System.out.println("컨트롤3" + map);

		return mav;

	}

	@RequestMapping("work/list")
	public ModelAndView postlist(@RequestParam(defaultValue = "1") int p) {
		ModelAndView mav = new ModelAndView("/post/workview/PostList.jsp");

		int page = 0;
		List list = pps.getRange(p);
		/* List list = cpr.AllPost(); */
		int size = cpr.AllPostCount();
		if (size < 5) {
			page = 1;
		} else if (size % 5 != 0) {
			page = (size / 5) + 1;
		} else if (size % 5 == 0) {
			page = size / 5;
		}

		mav.addObject("list", list);
		mav.addObject("page", page);
		return mav;
	}
	
	/*
	 * @RequestMapping("company/introduction") public ModelAndView
	 * getintrodunction(String com){ ModelAndView mav = new
	 * ModelAndView("/work/CompanyIntro.jsp"); List list =
	 * cds.getIntrodunction(com); mav.addObject("list", list);
	 * 
	 * return mav; }
	 */

	   
	   @RequestMapping("work/post/{num}/clip/{do}")
	   @ResponseBody
	   public String doClip(HttpSession hs,@PathVariable(name="num") int num,@PathVariable(name="do") String d){
		   String id = (String) hs.getAttribute("id");
		   PostData pd = wpr.readPostData(num);
		   System.out.println("받아온것?"+id+" "+pd);
		   boolean b = false;
		   if(d.equals("do"))
			   b = wpr.doClipping(pd, id);
		   else
			   b = wpr.clipOff(id, num);
		   System.out.println("결과는! "+b);
		   if(b)
			   return "y";
		   else
			   return "n";
	   }
	   
	   @RequestMapping("/work/post/{num}/clipCheck")
	   @ResponseBody
	   public String checkClip(@PathVariable(name="num") int num,HttpSession hs){
		   System.out.println("clipCheck들어옴");
		   String id = (String) hs.getAttribute("id");
		   boolean b = wpr.checkClipping(id, num);
		   if(b)
			   return "do";
		   else
			   return "donot";
	   }
}
