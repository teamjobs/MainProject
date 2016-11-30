package mail.model;

import java.util.HashMap;
import java.util.UUID;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class JoinMailAuthService {

	@Autowired
	JavaMailSender sender;
	
	@Autowired
	SqlSessionFactory fac;
	
	public boolean sendEmail(String to, String uid){
		try{
			MimeMessage message = sender.createMimeMessage();
			message.setRecipients(RecipientType.TO, to);
			message.setFrom(new InternetAddress("teamjobs1111@gmail.com"));
			message.setSubject("[JOBS]환영합니다!");
			String text = "<h3>어서오세요!</h3>";
			text += "가입 감사합니다.<br/>";
			text += "귀하의 인증번호는 "+uid+"입니다.<br/>";
			text += "환영합니다!";
			message.setText(text,"utf-8","html");
			sender.send(message);
			return true;
			
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	
}
