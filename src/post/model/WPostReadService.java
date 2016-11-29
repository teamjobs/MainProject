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
	
	public List CompanyPost(String co){
		SqlSession sql = fac.openSession();
		List<PostData> list = sql.selectList("post.getCompanyAllPost",co);
		sql.close();
		return list;
	}
	
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

	public boolean checkClipping(String id, int post){
		SqlSession sql = fac.openSession();
		HashMap<String,Object> hs = new HashMap<>();
		hs.put("postnum", post);
		hs.put("id", id);
		System.out.println(hs);
		List<HashMap> rst = sql.selectList("post.postClipCheck",hs);
		if(rst.isEmpty())
			return true;
		else
			return false;
		
	}
	
	public boolean doClipping(PostData pd, String id){
		SqlSession sql = fac.openSession();
		HashMap<String,Object> hs = new HashMap<>();
		hs.put("postnum", pd.getNUM());
		hs.put("id", id);
		hs.put("company", pd.getCOMPANY());
		hs.put("title", pd.getTITLE());
		hs.put("enddate", pd.ENDDATE.toString().substring(0, 10));
		System.out.println(pd.ENDDATE.toString().substring(0, 10));
		System.out.println(hs);
		boolean r = false;
		try{
			int r1 = sql.insert("post.postClipping",hs);
			if(r1 == 1){
				sql.commit();
				r = true;
			}else{
				System.out.println("0!!!");
				sql.rollback();
			}
		}catch(Exception e){
			System.out.println("exception!!!!");
			e.printStackTrace();
			sql.rollback();
		}
		sql.close();
		return r;
	}
	
	public boolean clipOff(String id, int post){
		SqlSession sql = fac.openSession();
		HashMap<String,Object> hs = new HashMap<>();
		hs.put("postnum", post);
		hs.put("id", id);
		boolean r = false;
		try{
			int r1 = sql.delete("post.postClipOff",hs);
			if(r1 == 1){
				sql.commit();
				r = true;
			}else{
				System.out.println("0!!!");
				sql.rollback();
			}
		}catch(Exception e){
			System.out.println("exception!!!!");
			e.printStackTrace();
			sql.rollback();
		}
		sql.close();
		return r;

	}
}
