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
				{ "전국","서울", "경기", "인천", "강원", "대전", "세종", "충남", "충북", 
				"부산", "울산", "경남", "경북", "대구", "광주", "전남", "전북", "제주"};
	      //직무
	      String[] job  = new String[] 
	    		  {"전체","외식-음료","유통-판매","문화-여가-생활","교육-강사","사무직","디자인",
	            "생산-건설-운송","IT-컴퓨터","서비스","고객상담-리서치-영업","미디어"}; 
	      //경력
	      String[] career = new String[] 
	    		  {"전체","신입","1년이상","2년이상","3년이상","4년이상","5년이상",
	            "6년이상","7년이상","8년이상","9년이상","10년이상"};
	      //고용형태
	      String[] hiretype = new String[] 
	    		  {"전체","정규직","계약직","인턴","파견직","프리랜서","아르바이트",
	            "연수생/교육생","개인사업자"};
	      //자격요건
	      String[] education = new String[] 
	    		  {"전체","무관","중학교졸업","고등학교졸업","대학교중퇴","학사","박사","석사"};
	      
	      //직급
	      String[] rank = new String[] {"인턴","사원","대리","과장","부장","차장",
	               "팀장","본부장","전문경영인"};
	      //급여
	      String[] salary = new String[] {"전체","연봉","월급","주급","일급","시급"};

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
