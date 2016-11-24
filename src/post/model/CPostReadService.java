package post.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import file.model.FileData;

@Component
public class CPostReadService {
	@Autowired
	SqlSessionFactory fac;
	
	public PostData readPostData(int num){
		SqlSession sql = fac.openSession();
		PostData pd = null;	
		pd = sql.selectOne("post.getPostData",num);
		sql.close();
		return pd;
	}
	
	public List<PostData> getTopPostData(){
		SqlSession sql = fac.openSession();
		List<PostData> ar = sql.selectList("post.getTopPost");
		sql.close();
		return ar;
	}
	
	public List<PostData> getCompanyAllPost(String co){
		SqlSession sql = fac.openSession();
		List<PostData> ar = sql.selectList("post.getCompanyAllPost",co);
		sql.close();
		return ar;
	}
	
	public List<PostData> getLatePost(String co){
		SqlSession sql = fac.openSession();
		List<PostData> ar = sql.selectList("post.getLatePost");
		sql.close();
		return ar;
	}
	
	public HashMap addList(){
		String[] local = new String[] 
				{ "����","����", "���", "��õ", "����", "����", "����", "�泲", "���", 
				"�λ�", "���", "�泲", "���", "�뱸", "����", "����", "����", "����"};
	      //����
	      String[] job  = new String[] 
	    		  {"��ü","�ܽ�-����","����-�Ǹ�","��ȭ-����-��Ȱ","����-����","�繫��","������",
	            "����-�Ǽ�-���","IT-��ǻ��","����","�����-����ġ-����","�̵��"}; 
	      //���
	      String[] career = new String[] 
	    		  {"��ü","����","1���̻�","2���̻�","3���̻�","4���̻�","5���̻�",
	            "6���̻�","7���̻�","8���̻�","9���̻�","10���̻�"};
	      //�������
	      String[] hiretype = new String[] 
	    		  {"��ü","������","�����","����","�İ���","��������","�Ƹ�����Ʈ",
	            "������/������","���λ����"};
	      //�ڰݿ��
	      String[] education = new String[] 
	    		  {"��ü","����","���б�����","����б�����","���б�����","�л�","�ڻ�","����"};
	      
	      //����
	      String[] rank = new String[] {"����","���","�븮","����","����","����",
	               "����","������","�����濵��"};
	      //�޿�
	      String[] salary = new String[] {"��ü","����","����","�ֱ�","�ϱ�","�ñ�"};

	      HashMap<String,String[]> li = new HashMap<>();
			li.put("local",local);
			li.put("job",job);
			li.put("career",career);
			li.put("hiretype",hiretype);
			li.put("education",education);
			li.put("rank",rank);
			li.put("salary",salary);
			return li;
	}
	
	public int AllPostCount(){
		SqlSession sql = fac.openSession();
		int size = sql.selectOne("post.getAllCount");
		sql.close();
		return size;
	}
	
	public List<FileData> getPostVolList(int post){
		SqlSession sql = fac.openSession();
		List<FileData> fd = sql.selectList("workfile.allpostfile",post);
		sql.close();
		return fd;
	}
	
	
}
