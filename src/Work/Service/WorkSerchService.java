package Work.Service;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import post.model.PostData;

@Component
public class WorkSerchService {

	@Autowired
	SqlSessionFactory fac;

	// �⺻ �Խù�
	public List WSservice() {
		SqlSession sql = fac.openSession();
		List wlist = sql.selectList("select.getAllSelect");
		sql.close();
		return wlist;
	}

	// �� �˻� �Խù�
	public List<PostData> SelectSerchService(Map<String, String[]> map) {

		SqlSession sql = fac.openSession();

		System.out.println("����" + map);
		
		Set<String> keys = map.keySet();
		for(String key : keys) {
			System.out.println("��" +key);
			
		}
		
		
		List<PostData> sswlist = sql.selectList("select.selectSerch", map);

		System.out.println("����2" + sswlist + "/" + sswlist.size());

		sql.close();

		return sswlist;
	}

	//�� �˻� ����
	public String[] fillArray(String[] ar) {
		if(ar == null || ar.length==0) 
			return new String[]{"",""};
		else if(ar.length==1){
			if(ar[0].equals("��ü")){
				return new String[]{"",""};
			}else{
				return new String[]{ar[0], ""};
			}
		}
		else 
			return ar;
	}

}
