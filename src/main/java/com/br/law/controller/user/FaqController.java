package com.br.law.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/*")
public class FaqController {

	@RequestMapping("faq")
	public String faqPage(Model model) {
		//System.out.println("faq 컨트롤러 테스트");
		return "user/faq";
	}

}
