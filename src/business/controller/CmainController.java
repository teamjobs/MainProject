package business.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import post.model.CPostReadService;
import post.model.PostData;

@Controller
public class CmainController {
	
	@Autowired
	CPostReadService prs;
	
	@Autowired
	CdataReadService crs;

	@RequestMapping("/business/main/")
	public String goBusinessMain(){
		return "business_tile";
	}
	
	@RequestMapping("/business/main/")
	public ModelAndView goBusinessMainWithId(HttpSession hs){
		ModelAndView mav = new ModelAndView("business_tile");
		String id = (String)hs.getAttribute("id");
		String co = (String)crs.getCompanyName(id);
		// 메인에서 필요한 정보	
		// 접속자 아이디  /  업로드포스트 목록 
		List<PostData> li = prs.getCompanyAllPost(co);
		mav.addObject("postlist",li);
		return mav;
	}
	
}
