package Work.Service;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MyResumeRDService {

	@Autowired
	SqlSessionFactory fac;
	
//	public void ReviseService(String num){
//		SqlSession sql = fac.openSession();
//		sql.update(statement);
//		sql.close();
//		
//	}
	
	
	public void DeleteService(String num){
		SqlSession sql = fac.openSession();
		sql.delete("file.MyresumeDelete",num);
		sql.close();
		
	}
}
