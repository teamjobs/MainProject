package review.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import review.model.InterviewData;

@Component
public class InterviewService {

	@Autowired
	SqlSessionFactory fac;
	
	public HashMap InterviewLevel(String company){
		
		System.out.println("인터서비스"+company);
		
		SqlSession sql = fac.openSession();

		HashMap interLvmap = sql.selectOne("review.InterviewLevel",company);
		
		System.out.println("인터서비스"+"/"+interLvmap);
		sql.close();
		
		return interLvmap;
		
	}
	
public List InterAppraisal(String company){
		
		System.out.println("인터서비스2"+company);
		
		SqlSession sql = fac.openSession();

		List interlist = sql.selectList("review.interAppraisal",company);
		
		System.out.println("인터서비스2"+"/"+interlist);

		sql.close();
		
		return interlist;
		
	}

public List InterPass(String company){
	
	SqlSession sql = fac.openSession();
	
	List passlist = sql.selectList("review.interPass",company);
	
	System.out.println("인터pass="+passlist);
	sql.close();
	
	return passlist;
}
}






















