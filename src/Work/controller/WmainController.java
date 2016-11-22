package Work.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import post.model.CPostReadService;

@Controller
public class WmainController {
	@Autowired
	CPostReadService cpr;
	
	@Autowired
	CdataReadService cds;
	
	//@RequestMapping("/work/main")
	public ModelAndView goWorkMain(HttpSession hs){
		ModelAndView mav = new ModelAndView( "user_tile");
		List list = cpr.AllPost();
		
		mav.addObject("list",list);
		return mav;
	}
}
