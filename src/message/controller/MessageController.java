package message.controller;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import message.service.MessageService;
import search.service.SearchService;

@Controller
public class MessageController {
	@Autowired
	MessageService ms;

	@RequestMapping("/sendMessage")
							// 5. textarea에 담긴 내용이 name="Message"에 있으니까 RequestParam으로  받아오고
							//    받은 검색어를 String 변수에 저장한다.
	@ResponseBody
	public boolean sendmessage(@RequestParam(name="email")String email, @RequestParam(name="subject")String subject, 
										@RequestParam(name="content")String content){
//		ModelAndView mav = new ModelAndView("sendmessage"); // 6. 내용을 보여줄 보여줄 뷰(주로 body)를 만든다. 데이터와 뷰 = ModelAndView.
		
//		boolean b = ms.sendmessage(email, subject, content, 0);
//		mav.addObject("sendmessage", b);
		return ms.sendmessage(email, subject, content);
	}

}
