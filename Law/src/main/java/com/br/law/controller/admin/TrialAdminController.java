package com.br.law.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.law.service.admin.TrialAdminService;
import com.br.law.vo.Tb_015;

@Controller
@RequestMapping("/admin/*")
public class TrialAdminController {
	
	
	@Autowired
	private TrialAdminService trialAdminService;
	
	
	@RequestMapping("loginAdmin")
	public String login(){
		return "admin/loginAdmin";
	}
	
	@RequestMapping("loginProcess")
	public String loginProcess(HttpSession session, Tb_015 param) {
		Tb_015 admin = trialAdminService.login(param);
		if(admin == null) {
			return"admin/loginAdmin";
		}else {
			session.setAttribute("admin", admin);
			return "redirect:../user/main";
		}
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../admin/loginAdmin";
	}
	
	@RequestMapping("boardAdmin")
	public String boardAdmin() {
		return "admin/boardAdmin";
	}
	
	@RequestMapping("statusAdmin")
	public String statusAdmin() {
		return "admin/statusAdmin";
	}
	
	@RequestMapping("assistantAdmin")
	public String assistantAdmin() {
		return "admin/assistantAdmin";
	}
	
	@RequestMapping("exampleProcess")
	public String exampleProcess(HttpSession session, Tb_015 param) {
		Tb_015 admin = trialAdminService.example(param);
		session.setAttribute("admin", admin);
		System.out.println("session" + session.getAttribute("admin"));
		return "redirect:../user/main";
	}
}
