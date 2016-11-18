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
		List<FileData> li = sql.selectList("getPostWorkFile",num);
		sql.close();
		return li;
	}
	
	public FileData getOneWorkFile(int num){
		SqlSession sql = fac.openSession();
		FileData fd = (FileData)sql.selectOne("getOneWorkFile",num);
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
