package Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping("/work/main")
	public ModelAndView goUserMaintest(HttpSession hs){
		ModelAndView mav = new ModelAndView();
		String OK = (String) hs.getAttribute("confirm");
		if(OK == "work"){
			mav.setViewName("user_tile");
		}else{
			int img = (int)(Math.random()*6);
			mav.addObject("img",img);
			mav.setViewName("start/Error.jsp");
		}
		
		return mav;
	}

}
