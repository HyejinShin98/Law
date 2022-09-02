package com.br.law.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.law.service.admin.TrialAdminService;
import com.br.law.vo.Admin;

@Controller
@RequestMapping("/admin/*")
public class TrialAdminController {
	
	
	@Autowired
	private TrialAdminService trialAdminService;
	
	
	@RequestMapping("admin/loginAdmin")
	public String login(Admin admin){
		return "admin/loginAdmin";
	}
	
	@RequestMapping("admin/loginProcess")
	public String loginProcess(HttpSession session, Admin param) {
		Admin admin = trialAdminService.login(param);
		if(admin == null) {
			return"admin/loginAdmin";
		}else {
			session.setAttribute("admin", admin);
			return "redirect:../user/main";
		}
	}
	@RequestMapping("admin/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../admin/loginAdmin";
	}
	
	@RequestMapping("admin/boardAdmin")
	public String boardAdmin() {
		return "admin/boardAdmin";
	}
	
	@RequestMapping("admin/statusAdmin")
	public String statusAdmin() {
		return "admin/statusAdmin";
	}
	
	@RequestMapping("admin/assistantAdmin")
	public String assistantAdmin() {
		return "admin/assistantAdmin";
	}
	
	@RequestMapping("admin/exampleProcess")
	public String exampleProcess(HttpSession session, Admin param) {
		Admin admin = trialAdminService.example(param);
		session.setAttribute("admin", admin);
		return "redirect:../user/main";
	}
}
