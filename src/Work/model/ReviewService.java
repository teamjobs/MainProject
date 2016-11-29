package Work.model;

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
	
	public boolean addreview(HashMap map){
		SqlSession sql = fac.openSession();
		try{
			sql.insert("review.write", map);
			sql.commit();
			sql.close();
			return true;
		} catch(Exception e){
			sql.rollback();
			sql.close();
			e.printStackTrace();
			return false;
		}
	}
}
