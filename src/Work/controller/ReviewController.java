package Work.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Work.model.ReviewService;
import business.model.CdataReadService;
import business.model.CompanyData;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService rs;
	@Autowired
	CdataReadService crs;
	
	@RequestMapping("/review")
	public String addreview(String company, String type, String employment, String career, String averagescore, String onereview,
							String positive, String negative, String chance, String welfare, String workload, String culture,
							String think, String recomand, String future){
		career = career.substring(0, career.indexOf('³â'));
		HashMap map = new HashMap();
			map.put("company", company);
			map.put("type", type);
			map.put("employment", employment);
			map.put("career", career);
			map.put("averagescore", averagescore);
			map.put("onereview", onereview);
			map.put("positive", positive);
			map.put("negative", negative);
			map.put("welfare", welfare);
			map.put("workload", workload);
			map.put("culture", culture);
			map.put("chance", chance);
			map.put("think", think);
			map.put("recomand", recomand);
			map.put("future", future);
		
		boolean b = rs.addreview(map);
		return "/work/main";
	} 
}
