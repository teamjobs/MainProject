package business.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class CdataJoinService {
	
	@Autowired
	SqlSessionFactory fac;
	
	public boolean joinResult(CompanyData newbie){
		SqlSession sql = fac.openSession();
		boolean r = false;
		try{
			int r1 = sql.insert("business.join",newbie);
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
	
	public boolean idCheck(String id){
		SqlSession sql = fac.openSession();
		boolean r = true;
		List list = sql.selectList("member.check", id);
		List list2 = sql.selectList("member.check2", id);
		sql.close();
		if(list.isEmpty() && list2.isEmpty()){
			System.out.println("중복체크?"+r);
			return r;
		}else{
			r = false;
			System.out.println("중복체크?"+r);
			System.out.println(list);
			System.out.println(list2);
			return r;
		}
	}
	
	
}
