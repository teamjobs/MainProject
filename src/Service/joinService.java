package Service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class joinService {

	@Autowired
	SqlSessionFactory fac;
	
	public void join(HashMap map){
		SqlSession sql = fac.openSession();
		sql.insert("member.join",map);
		
	}
}
