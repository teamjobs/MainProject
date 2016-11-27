package file.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import file.model.FileData;
import file.model.FileListService;
import file.model.FileUploadService;

// CompanyFileController입니다. 
// work 파일은 WfileController에서 처리해주세요, 

@Controller
public class CfileController {
	
	@Autowired
	FileUploadService fus;
	@Autowired
	FileListService fls;
	@Autowired
	CdataReadService crs;
	
	@RequestMapping("/business/file")
	public String goFile(){
		return "redirect:/business/file/list";
	}
	
	@RequestMapping("/business/file/fileup")
	public String goFileup(){
		return "CompanyFileUpload_tile";
	}
	
	@RequestMapping("/business/file/logoup")
	public String goLogoup(){
		return "business/file/logoup.jsp";
	}
	
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
	
	@RequestMapping("/business/logo/upload")
	public ModelAndView upCompanyLogoFile(@RequestParam(name="file") MultipartFile file, 
							 HttpSession hs){
		String id = (String)hs.getAttribute("id");
		String co = (String)crs.getCompanyName(id);
		ModelAndView mav = new ModelAndView("business/file/uploadrst.jsp");
		FileData fd = fus.uploadLogo(file,id);
		fd.setFILETYPE("logofile");
		fd.setTITLE(co+"_logo");
		fd.setUPLOADER(id);
		boolean b = fus.upCompanyDB(fd);
		mav.addObject("uprst",b);
		return mav;
	}
	
	@RequestMapping("/business/file/list")
	public ModelAndView goCompanyFileList(HttpSession hs){
		String id = (String)hs.getAttribute("id");
		ModelAndView mav = new ModelAndView("CompanyFile_tile");
		List<FileData> li = fls.getSomeCompanyFile(id);
		System.out.println(li);
		mav.addObject("filelist",li);
		return mav;
	}
	
	@RequestMapping("/business/file/download/{num}")
	public ModelAndView goDown(@PathVariable int num){
		ModelAndView mav = new ModelAndView();
		FileData fd = fls.getOneCompanyFile(num); 
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
