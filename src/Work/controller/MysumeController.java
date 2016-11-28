package Work.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Work.model.My;
import post.model.PostData;

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
		return "redirect:/my/history";
	}
	
	@RequestMapping("/my/history/board")
	public ModelAndView myhistory(HttpSession hs){
		ModelAndView mav = new ModelAndView("work/Resumes/ResumeView.jsp");
		String id= (String) hs.getAttribute("id");
		List<HashMap> list = my.myhistoryPost(id);
		mav.addObject("list",list);
		return mav;
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
	
	@RequestMapping("/my/Myinfo")
	public ModelAndView Myinfo(HttpSession hs){
		ModelAndView mav = new ModelAndView("myinfo");
		String id= (String) hs.getAttribute("id");
		System.out.println(id);
		List list = my.myinfo(id);
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping("/my/Myinfo/change")
	public ModelAndView change(String name, String pass, String email,HttpSession hs){
		ModelAndView mav = new ModelAndView("redirect:/my/index");
		String id= (String) hs.getAttribute("id");
		my.change(name, pass, email, id);
		
		return mav;
	}
	
	@RequestMapping("/my/clipping/cancel")
	public String ClippingCancel(String n){
		my.ClippingCancel(n);
		return "redirect:/my/clipping";
	}
	
}
