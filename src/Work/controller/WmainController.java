package Work.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Work.Service.WorkSerchService;
import business.model.CdataReadService;
import post.model.CPostReadService;

@Controller
public class WmainController {
//	WorkSerchService wss;
//	
//	@RequestMapping("/work/main")
//	public ModelAndView goWorkMain(HttpSession hs){
//		ModelAndView mav = new ModelAndView( "user_tile");
//		List list = wss.WSservice();
//		
//		mav.addObject("list",list);
//		return mav;
//	}
//	
}
