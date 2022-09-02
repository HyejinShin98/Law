package com.br.law.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.law.service.user.TrialUserService;
import com.br.law.vo.Tb_006;
import com.br.law.vo.Tb_007;
import com.br.law.vo.Tb_008;
import com.br.law.vo.Tb_009;
import com.br.law.vo.User;

@Controller
@RequestMapping("/user/*")
public class TrialUserController {

	@Autowired
	private TrialUserService trialMainService;
	
	@RequestMapping("user/login")
	public String login(User user){
		return "user/login";
	}
	
	@RequestMapping("user/loginProcess")
	public String loginProcess(HttpSession session, User param) {
		User user = trialMainService.login(param);
		if(user == null) {
			return"user/login";
		}else {
			session.setAttribute("user", user);
			return "redirect:../user/main";
		}
	}
	
	@RequestMapping("user/exampleProcess")
	public String exampleProcess(HttpSession session, User param) {
		User user = trialMainService.example(param);
		session.setAttribute("user", user);
		return "redirect:../user/main";
	}
	
	
	@RequestMapping("user/main")
	public String main() {
		return"user/main";
	}
	
	@RequestMapping("user/register")
	public String register() {
		return"user/register";
	}
	
	@RequestMapping("applicationRegistration")
	public String applicationRegistration() {	
		return"user/applicationRegistration";
	}
	@RequestMapping("applicationRegistrationProcess")
	public String applicationRegistrationProcess(HttpSession session, User param) {
		 session.setAttribute("user", param);
		 System.out.println(param.getUser_bank());
		return"redirect:../univ";
	}
	
	@RequestMapping("univ")
	public String univ (){
		return"user/univ";
	}
	
	@RequestMapping("univProcess")
	public String univProcess(HttpSession session, Tb_006 param) {
		session.setAttribute("six", param);
		System.out.println("6번 테이블 확인용 " + param.getEdctn_major());
		return"redirect:..user/career";
	}
	
	@RequestMapping("career")
	public String career() {
		return "career";
	}
	
	@RequestMapping("carrerProcess")
	public String careerProcess(HttpSession session, Tb_007 param) {
		session.setAttribute("seven", param);
		return "redirect:..user/license";
	}
	
	@RequestMapping("license")
	public String license() {
		return "user/license";
	}
	
	@RequestMapping("licenseProcess")
	public String licenseProcess(HttpSession session, Tb_008 param){
		session.setAttribute("eight", param);
		return "redirect:../user/fileUpload";
	}
	
	@RequestMapping("fileUpload")
	public String fileUpload() {
		return "user/fileUpload";
	}
	
	
	@RequestMapping("user/fileUploadProcess")
	public String fileUploadProcess(HttpSession session, Tb_009 param) {
		session.setAttribute("nine", param);
		return "redirect:../user/main";
	}
	
	@RequestMapping("user/board")
	public String board() {
		return "user/board";
	}
	
	@RequestMapping("user/myPage")
	public String myPage() {
		return "user/myPage";
	}

}