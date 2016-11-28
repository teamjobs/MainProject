package review.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import review.service.IncomeService;

@Controller
public class ReviewMainController {

	@Autowired
	IncomeService ics;
	
	@RequestMapping("/test/ttt")
	public String basic(){
		
		return "/review/test.jsp";
		
	}
	
	@RequestMapping("/review/income")
	public ModelAndView IncomePage(@RequestParam String company){
		
		System.out.println("컨트롤러"+ company);
		
		ModelAndView mav = new ModelAndView("/review/IncomeView.jsp");
		
		HashMap icmap = ics.IncomeService(company);
		
		mav.addObject("icmap", icmap);
		
		
		return mav;
	}
}
