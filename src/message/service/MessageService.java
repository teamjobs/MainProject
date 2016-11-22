package message.service;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MessageService {
	@Autowired
	SqlSessionFactory fac;
	
	public boolean sendmessage(String email, String subject, String content){

		SqlSession ss = fac.openSession();
		
		HashMap map = new HashMap();
		map.put("email", email);
		map.put("subject", subject);
		map.put("content", content);
		System.out.println(email+"/"+subject+"/"+content);
		try{
			ss.insert("message.send", map);
			ss.commit();
			ss.close();
			return true;
		} catch(Exception e){
			e.printStackTrace();
			ss.rollback();
			ss.close();
			return false;
		}
	}
}
