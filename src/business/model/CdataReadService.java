package business.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

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
		sql.close();
		return co;
	}
	
	public CompanyData getIntrodunction(String com){
		SqlSession sql = fac.openSession();
		CompanyData cd = sql.selectOne("business.getCompanyIntrodunction",com);
		sql.close();
		return cd;
	}
}
