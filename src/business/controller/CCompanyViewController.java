package business.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import business.model.CompanyData;
import post.model.WPostReadService;
import qna.model.QnAReadService;
import review.model.ReviewService2;
import review.service.IncomeService;
import review.service.InterviewService;

@Controller
public class CCompanyViewController {
	
	@Autowired
	CdataReadService crs;
	@Autowired
	QnAReadService qrs;
	@Autowired
	IncomeService ics;
	@Autowired
	InterviewService is;
	@Autowired
	ReviewService2 rs;
	@Autowired
	WPostReadService prs;
	
	@RequestMapping("/business/companydata/{co}")
	public ModelAndView goCompanyView(@PathVariable String co){
		ModelAndView mav = new ModelAndView("Companydefault_tile");

		// CompanyData Read
		CompanyData cd = crs.getIntrodunction(co);
		mav.addObject("co",cd);
		
		// PostList
		List postli = prs.CompanyPost(co);
		System.out.println(postli);
		mav.addObject("postlist", postli);
		
		// QnAList Read
		List li = qrs.getCompanyQnA(co);
		int qlistsize = li.size()-1;
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		mav.addObject("goAns","go");

		// ========================================================
		
		// Income
		System.out.println("co == > " + co);
		HashMap icmap = ics.IncomeService(co); // 연봉 정보
		System.out.println(icmap);
		mav.addObject("icmap", icmap);

		// Interview
		HashMap interLvmap = is.InterviewLevel(co); // 난이도
		List aplist = is.InterAppraisal(co); // 면접 경험
		List passlist = is.InterPass(co); // 면접결과
		
		mav.addObject("interLvmap", interLvmap);
		mav.addObject("aplist", aplist);
		mav.addObject("passlist", passlist);

		List list = rs.allreivew(co);
		int all = list.size();

		System.out.println("컨트롤러" + list + "/" + all);
		mav.addObject("list", list);
		mav.addObject("all", all);
		
		HashMap map = rs.avg(co);
		mav.addObject("avg", map);
		System.out.println(map);
		
		
		return mav;
	}
}
