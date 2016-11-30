package review.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserInputService {

	@Autowired
	SqlSessionFactory fac;
	
	public void inputIncome(HashMap map){
		try{
			SqlSession sql = fac.openSession();
			int n = sql.insert("review.income",map);
			sql.close();
			if(n==1)
				System.out.println("income insert complate");
			else
				System.out.println("insert error");
		}catch(Exception e){
			System.out.println("exception!!!!!!");
			e.printStackTrace();
		}
	}
	
	public void inputInterview(HashMap map){
		try{
			SqlSession sql = fac.openSession();
			int n = sql.insert("review.interview",map);
			sql.close();
			if(n==1)
				System.out.println("income insert complate");
			else
				System.out.println("insert error");
		}catch(Exception e){
			System.out.println("exception!!!!!!");
			e.printStackTrace();
		}
	}
	

}
