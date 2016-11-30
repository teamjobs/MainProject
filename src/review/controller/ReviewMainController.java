package review.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import review.model.ReviewMainService;
import review.service.IncomeService;

@Controller
public class ReviewMainController {

	@Autowired
	ReviewMainService rms;
	
	@RequestMapping("/review/main")
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView("work/review/ReviewMain.jsp");
		List WORKLOAD = rms.WORKLOAD();
		List CHANCE = rms.CHANCE();
		List CULTURE = rms.CULTURE();
		List WELFARE = rms.WELFARE();
		
		mav.addObject("WORKLOAD",WORKLOAD);
		mav.addObject("CHANCE",CHANCE);
		mav.addObject("CULTURE",CULTURE);
		mav.addObject("WELFARE",WELFARE);
		
		return mav;
	}
}
