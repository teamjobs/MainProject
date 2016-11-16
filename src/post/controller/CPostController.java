package post.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import post.model.CPostReadService;
import post.model.PostData;

@Controller
public class CPostController {

	@Autowired
	CPostReadService cpr;
	
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
}
