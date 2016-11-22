package business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CmyController {

	@RequestMapping("/business/my")
	public String myinfo(){
		return "CompanyMymain_tile";
	}
}
