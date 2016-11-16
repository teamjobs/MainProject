package business.controller;

import java.sql.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import business.model.CdataInputService;
import business.model.CdataJoinService;
import business.model.CdataReadService;
import business.model.CompanyData;

@Controller
public class CdataController {
	
	@Autowired
	CdataJoinService cjs;
	
	@Autowired
	CdataReadService crs;
	
	@Autowired
	CdataInputService cis;

	@RequestMapping("/business/join/")
	public String CJoin(){
		return "/companymember/Cjoin.jsp";
	}
	
	@RequestMapping("/business/join/CJoinAuth")
	public String CJoinAuth(String id, String pass, String callnum, String email, String conumber, String name, String boss, String addr){
		CompanyData cd = new CompanyData(id,pass,callnum,email,conumber,name,boss,addr);
		boolean b = cjs.joinResult(cd);
		if(b)
			return "/companymember/joinSuccess.jsp";
		else
			return "/companymember/joinFalse.jsp";
	}
	
	@RequestMapping("/business/join/idcheck/{id}")
	@ResponseBody
	public String CIdCheck(@PathVariable(name="id")String id){
		boolean b = cjs.idCheck(id);
		if(b)
			return "y";
		else
			return "n";
	}
	
	@RequestMapping("/business/my/{id}")
	public ModelAndView goMy(@PathVariable(name="id") String id){
		ModelAndView mav = new ModelAndView("/");
		CompanyData cd = crs.dataRead(id);
		mav.addObject("cd",cd);
		return mav;
	}
	
	@RequestMapping("/business/my/rev/{id}")
	public ModelAndView goMyUp(@PathVariable(name="id") String id){
		ModelAndView mav = new ModelAndView("/companymember/CdataRev.jsp");
		CompanyData cd = crs.dataRead(id);
		mav.addObject("cd",cd);
		return mav;
	}
	
	@RequestMapping("/business/my/rev/passwordcheck/{id}/{pass}")
	@ResponseBody
	public String RpassCheck(@PathVariable(name="id")String id,@PathVariable(name="pass")String pass){
		HashMap<String,String> map = new HashMap();
		map.put("id", id);
		map.put("pass",pass);
		boolean b = cis.passCheck(map);
		if(b)
			return "y";
		else
			return "n";
	}
	

	@RequestMapping("/business/my/revRst")
	public String myUpdate(String id, String callnum, 
							String email, String boss, String addr, String website, String employee_num,String inco,
							String form,String salesaccount,String industry,String introduce){
		CompanyData cd = crs.dataRead(id);
		cd.setData(callnum, email, boss, addr, website, employee_num, inco, form, salesaccount, industry, introduce);
		boolean b = cis.dataIn(cd);
		if(b){
			//return "/companymember/revSuccess.jsp";
			System.out.println("µÊ");
			return "/";
		}else{
			//return "/companymember/revFalse.jsp";
			System.out.println("¸Á");
			return "/";
		}
	}
	
	
}
