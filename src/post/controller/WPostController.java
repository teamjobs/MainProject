package post.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import business.model.CompanyData;
import post.model.CPostReadService;
import post.model.PostPageService;
import post.model.WPostReadService;

@Controller
public class WPostController {

	@Autowired
	CdataReadService cds;
	@Autowired
	WPostReadService wpr;
	@Autowired
	PostPageService pps;
	@Autowired
	CPostReadService cpr;
	
	@RequestMapping("company/introduction/{com}")
	public ModelAndView getintrodunction(@PathVariable(name="com")String com){
		ModelAndView mav = new ModelAndView("/work/CompanyIntro.jsp");
		CompanyData cd = cds.getIntrodunction(com);
		mav.addObject("list", cd);
		return mav;
	}
	
	   @RequestMapping("work/list")
	   public ModelAndView postlist(@RequestParam(defaultValue="1") int p){
	      ModelAndView mav = new ModelAndView("/post/workview/PostList.jsp");
	      
	      int page = 0;
	      List list = pps.getRange(p);
	      /*List list = cpr.AllPost();*/
	      int size = cpr.AllPostCount();
	      if(size < 5){
	         page=1;
	      }else if(size % 5 != 0){
	         page = (size /5) +1 ;
	      }else if(size % 5 == 0){
	         page = size /5;
	      }
	      
	      mav.addObject("list",list);
	      mav.addObject("page",page);
	      return mav;
	   }
	   /*
	   @RequestMapping("company/introduction")
	   public ModelAndView getintrodunction(String com){
	      ModelAndView mav = new ModelAndView("/work/CompanyIntro.jsp");
	      List list = cds.getIntrodunction(com);
	      mav.addObject("list", list);
	      
	      return mav; 
	   }
	   */
}
