package review.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import review.service.UserInputService;

@Controller
public class UserInputController {

	@Autowired
	UserInputService uis;
	

	@RequestMapping("/incomeinput")
	public String upIncome(String company, String type, String employment, String career,
							int pay, int bonus, int period){
		System.out.println(pay+"+"+bonus+"+"+period);
		HashMap<String,Object> map = new HashMap<>();
			map.put("company", company);
			map.put("type", type);
			map.put("employment", employment);
			map.put("career", career);
			map.put("pay",pay);
			map.put("bonus",bonus);
			map.put("period",period);
		
		uis.inputIncome(map);
		return "redirect:/companydata/"+company;
	} 
	
	@RequestMapping("/interviewinput")
	public String upIncome(String company, String type, String employment, String career,
							String appraisal, int interviewlevel, String pass){
		HashMap<String,Object> map = new HashMap<>();
			map.put("company", company);
			map.put("type", type);
			map.put("employment", employment);
			map.put("career", career);
			map.put("appraisal",appraisal);
			map.put("interviewlevel",interviewlevel);
			map.put("pass",pass);
		
		uis.inputInterview(map);
		return "redirect:/companydata/"+company;
	} 

}
