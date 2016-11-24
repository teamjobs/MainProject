package search.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import post.model.PostData;
import search.service.SearchService;

@Controller
public class SearchController {
	@Autowired
	SearchService ss;

	// 4. action에서 보낸 경로를 받는다.
	@RequestMapping("/searchall")
							// 5. textarea에 담긴 내용이 name="Message"에 있으니까 RequestParam으로  받아오고
							//    받은 검색어를 String 변수에 저장한다.
	public ModelAndView searchall(@RequestParam(name="word")String word){
		ModelAndView mav = new ModelAndView("searchall"); // 6. 내용을 보여줄 보여줄 뷰(주로 body)를 만든다. 데이터와 뷰 = ModelAndView.
		// 7. 이제 Service(Model)로 가서
		
		// 13. 'Autowired'로 서비스를 불러내서 리턴해주는 list(데이터베이스 내용 담김)를 받는다. 
		List<HashMap> list = ss.searchall(word);
		// 14. list 내용을 담아 ModelAndView를 리턴한다.
		mav.addObject("searchall", list);
		System.out.println(list);
		return mav;
	}

}
