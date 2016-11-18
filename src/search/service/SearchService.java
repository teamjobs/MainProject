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
	// 8. 데이터베이스와 연동을 위해 SqlSessionFactory 만들고 @Autowired
	
	// 9. 데이터를 List타입으로 받을 때, String으로 받아둔 검색어(message)를 매개변수로 받아서.
	public List searchall(String word){
		// 10. SqlSession을 열고.
		SqlSession ss = fac.openSession();
		
		// 11. 검색어를 포함한 내용들이 다 나오려면 '%검색어%' 이렇게 해야해서 새로운 String으로 받는다.
		String searchword = "%"+word+"%";
		
		// 12. 공고 데이터 타입을 이미 만들어 놨으니 'list'에 담긴 데이터베이스 내용을 '<타입>' 제너릭으로 받아 list를 만든다.
		//		mapper에 지정한 아이디 값 'getResult'를 이용하여 'mm'=(검색어 관련 데이터베이스 내용을 리스트에 담는다. 
		List<PostData> list = ss.selectList("search.searchall", searchword);
		ss.close();
		
		return list;
		
	}
	
	public List searchtest(String word){
		SqlSession ss = fac.openSession();
		
		String searchword = "'%'||upper('"+word+"')||'%'";
		
		List<PostData> list = ss.selectList("search.searchtest", searchword);
		
		ss.close();
		return list;
	}
}
