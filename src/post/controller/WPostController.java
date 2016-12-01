package post.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Work.Service.WorkSerchService;
import business.model.CdataReadService;
import business.model.CompanyData;
import post.model.CPostReadService;
import post.model.PostData;
import post.model.PostPageService;
import post.model.WPostReadService;

@Controller
public class WPostController {

	@Autowired
	CdataReadService cds;
	@Autowired
	WPostReadService wpr;
	@Autowired
	PostPageService pps;
	@Autowired
	CPostReadService cpr;

	@Autowired
	WorkSerchService ws;

	
	
	@RequestMapping("company/introduction/{com}")
	public ModelAndView getintrodunction(@PathVariable(name = "com") String com) {
		ModelAndView mav = new ModelAndView("/work/CompanyIntro.jsp");
		CompanyData cd = cds.getIntrodunction(com);
		mav.addObject("list", cd);
		return mav;
	}

	@RequestMapping("work/post/{num}")
	public ModelAndView goPostRead(@PathVariable(name = "num") int num) {
		ModelAndView mav = new ModelAndView("/post/companyview/viewPost.jsp");
		PostData pd = wpr.readPostData(num);
		CompanyData cd = cds.getIntrodunction(pd.getCOMPANY());
		
		cpr.hitup(num);
		mav.addObject("pd", pd);
		mav.addObject("com", cd);
		mav.addObject("sort", true);
		return mav;
	}


	@RequestMapping("/find")
	public ModelAndView topPostRead() {
		ModelAndView mav = new ModelAndView("findjob");
		List<PostData> list = wpr.readTopPost();
		// ����
		String[] local = new String[] { "��ü", "����", "���", "��õ", "����", "����", "����", "�泲", "���", "�λ�", "���", "�泲", "���",
				"�뱸", "����", "����", "����", "����" };
		// ����
		String[] job = new String[] { "��ü", "�ܽ�-����", "����-�Ǹ�", "��ȭ-����-��Ȱ", "����-����", "�繫��", "������", "����-�Ǽ�-���", "IT-��ǻ��",
				"����", "�����-����ġ-����", "�̵��" };
		// ���
		String[] career = new String[] { "��ü", "����", "1���̻�", "2���̻�", "3���̻�", "4���̻�", "5���̻�", "6���̻�", "7���̻�", "8���̻�",
				"9���̻�", "10���̻�" };
		// �������
		String[] hiretype = new String[] { "��ü", "������", "�����", "����", "�İ���", "��������", "�Ƹ�����Ʈ", "������/������", "���λ����" };
		// �ڰݿ��
		String[] education = new String[] { "��ü", "����", "���б�����", "����б�����", "���б�����", "�л�", "�ڻ�", "����" };

		// ����
		String[] rank = new String[] { "��ü", "����", "���", "�븮", "����", "����", "����", "����", "������", "�����濵��" };
		// �޿�
		String[] salary = new String[] { "��ü", "����", "����", "�ֱ�", "�ϱ�", "�ñ�" };

		mav.addObject("local", local);
		mav.addObject("job", job);
		mav.addObject("career", career);
		mav.addObject("hiretype", hiretype);
		mav.addObject("education", education);
		mav.addObject("rank", rank);
		mav.addObject("salary", salary);
		mav.addObject("list", list);
		List wlist = ws.WSservice();

		mav.addObject("wlist", wlist);
		return mav;
	}

