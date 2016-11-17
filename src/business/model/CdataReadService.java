package business.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CdataReadService {
	@Autowired
	SqlSessionFactory fac;
	
	public CompanyData dataRead(String id){
		SqlSession sql = fac.openSession();
		CompanyData cd = null;
		cd = sql.selectOne("business.getCompanyData",id);
		sql.close();
		return cd;
	}
	
	public String getCompanyName(String id){
		SqlSession sql = fac.openSession();
		String co = sql.selectOne("business.getCompanyName",id);
		System.out.println(co);
		sql.close();
		return co;
	}
}
