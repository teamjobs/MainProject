package Work.model;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class My {
	@Autowired
	SqlSessionFactory fac;
	
	public List myAll(String id){
		SqlSession sql = fac.openSession();
		List list = sql.selectList("member.Myworkfile",id);
		sql.close();
		
		return list;
	}
	
	public void cancel(String n){
		SqlSession sql = fac.openSession();
		System.out.println(n);
		System.out.println(sql.delete("post.cancel",n));
		sql.close();
	}
	
	public List clipping(String id){
		SqlSession sql = fac.openSession();
		List list = sql.selectList("member.Myclipping",id);
		sql.close();
		return list;
		
	}
}
