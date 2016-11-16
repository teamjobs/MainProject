package business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CmainController {

	@RequestMapping("/business/main")
	public String goBusinessMain(){
		return "/";
	}
}
