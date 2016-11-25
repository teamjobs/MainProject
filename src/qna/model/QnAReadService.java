package qna.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import business.model.CdataReadService;

@Component
public class QnAReadService {
	@Autowired
	SqlSessionFactory fac;
	@Autowired
	CdataReadService crs;
	
	public QnAData readQnAData(int num){
		SqlSession sql = fac.openSession();
		QnAData pd = null;	
		pd = sql.selectOne("qna.getOneQnA",num);
		sql.close();
		return pd;
	}
	
	public List<QnAData> getCompanyQnA(String co){
		SqlSession sql = fac.openSession();
		List<QnAData> ar = sql.selectList("qna.getCompanyQnA",co);
		sql.close();
		return ar;
	}
	
	public List<QnAData> getWorkQnA(String id){
		SqlSession sql = fac.openSession();
		List<QnAData> ar = sql.selectList("qna.getWorkQnA",id);
		sql.close();
		return ar;
	}
	
}
