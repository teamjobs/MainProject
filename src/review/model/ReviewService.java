package review.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReviewService {
 
	@Autowired
	SqlSessionFactory fac;
	
	public List allreivew(String co){
		SqlSession sql = fac.openSession();
		List list = sql.selectList("review.all", co);
		sql.close();
		
		return list;
	}
	
	public HashMap avg(String co){
		SqlSession sql = fac.openSession();
		HashMap map = sql.selectOne("review.avg", co);
		sql.close();
		
		return map;
	}
}
