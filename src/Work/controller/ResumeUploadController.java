package Work.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import Work.Service.MyResumeListService;
import Work.Service.MyResumeRDService;
import Work.Service.ResumeUploadService;
import Work.model.ResumeData;

@Controller
public class ResumeUploadController {
	
	@Autowired
	ResumeUploadService rus;
	
	@Autowired
	MyResumeRDService myrd;

	//@RequestMapping("/my/resume/in")
	public String resumein(){
		
		return "myresumeup";
	}
	
	@RequestMapping("/my/resume/upload")
	public ModelAndView Upresumefile(@RequestParam(name="file") MultipartFile file, 
							  HttpSession hs){
		String id = (String)hs.getAttribute("id");
		ModelAndView mav = new ModelAndView("redirect:/my/resume/in");
		ResumeData rd = rus.ResumeUploadSV(file);
		rd.setTITLE(id + "님의 이력서");
		rd.setUPLOADER(id);
		System.out.println("컨트롤러"+ id);
		boolean b = rus.ResumeUpDB(rd);
		mav.addObject("ResumeUp",b);
		return mav;
	}
	
	
	@Autowired
	MyResumeListService mrls;
	
	@RequestMapping("/my/resume/in")
	public ModelAndView Myresumelist(HttpSession hs){
		
		String id = (String)hs.getAttribute("id");
		
		ModelAndView mav = new ModelAndView();
		
		List mrlist = mrls.MyResumeList(id);
		
		mav.setViewName("myresumeup");
		mav.addObject("mrlist",mrlist);
		
		return mav;
		
	}
	
	
	@RequestMapping("/my/resume/delete")
	public String delete(String num){
		
		System.out.println(num);
		
		myrd.DeleteService(num);
		
		return "redirect:/my/resume/in";
	}
	
	@RequestMapping("/my/resume/revise")
	public String revise(String num){
		
		System.out.println(num);
		
		
		
		return "redirect:/my/resume/in";
	}
	
}



















