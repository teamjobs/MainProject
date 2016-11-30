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
	
	public List RankSelect(String option){
		SqlSession sql = fac.openSession();

		System.out.println(option);
		List ranklist = null;
		if(option.equals("복지 및 급여 순")){
			 ranklist = sql.selectList("rank.welfare");
		}else if(option.equals("승진 기회 및 가능성 순")){
			 ranklist = sql.selectList("rank.rankUp");	
		}else if(option.equals("업무와 삶의 균형 순")){
			 ranklist = sql.selectList("rank.workLoad");	
		}else if(option.equals("사내문화 순")){
			ranklist = sql.selectList("rank.culture");	
		}
					
		sql.close();
		
		return ranklist ;
	}
}
