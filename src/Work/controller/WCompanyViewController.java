package Work.controller;

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
import qna.model.QnAReadService;
import review.service.IncomeService;
import review.service.InterviewService;

@Controller
public class WCompanyViewController {
	
	@Autowired
	CdataReadService crs;
	@Autowired
	QnAReadService qrs;
	@Autowired
	IncomeService ics;
	@Autowired
	InterviewService is;
	
	@RequestMapping("/companydata/{co}")
	public ModelAndView goCompanyView(@PathVariable String co){
		ModelAndView mav = new ModelAndView("Companydefault_tile");
		
		
		
		// CompanyData Read
		CompanyData cd = crs.getIntrodunction(co);
		mav.addObject("co",cd);
		
		
		//Income
		System.out.println("co == > " + co);
		HashMap icmap = ics.IncomeService(co); //연봉 정보
		System.out.println(icmap);
		mav.addObject("icmap", icmap);
		
		
		//Interview
		HashMap interLvmap = is.InterviewLevel(co); //난이도
		List aplist = is.InterAppraisal(co);  //면접 경험
		List passlist = is.InterPass(co);  //면접결과
		
		System.out.println("컴퍼니 컨트롤러"+interLvmap+aplist+passlist);
		mav.addObject("interLvmap",interLvmap);
		mav.addObject("aplist",aplist);
		mav.addObject("passlist",passlist);
		
		// QnAList Read
		List li = qrs.getCompanyQnA(co);
		int qlistsize = li.size()-1;
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		
		return mav;
	}
}
