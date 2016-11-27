package Work.controller;

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

@Controller
public class WCompanyViewController {
	
	@Autowired
	CdataReadService crs;
	@Autowired
	QnAReadService qrs;
	
	@RequestMapping("/companydata/{co}")
	public ModelAndView goCompanyView(@PathVariable String co){
		ModelAndView mav = new ModelAndView("Companydefault_tile");
		
		// CompanyData Read
		CompanyData cd = crs.getIntrodunction(co);
		mav.addObject("co",cd);
		
		// QnAList Read
		List li = qrs.getCompanyQnA(co);
		int qlistsize = li.size()-1;
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		
		
		return mav;
	}
}
