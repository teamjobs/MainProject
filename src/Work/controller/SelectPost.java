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


	//Post ī�װ�
	@RequestMapping("/work/post")
	public ModelAndView InputData() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/work/SelectView/SelectPost.jsp");
		//����, ����, ��»���,�������,��������,�ڰݿ��,ä������,����,�޿�,
		
		//����
		String[] local = new String[] { "��ü","����", "���", "��õ", "����", "����", "����", "�泲", "���", "�λ�", "���", "�泲", "���", "�뱸",
				"����", "����", "����", "����"};
		//����
		String[] job  = new String[] {"��ü","�ܽ�-����","����-�Ǹ�","��ȭ-����-��Ȱ","����-����","�繫��","������",
				"����-�Ǽ�-���","IT-��ǻ��","����","�����-����ġ-����","�̵��"}; 
		//���
		String[] career = new String[] {"��ü","����","1���̻�","2���̻�","3���̻�","4���̻�","5���̻�",
				"6���̻�","7���̻�","8���̻�","9���̻�","10���̻�"};
		//�������
		String[] hiretype = new String[] {"��ü","������","�����","����","�İ���","��������","�Ƹ�����Ʈ",
				"������/������","���λ����"};
		//�ڰݿ��
		String[] education = new String[] {"��ü","����","���б�����","����б�����","���б�����","�л�","�ڻ�","����"};
		
		//����
		String[] rank = new String[] {"��ü","����","���","�븮","����","����","����",
					"����","������","�����濵��"};
		//�޿�
		String[] salary = new String[] {"��ü","����","����","�ֱ�","�ϱ�","�ñ�"};
		
		
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




















