package business.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import post.model.CPostReadService;
import post.model.PostData;
import qna.model.QnAReadService;

@Controller
public class CmainController {
	
	@Autowired
	CPostReadService prs;
	@Autowired
	CdataReadService crs;
	@Autowired
	QnAReadService qrs;

	
	@RequestMapping("/business/main")
	public ModelAndView goBusinessMain(HttpSession hs){
		System.out.println("???");
		ModelAndView mav = new ModelAndView();
		
		String OK = (String) hs.getAttribute("confirm");
		if(OK == "company"){
			mav.setViewName("business_tile");
			String id = (String)hs.getAttribute("id");
			String co = (String)crs.getCompanyName(id);
			
			List<PostData> li = prs.getCompanyAllPost(co);
			List qli = qrs.getCompanyQnA(co);
			int qlistsize = qli.size();
			
			mav.addObject("postlist",li);
			mav.addObject("qlist",qli);
			mav.addObject("qlistsize",qlistsize);
			mav.addObject("myCo",co);
		}else{
			int img = (int)(Math.random()*6);
			mav.addObject("img",img);
			mav.setViewName("start/Error.jsp");
		}
		
		return mav;
	}
	
}
