package Work.model;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.mail.Session;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class ApplyService {

	@Autowired
	SqlSessionFactory fac;
	
	@Autowired
	ServletContext application;
	
	public List Postget(String num){
		SqlSession sql = fac.openSession();
		List list = sql.selectList("post.Postget", num);
		sql.close();
		
		return list;
	}
	
	public int apply(Object company,Object post,Object title,Object file,Object fileuuid, String upload){
		SqlSession sql = fac.openSession();
		
		System.out.println("서비스"+company+"/"+post+"/"+title+"/"+file+"/"+fileuuid+"/"+upload+"/");
		
		HashMap map = new HashMap<>();
		
		
		
		map.put("company", company);
		map.put("post", post);
		map.put("title", title);
		map.put("filename", file);
		map.put("fileuuid", fileuuid);
		map.put("upload", upload);
		
		
		
		System.out.println(map);
		
		int OK = sql.insert("workfile.apply",map);
		sql.close();
		
		return OK;
	}
	
	public String execute(MultipartFile f) {
		System.out.println(f);
		if(f.isEmpty()) {
			return null;
		}
		try {
			String uid = UUID.randomUUID().toString();
			System.out.println(uid.substring(0,23));
			// Application 객체만 있으면.. WAS 의 위치를 얻어내서 그쪽으로
			// 잘 파일을 저장할수 있을꺼 같은데.. 어떻게 확보..
			String fileDir = application.getRealPath("/files");
//			String fileDir = application.getRealPath("/WEB-INF/files");
			String fileName = uid.substring(0,23);
			File dest = new File(fileDir, fileName);
			System.out.println(fileDir);
			f.transferTo(dest);
			return fileName;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void volup(String num){
		SqlSession sql = fac.openSession();
		sql.update("post.volup", num);
		sql.close();
	}
}
