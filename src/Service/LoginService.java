package Service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LoginService {

	@Autowired
	SqlSessionFactory fac;



	public boolean loginW(String id, String pass) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);

		List list = sql.selectList("member.loginW", map);

		if (list.size() != 0) {
			return true;
		} else {
			return false;
		}

	}

	public boolean loginC(String id, String pass) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);

		List list = sql.selectList("member.loginC", map);

		if (list.size() != 0) {
			return true;
		} else {
			return false;
		}

	}
}
