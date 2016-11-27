package business.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
		return "/business/companymember/Cjoin.jsp";
	}
	
	@RequestMapping("/business/join/CJoinAuth")
	public ModelAndView CJoinAuth(String id, String pass, String callnum, String email, String conumber, String name, String boss, String addr){
		CompanyData cd = new CompanyData(id,pass,callnum,email,conumber,name,boss,addr);
		boolean b = cjs.joinResult(cd);
		
		ModelAndView mav = new ModelAndView("/business/companymember/joinRst.jsp");
		if(b)
			mav.addObject("cjoinrst",true);
		else
			mav.addObject("cjoinrst",false);
		
		return mav;
			
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
	
	@RequestMapping("/business/my/rev")
	public ModelAndView goMyUp(HttpSession hs){
		ModelAndView mav = new ModelAndView("busMy_tile");
		CompanyData cd = crs.dataRead((String)hs.getAttribute("id"));
		HashMap li = crs.addCotypeList();
		ArrayList<String> cotli = new ArrayList<>();
		cotli.add("제조 통신 화학 건설");
		cotli.add("미디어·광고·문화·예술");
		cotli.add("IT·정보통신");
		cotli.add("서비스·교육·금융·유통");
		mav.addObject("coli",li);
		mav.addObject("cd",cd);
		mav.addObject("cotli",cotli);
		return mav;
	}
	
	@RequestMapping("/business/my/rev/passwordcheck/{id}/{pass}")
	@ResponseBody
	public String RpassCheck(@PathVariable(name="id")String id,@PathVariable(name="pass")String pass){
		HashMap<String,String> map = new HashMap<>();
		map.put("id", id);
		map.put("pass",pass);
		boolean b = cis.passCheck(map);
		if(b)
			return "y";
		else
			return "n";
	}
	

	@RequestMapping("/business/my/rev/rst")
	public String myUpdate(HttpSession hs, String callnum, 
							String email, String boss, String addr, String website, String employee_num,String inco,
							String form,String salesaccount,String ind, String ind2, String introduce){
		System.out.println("들어옴");
		CompanyData cd = crs.dataRead((String)hs.getAttribute("id"));
		String industry = ind+"/"+ind2;
		cd.setData(callnum, email, boss, addr, website, employee_num, inco, form, salesaccount, industry, introduce);
		boolean b = cis.dataIn(cd);
		if(b){
			System.out.println("됨");
			return "/";
		}else{
			System.out.println("망");
			return "/";
		}
	}	
}
