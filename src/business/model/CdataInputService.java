package business.model;

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
				sql.rollback();
			}
		}catch(Exception e){
			sql.rollback();
		}
		sql.close();
		return b;
	}

}

