package file.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import business.model.CMyViewdataService;
import business.model.CdataReadService;
import business.model.CompanyData;
import file.model.FileData;
import file.model.FileListService;
import file.model.FileUploadService;
import post.model.CPostReadService;
import qna.model.QnAData;
import qna.model.QnAReadService;

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
	@Autowired
	CPostReadService prs;
	@Autowired
	CdataReadService cds;
	@Autowired
	CPostReadService cps;
	@Autowired
	CMyViewdataService mvs;
	@Autowired
	QnAReadService qrs;
	
	CompanyData cd;
	String id;
	
	
	
	
	@RequestMapping("/business/file")
	public ModelAndView goFile(HttpSession hs){
		ModelAndView mav = new ModelAndView("redirect:/business/file/list");
		this.id = (String)hs.getAttribute("id");
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
	}
	
	@RequestMapping("/business/file/fileup")
	public ModelAndView goFileup(HttpSession hs){
		ModelAndView mav = new ModelAndView("CompanyFileUpload_tile");
		String id = (String)hs.getAttribute("id");
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
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
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
	}
	
	@RequestMapping("/business/logo/upload")
	public ModelAndView upCompanyLogoFile(@RequestParam(name="file") MultipartFile file, 
							 HttpSession hs){
		String id = (String)hs.getAttribute("id");
		String co = (String)crs.getCompanyName(id);
		ModelAndView mav = new ModelAndView("business/file/QnArst.jsp");
		FileData fd = fus.uploadLogo(file,id);
		fd.setFILETYPE("logofile");
		fd.setTITLE(co+"_logo");
		fd.setUPLOADER(id);
		//boolean b = fus.upCompanyDB(fd);
		//mav.addObject("uprst",b);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
	}
	
	@RequestMapping("/business/file/list")
	public ModelAndView goCompanyFileList(HttpSession hs){
		String id = (String)hs.getAttribute("id");
		ModelAndView mav = new ModelAndView("CompanyFile_tile");
		List<FileData> li = fls.getSomeCompanyFile(id);
		System.out.println(li);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		mav.addObject("filelist",li);
		return mav;
	}
	
	@RequestMapping("/business/file/download/{num}")
	public ModelAndView goDown(@PathVariable int num){
		ModelAndView mav = new ModelAndView();
		FileData fd = fls.getOneCompanyFile(num); 
		boolean b = fls.isEx(fd.getFILEUUID());
		System.out.println("파일여부?"+b);
		if(fd == null || !b){
			mav.setViewName("/");
		}else{
			mav.setViewName("dlv");
			mav.addObject("file",fd);
		}
		return mav;
	}
	
	public HashMap initView(String id){
		HashMap<String,Object> hm = new HashMap<>();
		cd = cds.dataRead(id);
		
		// ============== 메세지
		List li = qrs.getCompanyQnA(cd.getNAME());
		Iterator it = li.iterator();
		int i = 0;
		while(it.hasNext()){
			QnAData qd = (QnAData) it.next();
			if(!qd.getCHE().equals("checked"))
				i++;
		}
		int newmassage = i;
		
		// =============== post정보
		HashMap ma = mvs.setViewData(cd.getNAME());
		
		
		hm.put("myCo", cd.getNAME());
		hm.put("cNewMassage", newmassage);
		hm.put("vpd",ma);
		return hm;
	}

}
