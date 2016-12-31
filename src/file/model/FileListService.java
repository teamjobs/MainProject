package file.model;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FileListService {
	
	@Autowired
	SqlSessionFactory fac;
	
	@Autowired
	ServletContext application;
	
	
	public boolean checkCompanyLogoData(String co){
		String fileDir = application.getRealPath("/files");
		System.out.println(fileDir);
		File file = new File(fileDir,co+".jpg");
		return file.exists();
	}
	
	
	public List<FileData> getAllCompanyVol(String co){
		SqlSession sql = fac.openSession();
		List<FileData> li = sql.selectList("workfile.getAllCompanyFile",co);
		return li;
	}

	public List<FileData> getSomeCompanyFile(String id){
		SqlSession sql = fac.openSession();
		List<FileData> li = sql.selectList("file.getSomeCompanyFile",id);
		sql.close();
		return li;
	}
	
	public FileData getOneCompanyFile(int num){
		SqlSession sql = fac.openSession();
		FileData fd = (FileData)sql.selectOne("file.getOneCompanyFile", num);
		sql.close();
		return fd;
	}
	
	public List<FileData> getPostWorkFile(int num){
		SqlSession sql = fac.openSession();
		List<FileData> li = sql.selectList("file.getPostWorkFile",num);
		sql.close();
		return li;
	}
	
	public FileData getOneWorkFile(int num){
		SqlSession sql = fac.openSession();
		FileData fd = (FileData)sql.selectOne("file.getOneWorkFile",num);
		sql.close();
		return fd;
	}
	
	//파일 두개 이상일시 최신 파일 다운로드하도록 수정
	public FileData getPostCompanyFile(int num){
		SqlSession sql = fac.openSession();
		FileData fd = (FileData)sql.selectOne("file.getPostCompanyFile",num);
		sql.close();
		return fd;
	}
	
	public boolean isEx(String uuid){
		String fileDir = application.getRealPath("/files");
		System.out.println(fileDir);
		File file = new File(fileDir,uuid);
		return file.exists();
	}
}
