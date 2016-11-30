package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping("/test2")
	public String test() {
		return "default";
	}
	
	@RequestMapping({"/my/index", "/test"})
	public String test2() {
		return "info";
	}
	
	@RequestMapping("/home")
	public String test3() {
		return "messageservice";
	}
	
	@RequestMapping("/write/review")
	public String test4() {
		return "reviewform";
	}
	
	@RequestMapping("/errorpage")
	public ModelAndView error(){
		ModelAndView mav = new ModelAndView("/start/Error.jsp");	
		int img = (int) (Math.random() * 7);
		mav.addObject("img", img);
		return mav;
	}
	
}
