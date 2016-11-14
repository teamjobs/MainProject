package business.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class CdataJoinService {
	
	@Autowired
	SqlSessionFactory fac;
	
	public boolean joinResult(CompanyData newbie){
		SqlSession sql = fac.openSession();
		boolean r = false;
		try{
			int r1 = sql.insert("business.join",newbie);
			if(r1 == 1){
				sql.commit();
				r = true;
			}else{
				sql.rollback();
			}
		}catch(Exception e){
			sql.rollback();
		}
		sql.close();
		return r;
	}
	
	public boolean idCheck(String id){
		SqlSession sql = fac.openSession();
		boolean r = true;
		CompanyData rst = (CompanyData)sql.selectOne("business.idCheck",id);
		sql.close();
		if(rst == null){
			return r;
		}else{
			r = false;
			return r;
		}
	}
	
	
}
