package file.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import file.model.FileData;
import file.model.FileListService;
import file.model.FileUploadService;

@Controller
public class WfileController {
	
	@Autowired
	FileUploadService fus;
	
	@Autowired
	FileListService fls;
	
	@RequestMapping("/work/file/upload")
	public ModelAndView upWorkFile(@RequestParam(name="file") MultipartFile file, 
							 String co, int post, HttpSession hs){
		String id = (String)hs.getAttribute("id");
		ModelAndView mav = new ModelAndView("/");
		FileData fd = fus.uploadFile(file);
		fd.setCOMPANY(co);
		fd.setPOST(post);
		fd.setUPLOADER(id);
		boolean b = fus.upWorkDB(fd);
		mav.addObject("uprst",b);
		return mav;
	}
	
	@RequestMapping("/work/file/download/{num}")
	public ModelAndView goDown(@PathVariable int num){
		System.out.println("Dd");
		ModelAndView mav = new ModelAndView();
		FileData fd = fls.getPostCompanyFile(num); 
		boolean b = fls.isEx(fd.getFILEUUID());
		
		if(fd == null || !b){
			mav.setViewName("/");
		}else{
			mav.setViewName("dlv");
			mav.addObject("file",fd);
		}
		return mav;
	}
}
