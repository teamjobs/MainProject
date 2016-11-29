package Work.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataReadService;
import business.model.CompanyData;
import post.model.WPostReadService;
import qna.model.QnAReadService;

import review.service.IncomeService;
import review.service.InterviewService;

import review.model.ReviewService2;


@Controller
public class WCompanyViewController {
	
	@Autowired
	CdataReadService crs;
	@Autowired
	QnAReadService qrs;
	@Autowired
	IncomeService ics;
	@Autowired
	InterviewService is;
	@Autowired
	ReviewService2 rs;
	@Autowired
	WPostReadService prs;

	
	@RequestMapping("/companydata/{co}")
	public ModelAndView goCompanyView(@PathVariable String co){
		ModelAndView mav = new ModelAndView("Companydefault_tile");
		CompanyData cd = crs.getIntrodunction(co);
		mav.addObject("co",cd);
		
		
		//Income
		System.out.println("co == > " + co);
		HashMap icmap = ics.IncomeService(co); //���� ����
		System.out.println(icmap);
		mav.addObject("icmap", icmap);
		
		
		//Interview
		HashMap interLvmap = is.InterviewLevel(co); //���̵�
		List aplist = is.InterAppraisal(co);  //���� ����
		List passlist = is.InterPass(co);  //�������
		
		System.out.println("���۴� ��Ʈ�ѷ�"+interLvmap+aplist+passlist);
		mav.addObject("interLvmap",interLvmap);
		mav.addObject("aplist",aplist);
		mav.addObject("passlist",passlist);
		
		
		// PostList
		List postli = prs.CompanyPost(co);
		mav.addObject("postlist",postli);
		
		// QnAList Read
		List li = qrs.getCompanyQnA(co);
		int qlistsize = li.size();
		mav.addObject("qlist",li);
		mav.addObject("qlistsize",qlistsize);
		
		List list = rs.allreivew(co);
		int all = list.size();
		mav.addObject("list",list);
		mav.addObject("all",all);
		
		//������ ��������߽��ϴ�
		HashMap map = rs.avg(co);
		mav.addObject("avg",map);
		System.out.println(map);
		
		
		return mav;
	}
}
