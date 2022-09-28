package com.br.law.controller.member;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.law.service.member.FaqServiceImpl;
import com.br.law.vo.Tb_004;

@Controller
@RequestMapping("/member/*")
public class FaqController {
	
	@Autowired
	private FaqServiceImpl faqService;
	
	@RequestMapping("faqPage")
	public String faqPage(Model model) {
		//System.out.println("0907 faqPage 테스트!");
		
		ArrayList<Tb_004> dataList = faqService.getFaqDataList();
		model.addAttribute("dataList", dataList);
		
		
		for(Tb_004 tb_004 : dataList) {
			System.out.println("tb_004 : " + tb_004.getFaq_proper_num());
		}
		
		return "member/faqPage";
	}
	
	@RequestMapping("writeFaqPage")
	public String writeFaqPage() {
		//System.out.println("faq 글쓰기 페이지 테스트");
		return "member/writeFaqPage";
	}
	
	@RequestMapping("writeFaqProcess")
	public String writeFaqProcess(Tb_004 param , HttpSession session) {
		
		faqService.writeFaq(param);
		
		return "redirect:./faqPage";
	}
	
	@RequestMapping("deleteContentProcess")
	public String deleteContentProcess(int faq_proper_num) {
		
		faqService.deleteContent(faq_proper_num);
		
		return "redirect:./faqPage";
	}
	
	@RequestMapping("updateContentPage")
	public String updateContentPage(Tb_004 param) {
		faqService.updateContent(param);
		return "redirect:./faqPage";
	}

}