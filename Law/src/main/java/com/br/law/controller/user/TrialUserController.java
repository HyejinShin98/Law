package com.br.law.controller.user;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.law.service.user.TrialUserService;
import com.br.law.vo.Tb_001;

@Controller
@RequestMapping("/user/*")
public class TrialUserController {

	// git test 
	private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(TrialUserController.class);
	
	@Autowired
	private TrialUserService trialMainService;
	
	@RequestMapping("login")
	public String login(Tb_001 user){
		return "user/login";
	}
	
	@RequestMapping("loginProcess")
	public String loginProcess(HttpSession session, Tb_001 param) {
		Tb_001 user = trialMainService.login(param);
		if(user == null) {
			return"user/login";
		}else {
			session.setAttribute("user", user);
			return "redirect:../user/main";
		}
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../user/main";
	}
	
	@RequestMapping("exampleProcess")
	public String exampleProcess(HttpSession session, Tb_001 param) {
		Tb_001 user = trialMainService.example(param);
		session.setAttribute("user", user);
		System.out.println("session" +  session.getAttribute("user"));
		return "redirect:../user/main";
	}
	
	@RequestMapping("board")
	public String board() {
		return "user/board";
	}
	
	@RequestMapping("myPage")
	public String myPage() {
		return "user/myPage";
	}

	/**
	 * 마이페이지
	 **/
	
	@RequestMapping("/identityVerificate")
	public String myInfoCheckPassword(HttpSession session, Model model) {
		try {
			Tb_001 sessionUser = (Tb_001)session.getAttribute("user");
			chkLoginSession(session);
			model.addAttribute("user", sessionUser);
			
		} catch(Exception e) {
			model.addAttribute("errorMsg", getErrMsg(e.getMessage()));
			e.printStackTrace();
		}
		
		return "user/myInfoCheckPassword";
	}
	
	// 마이페이지 - 내정보 관리
	@RequestMapping("/myInfo")
	public String myInfo(HttpSession session, Model model) throws Exception{
		Tb_001 sessionUser = (Tb_001)session.getAttribute("user");
		
		try {
			chkLoginSession(session);
			
			Tb_001 user = trialMainService.getMyInfo(sessionUser.getUser_proper_num());
			model.addAttribute("user", user);
			
		} catch(Exception e) {
			model.addAttribute("errorMsg", getErrMsg(e.getMessage()));
			e.printStackTrace();
		}
		
		return "user/myInfo";
	}
	
	@RequestMapping("/modifyPassword")
	public String modifyPassword(HttpSession session, Model model) {
		try {
			chkLoginSession(session);
			
		} catch(Exception e) {
			model.addAttribute("errorMsg", getErrMsg(e.getMessage()));
			e.printStackTrace();
		}
		
		return "user/modifyPassword";
	}
	
	@RequestMapping("/withdrawal")
	public String withdrawal(HttpSession session, Model model) {
		
		try {
			chkLoginSession(session);
			
		} catch(Exception e) {
			model.addAttribute("errorMsg", getErrMsg(e.getMessage()));
			e.printStackTrace();
		}
		
		return "user/withdrawal";
	}
	
	
	// 마이페이지 - 나의 등재신청 내역
	@RequestMapping("/myApplication")
	public String myApplication(HttpSession session, Model model) {
		Tb_001 sessionUser = (Tb_001)session.getAttribute("user");
		
		try {
			chkLoginSession(session);
			List<Map<String, Object>> list = trialMainService.getMyApplicationList(sessionUser.getUser_proper_num());
			System.out.println("list : " + list);
			model.addAttribute("list", list);
			
		} catch(Exception e) {
			model.addAttribute("errorMsg", getErrMsg(e.getMessage()));
		}
		
		return "user/myApplication";
	}
	
	// TODO: 보류
	// 마이페이지 - 나의 등재신청 내역 이어 작성하기
	@RequestMapping("/myApplicationWrite")
	public String myApplicationWrite(HttpSession session, Model model, int aplcn_dtls_proper_num) {
		
		Tb_001 sessionUser = (Tb_001)session.getAttribute("user");
		model.addAttribute("aplcn_dtls_proper_num", aplcn_dtls_proper_num);

		return "user/myApplicationWrite";
	}
	
	// 마이페이지 - 나의 등재신청 내역 상세보기
	@RequestMapping("/myApplicationDetail")
	public String myApplicationDetail(HttpSession session, Model model, int aplcn_dtls_proper_num) {
		Tb_001 sessionUser = (Tb_001)session.getAttribute("user");
		
		model.addAttribute("aplcn_dtls_proper_num", aplcn_dtls_proper_num);
		return "user/myApplicationDetail";
	}
	
	// 마이페이지 - 나의 활동 내역
	@RequestMapping("/myActive")
	public String myActive(HttpSession session, Model model) {
		Tb_001 sessionUser = (Tb_001)session.getAttribute("user");
		
		try {
			chkLoginSession(session);
			model.addAttribute("user", null);
			
		} catch(Exception e) {
			model.addAttribute("errorMsg", getErrMsg(e.getMessage()));
		}
		
		return "user/myActive";
	}
	
	// 마이페이지 - 나의 중지/해제신청 관리
	@RequestMapping("/myPause")
	public String myPause(HttpSession session, Model model) {
		Tb_001 sessionUser = (Tb_001)session.getAttribute("user");
		
		try {
			chkLoginSession(session);
			model.addAttribute("user", null);
			
		} catch(Exception e) {
			model.addAttribute("errorMsg", getErrMsg(e.getMessage()));
		}
		
		return "user/myPause";
	}
	
	
	
	// Exception 코드에 따른 에러 메세지 출력
	private String getErrMsg(String message) {
		String errMsg = "";
		
		if(message.equals("E1001")) {
			errMsg = "로그인이 필요한 서비스입니다.";
		} else {
			errMsg = message;
		}
		
		System.out.println("error : " + errMsg);
		return errMsg;
	}
	
	
	// 로그인 세션유무 확인하여 에러 발생시키는 메소드
	private void chkLoginSession(HttpSession session) throws Exception {
		Tb_001 user = (Tb_001)session.getAttribute("user");
		if(user == null) {
			throw new Exception("E1001");		// Empty Login User Session  
		}
	}
	
}