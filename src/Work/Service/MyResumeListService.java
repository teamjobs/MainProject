package Work.Service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MyResumeListService {

	@Autowired
	SqlSessionFactory fac;
	
	public List MyResumeList(String uploader){
		
		SqlSession sql = fac.openSession();
		
		List mrlist = sql.selectList("file.Myresumelist", uploader);  
		
		sql.close();
		
		return mrlist ;
		
	}
}
