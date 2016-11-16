package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/business/main")
	public String test() {
		return "default";
	}
	
	@RequestMapping("/test")
	public String test2() {
		return "info";
	}
}
