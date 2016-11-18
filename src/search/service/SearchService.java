package search.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import post.model.PostData;

@Component
public class SearchService {
	@Autowired
	SqlSessionFactory fac;
	// 8. �����ͺ��̽��� ������ ���� SqlSessionFactory ����� @Autowired
	
	// 9. �����͸� ListŸ������ ���� ��, String���� �޾Ƶ� �˻���(message)�� �Ű������� �޾Ƽ�.
	public List search(String message){
		
		// 10. SqlSession�� ����.
		SqlSession ss = fac.openSession();
		
		// 11. �˻�� ������ ������� �� �������� '%�˻���%' �̷��� �ؾ��ؼ� ���ο� String���� �޴´�.
		String mm = "%"+message+"%";
		
		// 12. ���� ������ Ÿ���� �̹� ����� ������ 'list'�� ��� �����ͺ��̽� ������ '<Ÿ��>' ���ʸ����� �޾� list�� �����.
		//		mapper�� ������ ���̵� �� 'getResult'�� �̿��Ͽ� 'mm'=(�˻��� ���� �����ͺ��̽� ������ ����Ʈ�� ��´�. 
		List<PostData> list = ss.selectList("search.getResult", mm);
		return list;
		
	}
}
