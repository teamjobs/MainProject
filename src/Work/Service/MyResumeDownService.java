package Work.Service;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import Work.model.ResumeData;

@Component
public class MyResumeDownService {

	@Autowired
	SqlSessionFactory fac;
	
	
	public ResumeData ResumeDwService(String fileuuid){
		
		SqlSession sql = fac.openSession();
		
		System.out.println("서비스"+fileuuid);
		
		ResumeData fld = sql.selectOne("file.MyresumeDown", fileuuid);
		System.out.println("서비스3"+ fld);
		sql.close();
		
		return fld;
	}
	
}
