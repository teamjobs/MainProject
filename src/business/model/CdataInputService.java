package business.model;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CdataInputService {
	@Autowired
	SqlSessionFactory fac;
	
	public boolean dataIn(CompanyData cd){
		boolean b = false;
		SqlSession sql = fac.openSession();
		try{
			int r = sql.update("business.dataUp", cd);
			if(r == 1){
				sql.commit();
				b = true;
			}else{
				System.out.println("000000000!!!");
				sql.rollback();
			}
		}catch(Exception e){
			System.out.println("exception!!!");
			e.printStackTrace();
			sql.rollback();
		}
		sql.close();
		return b;
	}

	public boolean passCheck(HashMap map){
		SqlSession sql = fac.openSession();
		boolean r = true;
		CompanyData rst = (CompanyData)sql.selectOne("business.passCheck",map);
		sql.close();
		System.out.println(rst);
		if(rst != null){
			return r;
		}else{
			r = false;
			return r;
		}
	}
}

