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
		if(option.equals("���� �� �޿� ��")){
			 ranklist = sql.selectList("rank.welfare");
		}else if(option.equals("���� ��ȸ �� ���ɼ� ��")){
			 ranklist = sql.selectList("rank.rankUp");	
		}else if(option.equals("������ ���� ���� ��")){
			 ranklist = sql.selectList("rank.workLoad");	
		}else if(option.equals("�系��ȭ ��")){
			ranklist = sql.selectList("rank.culture");	
		}
					
		sql.close();
		
		return ranklist ;
	}
}
