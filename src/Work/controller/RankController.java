package Work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Work.model.RankService;

@Controller
public class RankController {
	@Autowired
	RankService rs;
	
	@RequestMapping("/rank/{option}")
	public ModelAndView rank(@PathVariable(name="option") String option){
		System.out.println("컨트롤러"+option);
		
		ModelAndView mav = new ModelAndView();
		
		List list =rs.RankSelect(option);
		int size = list.size();
		
		if(option.equals("Welfare")){
			mav.setViewName("welfare");
		}else if(option.equals("RankUp")){
			mav.setViewName("rankup");
		}else if(option.equals("WorkLoad")){
			mav.setViewName("workload");
		}else if(option.equals("Culture")){
			mav.setViewName("culture");	
		}
		
		
		mav.addObject("option",option);
		
		
		System.out.println(list);
		
		mav.addObject("list",list);
		mav.addObject("size",size);
		return mav;
	}
	
}
