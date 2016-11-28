package review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import review.model.InterviewData;
import review.service.InterviewService;

@Controller
public class InterviewController {

	@Autowired
	InterviewService is;
	
	@RequestMapping("/review/interview")
	public String InterView(){
		
		return "/review/InterviewView.jsp";
	}
	
	@RequestMapping("/review/interviewchart")
	public ModelAndView InterViewCon(@RequestParam String company){
		
		
		System.out.println("��Ʈ�ѷ�"+company);
		
		HashMap interLvmap = is.InterviewLevel(company);
		List aplist = is.InterAppraisal(company);
		
		List passlist = is.InterPass(company);

		System.out.println("����"+interLvmap);
		System.out.println("��ü"+aplist);
		System.out.println("��Ʈ pass"+passlist);
		
		ModelAndView mav = new ModelAndView("/review/InterviewView.jsp");
		mav.addObject("interLvmap",interLvmap);
		mav.addObject("aplist",aplist);
		mav.addObject("passlist",passlist);
		
		return mav;
	}
}
