package Work.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import post.model.PostData;
import Work.Service.WorkSerchService;

@Controller
public class WorkSerchController {

	@Autowired
	WorkSerchService ws;

	// 기본 게시물
	@RequestMapping("/work/post/serch")
	public ModelAndView WorkSerch() {

		ModelAndView mav = new ModelAndView("defultSearch");

		List wlist = ws.WSservice();

		mav.addObject("wlist", wlist);
		return mav;

	}
	// Post를 입력받는곳
	@RequestMapping("/work/post/selectserch")
	public ModelAndView WorkSelectSerch(HttpServletRequest req) {
		
		String[] keys= {  "local", "job", "career", "hiretype", "education", "rank", "salary" };
		HashMap<String, String[]> map = new HashMap<>();

		for(int i =0; i<keys.length; i++ ) {
			String[] ar = req.getParameterValues(keys[i]);
			map.put(keys[i], ws.fillArray(ar));
		}
		

		System.out.println("컨트롤2" + map.toString());

		ModelAndView mav = new ModelAndView("work/SelectView/SelectSerchView.jsp");

		List<PostData> sslist = ws.SelectSerchService(map);

		mav.addObject("sslist", sslist);

		System.out.println("컨트롤 리스트" + sslist.size());
		System.out.println("컨트롤3" + map);

		return mav;

	}

}
