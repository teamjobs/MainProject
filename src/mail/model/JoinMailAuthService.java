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
			message.setSubject("[JOBS]ȯ���մϴ�!");
			String text = "<h3>�������!</h3>";
			text += "���� �����մϴ�.<br/>";
			text += "������ ������ȣ�� "+uid+"�Դϴ�.<br/>";
			text += "ȯ���մϴ�!";
			message.setText(text,"utf-8","html");
			sender.send(message);
			return true;
			
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	
}
