package Work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResumeView {

	@RequestMapping("/work/resume/view")
	public String ResumeList(){
		
		return"/work/Resumes/ResumeView.jsp";
	}
}
