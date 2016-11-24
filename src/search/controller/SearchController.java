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

	// 4. action���� ���� ��θ� �޴´�.
	@RequestMapping("/searchall")
							// 5. textarea�� ��� ������ name="Message"�� �����ϱ� RequestParam����  �޾ƿ���
							//    ���� �˻�� String ������ �����Ѵ�.
	public ModelAndView searchall(@RequestParam(name="word")String word){
		ModelAndView mav = new ModelAndView("searchall"); // 6. ������ ������ ������ ��(�ַ� body)�� �����. �����Ϳ� �� = ModelAndView.
		// 7. ���� Service(Model)�� ����
		
		// 13. 'Autowired'�� ���񽺸� �ҷ����� �������ִ� list(�����ͺ��̽� ���� ���)�� �޴´�. 
		List<HashMap> list = ss.searchall(word);
		// 14. list ������ ��� ModelAndView�� �����Ѵ�.
		mav.addObject("searchall", list);
		System.out.println(list);
		return mav;
	}

}
