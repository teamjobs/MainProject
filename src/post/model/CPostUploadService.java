package post.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CPostUploadService {

	@Autowired
	SqlSessionFactory fac;
	
	public boolean uploadPost(PostData pd){
		SqlSession sql = fac.openSession();
		boolean r = false;
		try{
			int r1 = sql.insert("post.postUpload",pd);
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
	
	public boolean updatePost(PostData pd){
		boolean b = false;
		SqlSession sql = fac.openSession();
		try{
			int r = sql.update("post.postDataUpdate", pd);
			if(r == 1){
				sql.commit();
				b = true;
				System.out.println("DB 결과=="+b);
			}else{
				System.out.println("DB 결과=="+b);
				sql.rollback();
			}
		}catch(Exception e){
			System.out.println("DB수정중 EXCEPTION!!!!!!!!!!");
			e.printStackTrace();
			sql.rollback();
		}
		sql.close();
		return b;
	}
	
}
