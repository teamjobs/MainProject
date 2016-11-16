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
		List list2 = sql.selectList("member.check2", id);
		System.out.println(list2.toString());
		System.out.println(list.toString());
				
		if(list.size() == 0 && list2.size() == 0){
			return true;
		}else{
			return false;
		}
		
		
	}
}
