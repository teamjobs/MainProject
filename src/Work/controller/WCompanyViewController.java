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
import review.model.ReviewService2;

@Controller
public class WCompanyViewController {
	
	@Autowired
	CdataReadService crs;
	@Autowired
	QnAReadService qrs;
	@Autowired
	ReviewService2 rs;
	
	@RequestMapping("/companydata/{co}")
	public ModelAndView goCompanyView(@PathVariable String co){
		ModelAndView mav = new ModelAndView("Companydefault_tile");
		// CompanyData Read
		CompanyData cd = crs.getIntrodunction(co);
		mav.addObject("co",cd);
		
		// QnAList Read
		List li = qrs.getCompanyQnA(co);
		int qlistsize = li.size();
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		
		List list = rs.allreivew(co);
		int all = list.size();
		mav.addObject("list",list);
		mav.addObject("all",all);
		
		//오늘은 여기까지했습니다
		HashMap map = rs.avg(co);
		mav.addObject("avg",map);
		System.out.println(map);
		
		
		return mav;
	}
}
