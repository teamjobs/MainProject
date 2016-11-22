package Work.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Work.model.My;

@Controller
public class MysumeController {
	@Autowired
	My my;
	
	@RequestMapping("/my/history")
	public ModelAndView my(HttpSession hs){
//		ModelAndView mav = new ModelAndView("work/MyPage.jsp");
		ModelAndView mav = new ModelAndView("myhistory");
		String id= (String) hs.getAttribute("id");
		List list = my.myAll(id);
		mav.addObject("list",list);
		return mav;
	}
	@RequestMapping("/my/cancel")
	public String cancel(String n){
		my.cancel(n);
		return "redirect:/my";
	}
	@RequestMapping("/my/clipping")
	public ModelAndView clippingC(HttpSession hs){
		
		ModelAndView mav = new ModelAndView("myclipping");
		String id= (String) hs.getAttribute("id");
		List clipping = my.clipping(id);
		System.out.println(clipping);
		mav.addObject("clipping",clipping);
		
		return mav;
	}
	
	
}
