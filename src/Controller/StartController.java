package Controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Service.joinService;

@Controller
public class StartController {
	
	@Autowired
	joinService js;
	
	@RequestMapping("/index")
	public ModelAndView start(){
		ModelAndView mav = new ModelAndView("/start/login.jsp");
		
		int img = (int)(Math.random()*3);
		mav.addObject("img",img);
		return mav;
	}
	
	@RequestMapping("/index/join")
	public String join(){
		return "/start/join.jsp";
	}
	
	@RequestMapping("/member/joinOK")
	public ModelAndView joinOK(String id, String pass,String name,String phone,String email,String gender){
		ModelAndView mav = new ModelAndView("/start/joinOK.jsp");
		HashMap map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);
		map.put("name", name);
		map.put("phone", phone);
		map.put("email", email);
		map.put("gender", gender);
		
		js.join(map);
		return mav;
	}
	
	@RequestMapping("/member/check")
	public ModelAndView check(String id){
		ModelAndView mav = new ModelAndView();
		if( js.check(id)){
			mav.setViewName("/member/checkOK");
		}
		else{
			mav.setViewName("/member/checkFail");
		}
		
		
		return mav;
	}
}
