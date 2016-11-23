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
import Work.Service.ResumeUploadService;
import Work.model.ResumeData;

@Controller
public class ResumeUploadController {
	
	@Autowired
	ResumeUploadService rus;

	@RequestMapping("/my/resume/in")
	public String resumein(){
		
		return "myresumeup";
	}
	
	@RequestMapping("/my/resume/upload")
	public ModelAndView Upresumefile(@RequestParam(name="file") MultipartFile file, 
							  HttpSession hs){
		String id = (String)hs.getAttribute("id");
		ModelAndView mav = new ModelAndView("myresumeup");
		ResumeData rd = rus.ResumeUploadSV(file);
		rd.setTITLE(id + "���� �̷¼�");
		rd.setUPLOADER(id);
		System.out.println("��Ʈ�ѷ�"+ id);
		boolean b = rus.ResumeUpDB(rd);
		mav.addObject("ResumeUp",b);
		return mav;
	}
	
	
	@Autowired
	MyResumeListService mrls;
	
	@RequestMapping("/my/resume/mylist")
	public ModelAndView Myresumelist(HttpSession hs){
		
		String id = (String)hs.getAttribute("id");
		
		ModelAndView mav = new ModelAndView();
		
		List mrlist = mrls.MyResumeList(id);
		
		mav.setViewName("/work/MyFile/ResumeList.jsp");
		mav.addObject("mrlist",mrlist);
		
		return mav;
		
		
	}
	
}



















