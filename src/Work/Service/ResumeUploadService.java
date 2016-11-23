package Work.Service;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import Work.model.ResumeData;

@Component
public class ResumeUploadService {

	@Autowired
	 ServletContext appilcation;
	
	@Autowired
	SqlSessionFactory fac;
	
	
	//���� �ϵ忡 ������ �ϴ°�.
	public ResumeData ResumeUploadSV(MultipartFile file){
		if(file.isEmpty()){
			return null;
		}
		
		ResumeData rd = new ResumeData();
		try{
			String uid = UUID.randomUUID().toString();
			System.out.println(uid.substring(0,23));
			String fileDir = appilcation.getRealPath("/files");
			String fileuid = uid.substring(0,23);	
			String filename = file.getOriginalFilename();
			int filesize = (int) file.getSize();
			System.out.println(fileDir);
			
			File dest = new File(fileDir,fileuid);
			file.transferTo(dest);
			
			rd.setFILENAME(filename);
			rd.setFILESIZE(filesize);
			rd.setFILEUUID(fileuid);
			System.out.println("����"+filename+"/"+filesize+"/"+fileuid);
			
			return rd;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	
	public boolean ResumeUpDB(ResumeData rd){
		SqlSession sql = fac.openSession();
		boolean b = false;
		try {
			int rst = sql.insert("file.resumeFileUpload", rd);
			if(rst == 1){
			 b = true;	
			 System.out.println("����");
			}else{
			 b = false;	
			System.out.println("����");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("�ͼ���");
		}

		sql.close();
		return b;
		
	}
}
