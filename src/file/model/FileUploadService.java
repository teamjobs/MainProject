package file.model;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;


@Component
public class FileUploadService {
	
	@Autowired
	ServletContext application;
	@Autowired
	SqlSessionFactory fac;

	public boolean upCompanyDB(FileData fd){
		SqlSession sql = fac.openSession();
		boolean r = false;
		try{
			int r1 = sql.insert("file.companyFileUpload",fd);
			if(r1 == 1){
				sql.commit();
				r = true;
			}else{
				System.out.println("insert½ÇÆÐ!");
				sql.rollback();
			}
		}catch(Exception e){
			System.out.println("exception!");
			e.printStackTrace();
			sql.rollback();
		}
		sql.close();
		return r;
	}
	
	public FileData uploadFile(MultipartFile f){
		if(f.isEmpty())
			return null;
		FileData fd = new FileData(); 
		try{	
			String uid = UUID.randomUUID().toString();
			String fileuid = uid.substring(0,23);
			String fileDir=application.getRealPath("/files");
			String filename = f.getOriginalFilename();
			int filesize = (int)f.getSize();

			File dest = new File(fileDir,fileuid);
			System.out.println(fileDir);
			f.transferTo(dest);
			
			fd.setFILENAME(filename);
			fd.setFILEUUID(fileuid);
			fd.setFILESIZE(filesize);
			return fd;
		
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public FileData uploadLogo(MultipartFile f, String id){
		if(f.isEmpty())
			return null;
		FileData fd = new FileData(); 
		try{	
			String uid = UUID.randomUUID().toString();
			String fileuid = uid.substring(0,23);
			String fileDir=application.getRealPath("/files");
			String filename = id+".jpg";
			int filesize = (int)f.getSize();

			File dest = new File(fileDir,filename);
			System.out.println(fileDir);
			f.transferTo(dest);
			
			fd.setFILENAME(filename);
			fd.setFILEUUID(fileuid);
			fd.setFILESIZE(filesize);
			return fd;
		
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean delfile(int num){
		SqlSession sql = fac.openSession();
		boolean r = false;
		try{
			int r1 = sql.delete("file.updatePostFileDelete",num);
			if(r1 == 1){
				sql.commit();
				r = true;
			}else{
				sql.rollback();
			}
		}catch(Exception e){
			sql.rollback();
		}
		
		sql.close();
		return r;
	}
	
	public boolean upWorkDB(FileData fd){
		SqlSession sql = fac.openSession();
		boolean r = false;
		try{
			int r1 = sql.insert("file.workFileUpload",fd);
			if(r1 == 1){
				sql.commit();
				r = true;
			}else{
				sql.rollback();
			}
		}catch(Exception e){
			sql.rollback();
		}
		sql.close();
		return r;
	}
}
