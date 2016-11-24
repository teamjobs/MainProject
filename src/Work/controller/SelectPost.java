package Work.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import post.model.PostData;


@Controller
public class SelectPost {


	//Post 카테고리
	@RequestMapping("/work/post")
	public ModelAndView InputData() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/work/SelectView/SelectPost.jsp");
		//지역, 직무, 경력사항,고용형태,업무내용,자격요건,채용절차,직급,급여,
		
		//지역
		String[] local = new String[] { "전체","서울", "경기", "인천", "강원", "대전", "세종", "충남", "충북", "부산", "울산", "경남", "경북", "대구",
				"광주", "전남", "전북", "제주"};
		//직무
		String[] job  = new String[] {"전체","외식-음료","유통-판매","문화-여가-생활","교육-강사","사무직","디자인",
				"생산-건설-운송","IT-컴퓨터","서비스","고객상담-리서치-영업","미디어"}; 
		//경력
		String[] career = new String[] {"전체","신입","1년이상","2년이상","3년이상","4년이상","5년이상",
				"6년이상","7년이상","8년이상","9년이상","10년이상"};
		//고용형태
		String[] hiretype = new String[] {"전체","정규직","계약직","인턴","파견직","프리랜서","아르바이트",
				"연수생/교육생","개인사업자"};
		//자격요건
		String[] education = new String[] {"전체","무관","중학교졸업","고등학교졸업","대학교중퇴","학사","박사","석사"};
		
		//직급
		String[] rank = new String[] {"전체","인턴","사원","대리","과장","부장","차장",
					"팀장","본부장","전문경영인"};
		//급여
		String[] salary = new String[] {"전체","연봉","월급","주급","일급","시급"};
		
		
		mav.addObject("local", local);
		mav.addObject("job",job);
		mav.addObject("career",career);
		mav.addObject("hiretype",hiretype);
		mav.addObject("education",education);
		mav.addObject("rank",rank);
		mav.addObject("salary",salary);

		return mav;
	}
	
}




















