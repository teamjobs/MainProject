package business.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import post.model.CPostReadService;
import post.model.PostData;

@Controller
public class CmainController {
	
	@Autowired
	CPostReadService prs;
	
	@Autowired
	CdataReadService crs;

	
	@RequestMapping("/business/main")
	public ModelAndView goBusinessMain(HttpSession hs){
		System.out.println("???");
		//ModelAndView mav = new ModelAndView("/business/businessMain.jsp");
		ModelAndView mav = new ModelAndView("business_tile");
		String id = (String)hs.getAttribute("id");
		String co = (String)crs.getCompanyName(id);
		// ���ο��� �ʿ��� ����	
		// ������ ���̵�  /  ���ε�����Ʈ ��� 
		List<PostData> li = prs.getCompanyAllPost(co);
		System.out.println("1"+li);
		mav.addObject("postlist",li);
		return mav;
	}
	
	@RequestMapping("/business/main2")
	public ModelAndView goBusinessMain2(HttpSession hs){
		System.out.println("???");
		ModelAndView mav = new ModelAndView("/business/businessMain.jsp");
		String id = (String)hs.getAttribute("id");
		String co = (String)crs.getCompanyName(id);
		// ���ο��� �ʿ��� ����	
		// ������ ���̵�  /  ���ε�����Ʈ ��� 
		List<PostData> li = prs.getCompanyAllPost(co);
		System.out.println("1"+li);
		mav.addObject("postlist",li);
		return mav;
	}
	
}
