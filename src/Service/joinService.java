package Service;

import java.util.HashMap;
import java.util.List;

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
	
	public boolean check(String id){
		SqlSession sql = fac.openSession();
		
		List list = sql.selectList("member.check", id);
		
		System.out.println(list.toString());
				
		if(list != null){
			return true;
		}else{
			return false;
		}
		
		
	}
}
