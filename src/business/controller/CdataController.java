package business.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import business.model.CdataJoinService;
import business.model.CompanyData;

@Controller
public class CdataController {
	
	@Autowired
	CdataJoinService cjs;

	@RequestMapping("/business/join/")
	public String CJoin(){
		return "/companymember/Cjoin.jsp";
	}
	
	@RequestMapping("/business/join/CJoinAuth")
	public String CJoinAuth(String id, String pass, String callnum, String email, String conumber, String name, String boss){
		CompanyData cd = new CompanyData(id,pass,callnum,email,conumber,name,boss);
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
}
