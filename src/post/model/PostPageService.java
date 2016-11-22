package post.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PostPageService {

	@Autowired
	SqlSessionFactory fac;
	
	public List getRange(int p){
		HashMap map = new HashMap<>();
		int s = (p-1) * 5 + 1;
		int e = p*5;
		map.put("start", s);
		map.put("end", e);
		
		SqlSession sql = fac.openSession();
		List list = sql.selectList("post.getPage", map);
		
		sql.close();
		
		return list;
	}
}
