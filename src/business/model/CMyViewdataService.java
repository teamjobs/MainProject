package business.model;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import post.model.CPostReadService;
import post.model.PostData;

@Component
public class CMyViewdataService {

	@Autowired
	SqlSessionFactory fac;
	@Autowired
	CPostReadService cps;
	
	public HashMap setViewData(String co){
		SqlSession sql = fac.openSession();
		HashMap<String,Object> hm = new HashMap<>();
		System.out.println(co);
		int postnumber = sql.selectOne("business.getCompanyNewPost",co);
		PostData pd = cps.readPostData(postnumber);
		int views = sql.selectOne("business.getCompanyPosthits",postnumber);
		int workers = sql.selectOne("business.getCompanyPostVol",postnumber);
		int clips = sql.selectOne("business.getCompanyPostClip",postnumber);
		hm.put("views", views);
		hm.put("workers", workers);
		hm.put("clips", clips);
		hm.put("viewpd",pd);
		return hm;
	}
}
