package file.view;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import file.model.FileData;

@Component(value="dlv")
public class FileDownloadView extends AbstractView{
	
	@Autowired
	ServletContext application;
	
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest req,
			HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		FileData fi = (FileData)model.get("file");
		String uid = fi.getFILEUUID();
		String filename = fi.getFILENAME();
		String kname = new String(filename.getBytes("utf-8"),"iso-8859-1");
		System.out.println(uid+"/"+kname);
		resp.setHeader("Content-Disposition", "attatchment;filename=\""+kname+"\"");
		try{
			String fileDir = application.getRealPath("/files");
			File file = new File(fileDir,uid);
			System.out.println(file.exists());
			InputStream fis = new FileInputStream(file);
			ServletOutputStream fos = resp.getOutputStream();
			
			FileCopyUtils.copy(fis, fos);

		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
