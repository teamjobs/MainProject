package review.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReviewMainService {
	
	@Autowired
	SqlSessionFactory fac;
	
	public List WELFARE(){
		SqlSession sql = fac.openSession();
		List WELFARE = sql.selectList("review.WELFARE");
		sql.close();
		
		return WELFARE;
	}
	
	public List WORKLOAD(){
		SqlSession sql = fac.openSession();
		List WORKLOAD = sql.selectList("review.WORKLOAD");
		sql.close();
		
		return WORKLOAD;
	}
	
	public List CULTURE(){
		SqlSession sql = fac.openSession();
		List CULTURE = sql.selectList("review.CULTURE");
		sql.close();
		
		return CULTURE;
	}
	
	public List CHANCE(){
		SqlSession sql = fac.openSession();
		List CHANCE = sql.selectList("review.CHANCE");
		sql.close();
		
		return CHANCE;
	}
}
