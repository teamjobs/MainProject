package qna.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import qna.model.QnAData;
import qna.model.QnAReadService;
import qna.model.QnAUploadService;

@Controller
public class WQnAController {
	
	@Autowired
	QnAUploadService qus;
	@Autowired
	QnAReadService qrs;

	@RequestMapping("/work/qna/{co}/write")
	public ModelAndView goWrite(@PathVariable String co){
		ModelAndView mav = new ModelAndView("/companyQNA/QnAwrite.jsp");
		mav.addObject("comp",co);
		return mav;
	}
	
	@RequestMapping("/work/qna/{num}")
	public ModelAndView goViewQnA(@PathVariable int num){
		ModelAndView mav = new ModelAndView("/companyQNA/QnAview.jsp");
		QnAData qd = qrs.readQnAData(num);
		System.out.println(qd);
		mav.addObject("qdata",qd);
		return mav;
	}
	
	@RequestMapping("/work/qna/{co}/writerst")
	public ModelAndView qnaUpload(String id, String title, String ques,@PathVariable String co ){
		ModelAndView mav = new ModelAndView("redirect:/work/qna/mylist");
		QnAData qd = new QnAData(id,title,ques,co);
		System.out.println(qd);
		boolean b = qus.upQuestion(qd);
		mav.addObject("quprst",b);
		return mav;
	}
	
	@RequestMapping("/work/qna/mylist")
	public ModelAndView getqnaList(HttpSession hs){
		System.out.println("mylist!");
		String id = (String) hs.getAttribute("id");
		List li = qrs.getWorkQnA(id);
		int qlistsize = li.size();
		System.out.println("getli");
		System.out.println(li);
		System.out.println(qlistsize);
		ModelAndView mav = new ModelAndView("/companyQNA/QnAlist.jsp");
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		return mav;
	}
	
	
}
