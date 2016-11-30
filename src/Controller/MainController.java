package Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Work.Service.WorkSerchService;

@Controller
public class MainController {
	@Autowired
	WorkSerchService wss;
	
	@RequestMapping("/work/main")
	public ModelAndView goUserMaintest(HttpSession hs){
		ModelAndView mav = new ModelAndView();
		String OK = (String) hs.getAttribute("confirm");
		if(OK.equals("work")){
			mav.setViewName("user_tile");
			List list = wss.WSservice();
			
			mav.addObject("list",list);
		}else{
			int img = (int)(Math.random()*6);
			mav.addObject("img",img);
			mav.setViewName("start/Error.jsp");
		}
		
		return mav;
	}

}
