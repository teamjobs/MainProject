package Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping("/work/main")
	public ModelAndView goUserMaintest(HttpSession hs){
		ModelAndView mav = new ModelAndView("user_tile");
		return mav;
	}
	
	@RequestMapping("/work/main/qwer")
	public ModelAndView goUserMain(HttpSession hs){
		ModelAndView mav = new ModelAndView("user_tile");
		return mav;
	}
}
