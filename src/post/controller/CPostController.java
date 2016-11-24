package post.controller;

import java.util.ArrayList;
import java.util.HashMap;
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
import business.model.CompanyData;
import file.model.FileData;
import file.model.FileUploadService;
import post.model.CPostReadService;
import post.model.CPostUploadService;
import post.model.PostData;
import post.model.PostPageService;

@Controller
public class CPostController {

	@Autowired
	CPostReadService cpr;
	@Autowired 
	CPostUploadService cpu;
	@Autowired
	CdataReadService crs;
	@Autowired
	CPostReadService cps;
	@Autowired
	FileUploadService fus;
	
	@RequestMapping("business/my/post/upload")
	public ModelAndView goPostUpload(){
		ModelAndView mav = new ModelAndView("/post/companyview/upPost.jsp");
		HashMap li = cps.addList();
		mav.addObject("li",li);
		return mav;
	}
	
	
	@RequestMapping("business/post/{num}")
	public ModelAndView goPostRead(@PathVariable(name="num") int num){
		ModelAndView mav = new ModelAndView("/post/companyview/viewPost.jsp");
		PostData pd = cpr.readPostData(num);
		CompanyData cd = crs.getIntrodunction(pd.getCOMPANY());
		mav.addObject("pd",pd);
		mav.addObject("com",cd);
		mav.addObject("sort",true);
		return mav;
	}
	
	@RequestMapping(value="business/post/{num}/adj")
	public ModelAndView goPostUpload2(@PathVariable(name="num") int num, HttpSession hs){
		String co = crs.getCompanyName((String)hs.getAttribute("id"));
		ModelAndView mav = new ModelAndView();
		PostData pd = cpr.readPostData(num);
		System.out.println("회사명>"+co+" 접속자>"+pd.getCOMPANY());
		HashMap li = cps.addList();
		mav.addObject("li",li);
		if(co.equals(pd.getCOMPANY())){
			mav.setViewName("/post/companyview/upPost.jsp");
			mav.addObject("pd",pd);
		}else{
			mav.setViewName("/error.jsp");
			return mav;
		}
		return mav;
	}
	
	
	@RequestMapping("business/company/my/post/{co}")
	public ModelAndView goCompanyPost(@PathVariable String co){
		ModelAndView mav = new ModelAndView("/post/companyview/extra.jsp");
		List<PostData> pdl = cpr.getCompanyAllPost(co);
		mav.addObject("pdlist",pdl);
		return mav;
	}
	

	@RequestMapping("/business/my/post/uploadrst")
	public ModelAndView upPost(String way, String title, String startdate, String enddate, String job,
			String local, String career, String hiretype, String business, String qualification, 
			String process,	String rank, String salary, String incharge, String callnumber,
			int pay, String education, int adjSort, HttpSession session, 
			@RequestParam(name="file") MultipartFile file ){
		System.out.println("career?="+career);
		ModelAndView mav = new ModelAndView("business/my/post/upload");
		String id = (String)session.getAttribute("id");
		String co = crs.getCompanyName((String)session.getAttribute("id"));
		boolean sort = adjSort == 0;
		System.out.println("sort=="+sort);
		
		PostData pd;
		boolean b;
		boolean b2;
		int postnumber;

		if(sort){		// 신규 업로드
			pd = new PostData(way,co,title,startdate,enddate,
					job,local,career,hiretype,business,qualification,process,rank,salary,
					incharge,callnumber,pay,education);
			b = cpu.uploadPost(pd);
			List<PostData> pdl = cpr.getCompanyAllPost(co);
			postnumber = pdl.get(0).getNUM();
			System.out.println("신규 포스트=="+postnumber);
		}else{			// 포스트 수정
			pd = cpr.readPostData(adjSort);
			pd.adjPostData(way,co,title,startdate,enddate,
					job,local,career,hiretype,business,qualification,process,rank,salary,
					incharge,callnumber,pay,education);
			b = cpu.updatePost(pd);
			postnumber = adjSort;
			System.out.println("포스트 수정=="+postnumber);
			if(file != null){
				fus.delfile(pd.getNUM());
			}
		}
		System.out.println("DB 결과=="+b);
		if(b){
			FileData fd = fus.uploadFile(file);
			fd.setFILETYPE("text");
			fd.setTITLE(title+"file");
			fd.setUPLOADER(co);
			fd.setPOST(postnumber);
			b2 = fus.upCompanyDB(fd);
			System.out.println("업로드 파일=="+fd);
			mav.addObject("uprst",b2);
		}else{
			mav.addObject("uprst",false);
		}
		return mav;
	}
}
