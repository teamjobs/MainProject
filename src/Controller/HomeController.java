package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
