package qna.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import qna.model.QnAData;
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
		//System.out.println("mylist!");
		String id = (String) hs.getAttribute("id");
		String co = crs.getCompanyName(id);
		List li = qrs.getCompanyQnA(co);
		int qlistsize = li.size();
		//System.out.println("getli");
		//System.out.println(li);
		//System.out.println(qlistsize);
		ModelAndView mav = new ModelAndView("/companyQNA/QnAlist.jsp");
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		mav.addObject("myCo",co);
		return mav;
	}
	
	
	@RequestMapping("/business/qna/{num}/ans")
	public ModelAndView goAnswer(HttpSession hs, @PathVariable(name="num") int num){
		String id = (String) hs.getAttribute("id");
		String co = crs.getCompanyName(id);
		QnAData qd = qrs.readQnAData(num);
		
		ModelAndView mav = new ModelAndView("/companyQNA/QnAAnswer.jsp");
		mav.addObject("qdata",qd);
		mav.addObject("co",co);
		return mav;
	}
	
	@RequestMapping("/business/qna/{num}/ans/rst")
	public ModelAndView doAnswer(HttpSession hs, @PathVariable(name="num") int num, String answ){
		String id = (String) hs.getAttribute("id");
		String co = crs.getCompanyName(id);
		QnAData qd = qrs.readQnAData(num);
		qd.doAnsw(co, answ);
		boolean b = qus.upAnswer(qd);
		if(b)
			System.out.println("답변 성공!");
		else
			System.out.println("답변 실패!");
		ModelAndView mav = new ModelAndView("/companyQNA/QnArst.jsp");
		return mav;
	}
}
