package mail.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mail.model.JoinMailAuthService;

@Controller
public class JoinMailController {

	@Autowired
	JavaMailSender sender;
	@Autowired
	JoinMailAuthService mas;
	
	@RequestMapping("/join/mail/{mail:.+}")
	@ResponseBody
	public String sendResolve(@PathVariable String mail){
		System.out.println("gogogo!");
		String uuid = UUID.randomUUID().toString();
		String uid = uuid.substring(0,8);
		boolean b = mas.sendEmail(mail,uid);
		if(b)
			return uid;
		else
			return "n";
	}
	
	@RequestMapping("/join/mailAuth/{uid}")
	public String sendResult(HttpSession hs,String uid){
		hs.setAttribute("mailAuth", uid);
		return "/companyQNA/QnArst.jsp";
	}
	
	@RequestMapping("/join/mail")
	public ModelAndView goMail(){
		ModelAndView mav = new ModelAndView("/business/companymember/joinMailView.jsp");
		return mav;
		
	}
	
	
}
