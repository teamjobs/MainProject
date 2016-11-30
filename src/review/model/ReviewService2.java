package review.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReviewService2 {
 
	@Autowired
	SqlSessionFactory fac;
	
	public List allreivew(String co){
		SqlSession sql = fac.openSession();
		List list = sql.selectList("review.all", co);
		System.out.println("¸®ºä ¼­ºñ½º"+list);
		sql.close();
		
		return list;
	}
	
	public HashMap avg(String co){
		SqlSession sql = fac.openSession();
		HashMap map = sql.selectOne("review.avg", co);
		System.out.println("¸®ºä Æò±Õ"+map);
		sql.close();
		
		return map;
	}
	
	public void income(){
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap<>();
		
		sql.insert("review.income",map);
		sql.close();
		
	}
	
	public void interview(){
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap<>();
		
		sql.insert("review.interview",map);
		sql.close();
		
	}
}