	// Post�� �Է¹޴°�
	@RequestMapping("/find/result")
	public ModelAndView WorkSelectSerch(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("findresult");
		List<PostData> list = wpr.readTopPost();
		// ����
		String[] local = new String[] { "��ü", "����", "���", "��õ", "����", "����", "����", "�泲", "���", "�λ�", "���", "�泲", "���",
				"�뱸", "����", "����", "����", "����" };
		// ����
		String[] job = new String[] { "��ü", "�ܽ�-����", "����-�Ǹ�", "��ȭ-����-��Ȱ", "����-����", "�繫��", "������", "����-�Ǽ�-���", "IT-��ǻ��",
				"����", "�����-����ġ-����", "�̵��" };
		// ���
		String[] career = new String[] { "��ü", "����", "1���̻�", "2���̻�", "3���̻�", "4���̻�", "5���̻�", "6���̻�", "7���̻�", "8���̻�",
				"9���̻�", "10���̻�" };
		// �������
		String[] hiretype = new String[] { "��ü", "������", "�����", "����", "�İ���", "��������", "�Ƹ�����Ʈ", "������/������", "���λ����" };
		// �ڰݿ��
		String[] education = new String[] { "��ü", "����", "���б�����", "����б�����", "���б�����", "�л�", "�ڻ�", "����" };

		// ����
		String[] rank = new String[] { "��ü", "����", "���", "�븮", "����", "����", "����", "����", "������", "�����濵��" };
		// �޿�
		String[] salary = new String[] { "��ü", "����", "����", "�ֱ�", "�ϱ�", "�ñ�" };

		mav.addObject("local", local);
		mav.addObject("job", job);
		mav.addObject("career", career);
		mav.addObject("hiretype", hiretype);
		mav.addObject("education", education);
		mav.addObject("rank", rank);
		mav.addObject("salary", salary);
		mav.addObject("list", list);
		String[] keys = { "local", "job", "career", "hiretype", "education", "rank", "salary" };
		HashMap<String, String[]> map = new HashMap<>();

		for (int i = 0; i < keys.length; i++) {
			String[] ar = req.getParameterValues(keys[i]);
			map.put(keys[i], ws.fillArray(ar));
		}

		System.out.println("��Ʈ��2" + map.toString());


		List<PostData> sslist = ws.SelectSerchService(map);

		mav.addObject("sslist", sslist);

		System.out.println("��Ʈ�� ����Ʈ" + sslist.size());
		System.out.println("��Ʈ��3" + map);

		return mav;

	}

	@RequestMapping("work/list")
	public ModelAndView postlist(@RequestParam(defaultValue = "1") int p) {
		ModelAndView mav = new ModelAndView("/post/workview/PostList.jsp");

		int page = 0;
		List list = pps.getRange(p);
		/* List list = cpr.AllPost(); */
		int size = cpr.AllPostCount();
		if (size < 5) {
			page = 1;
		} else if (size % 5 != 0) {
			page = (size / 5) + 1;
		} else if (size % 5 == 0) {
			page = size / 5;
		}

		mav.addObject("list", list);
		mav.addObject("page", page);
		return mav;
	}
	
	/*
	 * @RequestMapping("company/introduction") public ModelAndView
	 * getintrodunction(String com){ ModelAndView mav = new
	 * ModelAndView("/work/CompanyIntro.jsp"); List list =
	 * cds.getIntrodunction(com); mav.addObject("list", list);
	 * 
	 * return mav; }
	 */

	   
	   @RequestMapping("work/post/{num}/clip/{do}")
	   @ResponseBody
	   public String doClip(HttpSession hs,@PathVariable(name="num") int num,@PathVariable(name="do") String d){
		   String id = (String) hs.getAttribute("id");
		   PostData pd = wpr.readPostData(num);
		   System.out.println("�޾ƿ°�?"+id+" "+pd);
		   boolean b = false;
		   if(d.equals("do"))
			   b = wpr.doClipping(pd, id);
		   else
			   b = wpr.clipOff(id, num);
		   System.out.println("�����! "+b);
		   if(b)
			   return "y";
		   else
			   return "n";
	   }
	   
	   @RequestMapping("/work/post/{num}/clipCheck")
	   @ResponseBody
	   public String checkClip(@PathVariable(name="num") int num,HttpSession hs){
		   System.out.println("clipCheck����");
		   String id = (String) hs.getAttribute("id");
		   boolean b = wpr.checkClipping(id, num);
		   if(b)
			   return "do";
		   else
			   return "donot";
	   }
}
