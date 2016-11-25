package business.model;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class CdataReadService {
	@Autowired
	SqlSessionFactory fac;
	
	public CompanyData dataRead(String id){
		System.out.println("DB+"+id);
		SqlSession sql = fac.openSession();
		CompanyData cd = sql.selectOne("business.getCompanyData",id);
		System.out.println("가져온 cd == "+cd);
		sql.close();
		return cd;
	}
	
	public String getCompanyName(String id){
		SqlSession sql = fac.openSession();
		String co = sql.selectOne("business.getCompanyName",id);
		sql.close();
		return co;
	}
	
	public String getCompanyId(String co){
		SqlSession sql = fac.openSession();
		String id = sql.selectOne("business.getCompanyId",co);
		sql.close();
		return id;
	}
	
	public CompanyData getIntrodunction(String com){
		SqlSession sql = fac.openSession();
		CompanyData cd = sql.selectOne("business.getCompanyIntrodunction",com);
		sql.close();
		return cd;
	}
	
	public HashMap addCotypeList(){
		String[] cotype1 = new String[] {
				"공기업·공공기관·협회",
				"은행·보험·증권·카드",
				"캐피탈·대출",
				"컨설팅·연구·조사",
				"의료·보건·복지",
				"교육·유학·학원",
				"학습지·방문교육",
				"호텔·여행·항공",
				"스포츠·여가·휘트니스",
				"음식료·외식·프랜차이즈",
				"백화점·유통·도소매",
				"무역·상사",
				"물류·운송·배송",
				"콜센터·시설관리·아웃소싱·기타",
				"회계·세무·법무",					
				"부동산·중개·임대",
				"정비·A/S",
				"렌탈·임대·리스",
				"서치펌·헤드헌팅",
				"결혼·예식장·상조"};
		
		String[] cotype2 = new String[] {
				"SI·SM·CRM·ERP",
				"웹에이전시",
				"소프트웨어·솔루션·ASP",
				"쇼핑몰·오픈마켓·소셜커머스",
				"포털·컨텐츠·커뮤니티",
				"네트워크·통신서비스",
				"정보보안",
				"게임·애니메이션",
				"모바일·무선",
				"IT컨설팅" };
		
		String[] cotype3 = new String[] { 
				"방송·영상·프로덕션",
				"신문·잡지·인쇄·출판",
				"광고·홍보·전시",
				"영화·음반·배급",
				"연예·엔터테인먼트",
				"문화·공연·예술",
				"디자인·CAD", };
		
		String[] cotype4 = new String[] {
				"전기·전자·제어",
				"반도체·디스플레이·광학",
				"컴퓨터·하드웨어·장비",
				"기계·기계설비",
				"자동차·조선·철강·항공",
				"금속·재료·자재",
				"건축·설비·인테리어",
				"건설·시공·토목·조경",
				"화학·에너지·환경",
				"섬유·의류·패션",
				"의료·제약·바이오",
				"생활화학·화장품",
				"생활용품·소비재·기타",
				"목재·제지·가구",
				"식품가공·농축산·어업" };
		
	      HashMap<String,String> li = new HashMap<>();
	      	ObjectMapper om = new ObjectMapper();
			try {
				li.put("cotype1", om.writeValueAsString(cotype1));
				li.put("cotype2", om.writeValueAsString(cotype2));
				li.put("cotype3",om.writeValueAsString(cotype3));
				li.put("cotype4",om.writeValueAsString(cotype4));
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			return li;
	}
}
