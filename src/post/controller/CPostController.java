package post.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import post.model.CPostReadService;
import post.model.PostData;

@Controller
public class CPostController {

	@Autowired
	CPostReadService cpr;
	
	@Autowired
	CdataReadService cds;
	
	
	
	@RequestMapping("business/company/my/post/{co}")
	public ModelAndView goCompanyPost(@PathVariable String co){
		ModelAndView mav = new ModelAndView("/post/companyview/extra.jsp");
		List<PostData> pdl = cpr.getCompanyAllPost(co);
		mav.addObject("pdlist",pdl);
		return mav;
	}
	
	@RequestMapping("business/company/post/{num}")
	public ModelAndView goPostRead(@PathVariable int num){
		ModelAndView mav = new ModelAndView("/post/companyview/extra.jsp");
		PostData pd = cpr.readPostData(num);
		mav.addObject("pd",pd);
		return mav;
	}

	@RequestMapping("work/list")
	public ModelAndView postlist(){
		ModelAndView mav = new ModelAndView("/post/workview/PostList.jsp");
		
		List list = cpr.AllPost();
		
		mav.addObject("list",list);
		
		return mav;
	}
	
	@RequestMapping("company/introduction")
	public ModelAndView getintrodunction(String com){
		ModelAndView mav = new ModelAndView("/work/CompanyIntro.jsp");
		List list = cds.getIntrodunction(com);
		mav.addObject("list", list);
		
		return mav;
		
		
	}
}
