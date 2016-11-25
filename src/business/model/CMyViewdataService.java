package business.model;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CMyViewdataService {

	@Autowired
	SqlSessionFactory fac;
	
	public HashMap setViewData(String co){
		SqlSession sql = fac.openSession();
		HashMap<String,Object> hm = new HashMap<>();
		
		
		return hm;
	}
}
