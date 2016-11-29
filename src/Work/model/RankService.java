package Work.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RankService {

	@Autowired
	SqlSessionFactory fac;
	
	public List all(){
		SqlSession sql = fac.openSession();
		List list = sql.selectList("rank.pay");
		sql.close();
		return list;
	}
}
