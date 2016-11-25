package post.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import business.model.CompanyData;
import post.model.CPostReadService;
import post.model.PostData;
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
	
	@RequestMapping("work/post/{num}")
	public ModelAndView goPostRead(@PathVariable(name="num") int num){
		ModelAndView mav = new ModelAndView("/post/companyview/viewPost.jsp");
		PostData pd = wpr.readPostData(num);
		CompanyData cd = cds.getIntrodunction(pd.getCOMPANY());
		mav.addObject("pd",pd);
		mav.addObject("com",cd);
		mav.addObject("sort",true);
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
	   
	   @RequestMapping("work/post/{num}/clip/{do}")
	   @ResponseBody
	   public String doClip(HttpSession hs,@PathVariable(name="num") int num,@PathVariable(name="do") String d){
		   String id = (String) hs.getAttribute("id");
		   PostData pd = wpr.readPostData(num);
		   System.out.println("받아온것?"+id+" "+pd);
		   boolean b = false;
		   if(d.equals("do"))
			   b = wpr.doClipping(pd, id);
		   else
			   b = wpr.clipOff(id, num);
		   System.out.println("결과는! "+b);
		   if(b)
			   return "y";
		   else
			   return "n";
	   }
	   
	   @RequestMapping("/work/post/{num}/clipCheck")
	   @ResponseBody
	   public String checkClip(@PathVariable(name="num") int num,HttpSession hs){
		   System.out.println("clipCheck들어옴");
		   String id = (String) hs.getAttribute("id");
		   boolean b = wpr.checkClipping(id, num);
		   if(b)
			   return "do";
		   else
			   return "donot";
	   }
}
