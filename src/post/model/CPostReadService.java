package post.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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
	
	public List<PostData> getTopPostData(){
		SqlSession sql = fac.openSession();
		List<PostData> ar = sql.selectList("post.getTopPost");
		sql.close();
		return ar;
	}
	
	public List<PostData> getCompanyAllPost(String co){
		SqlSession sql = fac.openSession();
		List<PostData> ar = sql.selectList("post.getCompanyAllPost",co);
		sql.close();
		return ar;
	}
	
	public List<PostData> getLatePost(String co){
		SqlSession sql = fac.openSession();
		List<PostData> ar = sql.selectList("post.getLatePost");
		sql.close();
		return ar;
	}
	
	public List<PostData> AllPost(){
		SqlSession sql = fac.openSession();
		List<PostData> list = sql.selectList("post.getAllPost");
		sql.close();
		return list;
	}
	
}
