package Work.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import Work.model.ApplyService;

@Controller
public class ApplyController {
	@Autowired
	ApplyService as;
	
	
	
	@RequestMapping("/apply/{post}")
	public ModelAndView apply(@PathVariable(name="post")String post){
		ModelAndView mav = new ModelAndView("work/apply.jsp");
		List list = as.Postget(post);
		mav.addObject("t",list.get(0));
		
		
		return mav;
	}
	
	@RequestMapping("/apply/{num}/OK")
	public ModelAndView OK(@RequestParam(name="file")MultipartFile file,@PathVariable(name="num")String num, HttpSession hs,String title){
		
		ModelAndView mav = new ModelAndView();
		System.out.println("ÄÁÆ®·Ñ"+num+"/"+hs);
		
		List list = as.Postget(num);
		HashMap map = (HashMap)list.get(0);
		
			System.out.println(map.get("COMPANY"));
			System.out.println(map.get("TITLE"));
			System.out.println(file);
			System.out.println(map.get("fileuuid"));
		
		System.out.println(map);
		System.out.println(list.size());
		String fileuuid = as.execute(file);
		String upload = (String) hs.getAttribute("id");
		
		as.Newresume(upload, num);
		
		
		int OK = as.apply(map.get("COMPANY"), num, title, file.getOriginalFilename(), fileuuid,upload);
		as.volup(num);
		
		
		if(OK == 1){
			mav.setViewName("/work/applyOK.jsp");
		}else{
			mav.setViewName("/work/ApplyError.jsp");
		}
		
		return mav;
		
	}
		
	
	
}
