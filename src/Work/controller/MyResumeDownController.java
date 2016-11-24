package Work.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Work.Service.MyResumeDownService;
import Work.model.ResumeData;

@Controller
public class MyResumeDownController {

	@Autowired
	MyResumeDownService mrds;
	
	@Autowired
	ServletContext application;
	
	@RequestMapping("/my/resume/down/{fileuuid}")
	public ModelAndView Down(@PathVariable String fileuuid){
		ModelAndView mav = new ModelAndView();
		
		System.out.println("컨트롤러"+fileuuid);
		ResumeData rd = mrds.ResumeDwService(fileuuid);
		
		if(rd == null){
			System.out.println("null 실패");
			mav.setViewName("/work/MyFile/ResumeERROR.jsp");
		}else{
			if(new File(application.getRealPath("/files"), rd.getFILEUUID()).exists()){
				mav.setViewName("myResumeDownloadView");
				mav.addObject("file", rd);
			}else{
				System.out.println("else 실패");
				mav.setViewName("/work/MyFile/ResumeERROR.jsp");
			}
			
		}
		
		
		
		return mav;
	}
}
