package Work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Work.model.RankService;

@Controller
public class RankController {
	@Autowired
	RankService rs;
	
	@RequestMapping("/rank")
	public ModelAndView rank(){
		ModelAndView mav = new ModelAndView("work/rank/rank.jsp");
		List list =rs.all();
		mav.addObject("list",list);
		return mav;
	}
	
}
