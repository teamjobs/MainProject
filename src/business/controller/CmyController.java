package business.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CMyViewdataService;
import business.model.CdataReadService;
import business.model.CompanyData;
import file.model.FileData;
import post.model.CPostReadService;
import post.model.PostData;

@Controller
public class CmyController {
	
	@Autowired
	CPostReadService prs;
	@Autowired
	CdataReadService crs;
	@Autowired
	CdataReadService cds;
	@Autowired
	CPostReadService cps;
	@Autowired
	CMyViewdataService mvs;
	
	CompanyData cd;

	@RequestMapping("/business/my")
	public ModelAndView myinfo(HttpSession hs){
		ModelAndView mav = new ModelAndView("businfo");
		String id = (String) hs.getAttribute("id");
		cd = cds.dataRead(id);
		HashMap ma = mvs.setViewData(cd.getNAME());
		mav.addObject("vpd",ma);
		mav.addObject("list", cd);
		return mav;
	}
	
	@RequestMapping("/business/logout")
	public String businessLogout(){
		return "/logout.jsp";
	}
	
	@RequestMapping("/business/my/post")
	public ModelAndView goBusinessMain(HttpSession hs){
		ModelAndView mav = new ModelAndView("CompanyPost_tile");
		String id = (String)hs.getAttribute("id");
		String co = (String)crs.getCompanyName(id);
		List<PostData> li = prs.getCompanyAllPost(co);
		HashMap ma = mvs.setViewData(cd.getNAME());
		mav.addObject("vpd",ma);
		mav.addObject("postlist",li);
		return mav;
	}
	
	@RequestMapping("business/my/post/upload")
	public ModelAndView goPostUpload(){
		ModelAndView mav = new ModelAndView("CompanyPostUpload_tile");
		HashMap ma = mvs.setViewData(cd.getNAME());
		mav.addObject("vpd",ma);
		
		HashMap li = cps.addList();
		mav.addObject("li",li);
		return mav;
	}
	
	@RequestMapping(value="business/my/post/{num}/adj")
	public ModelAndView goPostUpload2(@PathVariable(name="num") int num, HttpSession hs){
		ModelAndView mav = new ModelAndView();
		HashMap ma = mvs.setViewData(cd.getNAME());
		mav.addObject("vpd",ma);
		
		String co = crs.getCompanyName((String)hs.getAttribute("id"));
		PostData pd = cps.readPostData(num);
		System.out.println("회사명>"+co+" 접속자>"+pd.getCOMPANY());
		HashMap li = cps.addList();
		mav.addObject("li",li);
		if(co.equals(pd.getCOMPANY())){
			mav.setViewName("CompanyPostUpload_tile");
			mav.addObject("pd",pd);
		}else{
			mav.setViewName("/error.jsp");
			return mav;
		}
		return mav;
	}
	
	@RequestMapping("business/my/post/{num}")
	public ModelAndView goPostRead(@PathVariable(name="num") int num){
		ModelAndView mav = new ModelAndView("CompanyPostView_tile");
		HashMap ma = mvs.setViewData(cd.getNAME());
		mav.addObject("vpd",ma);
		
		PostData pd = cps.readPostData(num);
		CompanyData cd = crs.getIntrodunction(pd.getCOMPANY());
		mav.addObject("pd",pd);
		mav.addObject("com",cd);
		mav.addObject("sort",true);
		return mav;
	}
	
	@RequestMapping("/business/my/post/{num}/vol")
	public ModelAndView goPostVol(@PathVariable(name="num") int num, HttpSession hs){
		ModelAndView mav = new ModelAndView("CompanyPostVolList_tile");
		HashMap ma = mvs.setViewData(cd.getNAME());
		mav.addObject("vpd",ma);
		
		String id = (String)hs.getAttribute("id");
		PostData pd = cps.readPostData(num);
		List<FileData> fi = prs.getPostVolList(num);
		mav.addObject("volsize",fi.size());
		mav.addObject("pd",pd);
		mav.addObject("vollist",fi);
		return mav;
	}

	
}
