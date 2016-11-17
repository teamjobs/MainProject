package file.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import file.model.*;

@Controller
public class CfileController {
	
	@Autowired
	FileUploadService fus;
	
	@RequestMapping("/business/file")
	public String goFile(){
		return "businessfileup_tile";
	}
	
	// 업로드 절차는 유저 / 기업 각각 set할 항목이 달라집니다. 
	@RequestMapping("/business/file/upload")
	public ModelAndView upCompanyFile(@RequestParam(name="file") MultipartFile file, 
							 String title, String type, HttpSession hs){
		String id = (String)hs.getAttribute("id");
		ModelAndView mav = new ModelAndView("business/file/uploadrst.jsp");
		FileData fd = fus.uploadFile(file);
		fd.setFILETYPE(type);
		fd.setTITLE(title);
		fd.setUPLOADER(id);
		boolean b = fus.upCompanyDB(fd);
		mav.addObject("uprst",b);
		return mav;
	}
	
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

}
