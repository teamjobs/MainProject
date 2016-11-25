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
		System.out.println("������ cd == "+cd);
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
				"������������������ȸ",
				"���ࡤ���衤���ǡ�ī��",
				"ĳ��Ż������",
				"�����á�����������",
				"�Ƿᡤ���ǡ�����",
				"���������С��п�",
				"�н������湮����",
				"ȣ�ڡ����ࡤ�װ�",
				"����������������Ʈ�Ͻ�",
				"���ķᡤ�ܽġ�����������",
				"��ȭ�������롤���Ҹ�",
				"���������",
				"��������ۡ����",
				"�ݼ��͡��ü��������ƿ��ҽ̡���Ÿ",
				"ȸ�衤����������",					
				"�ε��ꡤ�߰����Ӵ�",
				"����A/S",
				"��Ż���Ӵ롤����",
				"��ġ�ߡ��������",
				"��ȥ�������塤����"};
		
		String[] cotype2 = new String[] {
				"SI��SM��CRM��ERP",
				"����������",
				"����Ʈ����ַ�ǡ�ASP",
				"���θ������¸��ϡ��Ҽ�Ŀ�ӽ�",
				"���С���������Ŀ�´�Ƽ",
				"��Ʈ��ũ����ż���",
				"��������",
				"���ӡ��ִϸ��̼�",
				"����ϡ�����",
				"IT������" };
		
		String[] cotype3 = new String[] { 
				"��ۡ��������δ���",
				"�Ź����������μ⡤����",
				"����ȫ��������",
				"��ȭ�����ݡ����",
				"�������������θ�Ʈ",
				"��ȭ������������",
				"�����Ρ�CAD", };
		
		String[] cotype4 = new String[] {
				"���⡤���ڡ�����",
				"�ݵ�ü�����÷��̡�����",
				"��ǻ�͡��ϵ������",
				"��衤��輳��",
				"�ڵ�����������ö�����װ�",
				"�ݼӡ���ᡤ����",
				"���ࡤ�������׸���",
				"�Ǽ����ð����������",
				"ȭ�С���������ȯ��",
				"�������Ƿ����м�",
				"�Ƿᡤ���ࡤ���̿�",
				"��Ȱȭ�С�ȭ��ǰ",
				"��Ȱ��ǰ���Һ��硤��Ÿ",
				"���硤����������",
				"��ǰ����������ꡤ���" };
		
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
