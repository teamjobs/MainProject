package search.controller;

import java.util.List;
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
	@RequestMapping("/search")
							// 5. textarea�� ��� ������ name="Message"�� �����ϱ� RequestParam����  �޾ƿ���
							//    ���� �˻�� String ������ �����Ѵ�.
	public ModelAndView search(@RequestParam(name="Message")String message){
		ModelAndView mav = new ModelAndView("search"); // 6. ������ ������ ������ ��(�ַ� body)�� �����. �����Ϳ� �� = ModelAndView.
		// 7. ���� Service(Model)�� ����
		
		// 13. 'Autowired'�� ���񽺸� �ҷ����� �������ִ� list(�����ͺ��̽� ���� ���)�� �޴´�. 
		List<PostData> list = ss.search(message);
		
		// 14. list ������ ��� ModelAndView�� �����Ѵ�.
		mav.addObject("search", list);
		return mav;
	}
}
