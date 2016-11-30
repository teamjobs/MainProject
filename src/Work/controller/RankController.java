package Work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Work.model.RankService;

@Controller
public class RankController {
	@Autowired
	RankService rs;
	
	@RequestMapping("/rank")
	public ModelAndView rank(@RequestParam(defaultValue="���� �� �޿� ��") String option){
		System.out.println(option);
		
		ModelAndView mav = new ModelAndView();
		
		List list =rs.RankSelect(option);
		int size = list.size();
		
		if(option.equals("���� �� �޿� ��")){
			mav.setViewName("work/rank/welfare.jsp");
		}else if(option.equals("���� ��ȸ �� ���ɼ� ��")){
			mav.setViewName("work/rank/RankUp.jsp");
		}else if(option.equals("������ ���� ���� ��")){
			mav.setViewName("work/rank/WorkLoad.jsp");
		}else if(option.equals("�系��ȭ ��")){
			mav.setViewName("work/rank/Culture.jsp");	
		}
		
		
		
		
		System.out.println(list);
		
		mav.addObject("list",list);
		mav.addObject("size",size);
		return mav;
	}
	
}
