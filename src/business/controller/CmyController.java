package business.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
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
import qna.model.QnAData;
import qna.model.QnAReadService;

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
	@Autowired
	QnAReadService qrs;
	CompanyData cd;
	String id;
	
	
	@RequestMapping("/business/my/rev")
	public ModelAndView goMyUp(HttpSession hs){
		String id = (String)hs.getAttribute("id");
		ModelAndView mav = new ModelAndView("busMy_tile");
		CompanyData cd = crs.dataRead(id);
		HashMap li = crs.addCotypeList();
		ArrayList<String> cotli = new ArrayList<>();
		cotli.add("���� ��� ȭ�� �Ǽ�");
		cotli.add("�̵�������ȭ������");
		cotli.add("IT���������");
		cotli.add("���񽺡�����������������");
		mav.addObject("coli",li);
		mav.addObject("cd",cd);
		mav.addObject("cotli",cotli);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
	}
	
	@RequestMapping("/business/my")
	public ModelAndView myinfo(HttpSession hs){
		ModelAndView mav = new ModelAndView("businfo");
		this.id = (String) hs.getAttribute("id");
		this.cd = crs.dataRead(id);
		List li = qrs.getCompanyQnA(cd.getNAME());
		int qlistsize = li.size();
		mav.addObject("list", cd);
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
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
		mav.addObject("postlist",li);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
	}
	
	@RequestMapping("business/my/post/upload")
	public ModelAndView goPostUpload(HttpSession hs){
		ModelAndView mav = new ModelAndView("CompanyPostUpload_tile");
		String id = (String)hs.getAttribute("id");
		
		HashMap li = cps.addList();
		mav.addObject("li",li);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
	}
	
	@RequestMapping(value="business/my/post/{num}/adj")
	public ModelAndView goPostUpload2(@PathVariable(name="num") int num, HttpSession hs){
		ModelAndView mav = new ModelAndView();
		
		String co = crs.getCompanyName((String)hs.getAttribute("id"));
		PostData pd = cps.readPostData(num);
		System.out.println("ȸ���>"+co+" ������>"+pd.getCOMPANY());
		HashMap li = cps.addList();
		mav.addObject("li",li);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		
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
		PostData pd = cps.readPostData(num);
		CompanyData cd = crs.getIntrodunction(pd.getCOMPANY());
		mav.addObject("pd",pd);
		mav.addObject("com",cd);
		mav.addObject("sort",true);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
	}
	
	@RequestMapping("/business/my/post/{num}/vol")
	public ModelAndView goPostVol(@PathVariable(name="num") int num, HttpSession hs){
		ModelAndView mav = new ModelAndView("CompanyPostVolList_tile");
		
		
		String id = (String)hs.getAttribute("id");
		PostData pd = cps.readPostData(num);
		List<FileData> fi = prs.getPostVolList(num);
		mav.addObject("volsize",fi.size());
		mav.addObject("pd",pd);
		mav.addObject("vollist",fi);
		
		// =====================
		
		HashMap viewdata = initView(id);
		mav.addObject("initviewCdata",viewdata);
		
		// =====================
		
		return mav;
	}
	
	
	public HashMap initView(String id){
		HashMap<String,Object> hm = new HashMap<>();
		cd = cds.dataRead(id);
		
		// ============== �޼���
		List li = qrs.getCompanyQnA(cd.getNAME());
		Iterator it = li.iterator();
		int i = 0;
		while(it.hasNext()){
			QnAData qd = (QnAData) it.next();
			if(!qd.getCHE().equals("checked"))
				i++;
		}
		int newmassage = i;
		
		// =============== post����
		HashMap ma = mvs.setViewData(cd.getNAME());
		
		
		hm.put("myCo", cd.getNAME());
		hm.put("cNewMassage", newmassage);
		hm.put("vpd",ma);
		return hm;
	}

	
}
