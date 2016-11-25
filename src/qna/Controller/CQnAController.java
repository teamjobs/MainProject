package qna.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import qna.model.QnAReadService;
import qna.model.QnAUploadService;

@Controller
public class CQnAController {
	
	@Autowired
	QnAUploadService qus;
	@Autowired
	QnAReadService qrs;
	@Autowired
	CdataReadService crs;


	@RequestMapping("/business/qna/mylist")
	public ModelAndView getqnaList(HttpSession hs){
		System.out.println("mylist!");
		String id = (String) hs.getAttribute("id");
		String co = crs.getCompanyName(id);
		List li = qrs.getCompanyQnA(co);
		int qlistsize = li.size();
		System.out.println("getli");
		System.out.println(li);
		System.out.println(qlistsize);
		ModelAndView mav = new ModelAndView("/companyQNA/QnAlist.jsp");
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		mav.addObject("myCo",co);
		return mav;
	}
}
