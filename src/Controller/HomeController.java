package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
<<<<<<< HEAD
	@RequestMapping("/test2")
=======

	
	@RequestMapping("/test2")
>>>>>>> branch 'master' of https://github.com/teamjobs/MainProject.git
	public String test() {
		return "default";
	}
	
	@RequestMapping("/test")
	public String test2() {
		return "info";
	}
}
