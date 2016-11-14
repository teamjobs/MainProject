package post.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import business.model.CompanyData;

@Component
public class CPostReadService {

	@Autowired
	SqlSessionFactory fac;
	
	public PostData readPostData(int num){
		SqlSession sql = fac.openSession();
		PostData pd = null;
		
		pd = sql.selectOne("post.getPostData",num);
		
		sql.close();
		return pd;
	}
}
