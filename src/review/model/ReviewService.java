package review.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class ReviewService {
 
	@Autowired
	SqlSessionFactory fac;
	
	public List allreivew(String company){
		SqlSession sql = fac.openSession();
		List list = sql.selectList("select.review", company);
		sql.close();
		
		return list;
	}
}
