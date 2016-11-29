package review.service;

import java.util.HashMap;
import java.util.List;

import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
public class IncomeService {

	@Autowired
	SqlSessionFactory fac;
	
	
	
	public HashMap IncomeService(String company){
		
		System.out.println("서비스"+company);
		
		SqlSession sql = fac.openSession();

		HashMap icmap = sql.selectOne("review.Income",company);
		
		System.out.println("서비스"+"/"+icmap);
		sql.close();
		
		return icmap;
	}
	
	
}
