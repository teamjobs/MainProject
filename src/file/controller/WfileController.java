package file.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import file.model.FileData;
import file.model.FileListService;
import file.model.FileUploadService;

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
}
