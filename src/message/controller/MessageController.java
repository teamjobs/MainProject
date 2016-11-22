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
							// 5. textarea�� ��� ������ name="Message"�� �����ϱ� RequestParam����  �޾ƿ���
							//    ���� �˻�� String ������ �����Ѵ�.
	@ResponseBody
	public boolean sendmessage(@RequestParam(name="email")String email, @RequestParam(name="subject")String subject, 
										@RequestParam(name="content")String content){
//		ModelAndView mav = new ModelAndView("sendmessage"); // 6. ������ ������ ������ ��(�ַ� body)�� �����. �����Ϳ� �� = ModelAndView.
		
//		boolean b = ms.sendmessage(email, subject, content, 0);
//		mav.addObject("sendmessage", b);
		return ms.sendmessage(email, subject, content);
	}

}
