package post.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class WPostReadService {

	@Autowired
	SqlSessionFactory fac;
	
	public List AllPost(){
		SqlSession sql = fac.openSession();
		List<HashMap> list = sql.selectList("post.getAllPost");
		System.out.println(list.size());
		sql.close();
		return list;
	}
	
	public PostData readPostData(int num){
		SqlSession sql = fac.openSession();
		PostData pd = null;	
		pd = sql.selectOne("post.getPostData",num);
		sql.close();
		return pd;
	}
	
	public List readTopPost(){
		SqlSession sql = fac.openSession();
		PostData pd = null;
		List<PostData> list = sql.selectList("post.getTopPost");
		sql.close();
		return list;
	}
}
