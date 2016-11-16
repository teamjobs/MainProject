package Controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Service.LoginService;
import Service.joinService;

@Controller
public class StartController {

	@Autowired
	joinService js;
	
	@Autowired
	LoginService ls;

	@RequestMapping("/")
	public ModelAndView start(HttpSession hs, String error) {
		hs.removeAttribute("error");
		ModelAndView mav = new ModelAndView("/start/index.jsp");
		mav.addObject("error", error);
		int img = (int) (Math.random() * 7);
		mav.addObject("img", img);
		return mav;
	}

	@RequestMapping("/index/join")
	public String join() {
		return "/start/join.jsp";
	}

	@RequestMapping("/member/joinOK")
	public ModelAndView joinOK(String id, String pass, String name, String phone, String email, String gender) {
		ModelAndView mav = new ModelAndView("/start/joinOK.jsp");
		HashMap map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);
		map.put("name", name);
		map.put("phone", phone);
		map.put("email", email);
		map.put("gender", gender);

		js.join(map);
		
		int img = (int) (Math.random() * 7);
		mav.addObject("img", img);
		return mav;
	}
	

	@RequestMapping("/member/check")
	@ResponseBody
	public String check(String id) {
		ModelAndView mav = new ModelAndView();
		if (js.check(id)) {   
			return "YYYYY";
		} else {
			return "NNNNN";
		}

	}
	
	@RequestMapping("/index/agree")
	public String agree(){
		return "/start/agree.jsp";
	}
	
	@RequestMapping("/index/agreeOK")
	public String agreeOK(){
		return "/start/join.jsp";
	}
	
	@RequestMapping("/index/login")
	public ModelAndView login(String id, String pass, HttpSession hs){
		ModelAndView mav = new ModelAndView();
		if(ls.loginC(id, pass)){
			mav.setViewName("redirect:/business/main");
			hs.setAttribute("id", id);
		} else if(ls.loginW(id, pass)){
			mav.setViewName("redirect:/work/main");
			hs.setAttribute("id", id);
		} else if(ls.loginC(id, pass)==false && ls.loginW(id, pass)==false){
			//hs.setAttribute("error", "true");
			mav.addObject("error", true);
			mav.setViewName("redirect:/");
		}
		
		return mav;
		
		
		
	}
}
