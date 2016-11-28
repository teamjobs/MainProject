package qna.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import post.model.PostData;

@Component
public class QnAUploadService {
	@Autowired
	SqlSessionFactory fac;
	
	public boolean upQuestion(QnAData qd){
		SqlSession sql = fac.openSession();
		boolean r = false;
		try{
			int r1 = sql.insert("qna.question",qd);
			if(r1 == 1){
				sql.commit();
				r = true;
				System.out.println("DB 결과=="+r);
			}else{
				sql.rollback();
				System.out.println("DB 결과=="+r);
			}
		}catch(Exception e){
			System.out.println("DB수정중 EXCEPTION!!!!!!!!!!");
			e.printStackTrace();
			sql.rollback();
		}
		sql.close();
		return r;
	}
	
	public boolean upAnswer(QnAData qd){
		boolean b = false;
		SqlSession sql = fac.openSession();
		try{
			int r = sql.update("qna.answer", qd);
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