package com.br.law.controller.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.law.service.user.TrialUserService;
import com.br.law.vo.Tb_001;
import com.br.law.vo.Tb_005;

@RestController
@RequestMapping("/user/*")
public class TrialUserRestController {

	private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(TrialUserController.class);
	
	@Autowired
	private TrialUserService trialMainService;
	
	@RequestMapping("chkPassword")
	public Map<String, Object> chkPassword(String user_pw, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		System.out.println("입력한 user_pw : " + user_pw);
		
		Tb_001 sessionUser = (Tb_001)session.getAttribute("user");
		if(sessionUser.getUser_pw().equals(user_pw)) {
			map.put("result", "success");
		} else {
			map.put("result", "fail");
		}
		
		return map;
	}
	
	@RequestMapping("modifyMyInfo")
	public Map<String, Object> modifyMyInfo(Tb_001 user, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			trialMainService.modifyMyInfo(user);
			LOGGER.info("trialMainService modifyMyInfo Success! Tb_001(user) : " + user.toString());
			map.put("result", "success");
		} catch (Exception e) {
			map.put("result", "error");
			map.put("msg", e.getMessage());
			e.printStackTrace();
		}
		
		return map;
	}
	
	@RequestMapping("modifyPasswordProcess")
	public Map<String, Object> modifyPassword(int user_proper_num, String new_pw) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			trialMainService.modifyPassword(user_proper_num, new_pw);
			LOGGER.info("trialMainService modifyPassword Success! user_proper_num : " + user_proper_num + ", new_pw : " + new_pw);
			map.put("result", "success");
			
		} catch (Exception e) {
			map.put("result", "error");
			map.put("msg", e.getMessage());
			LOGGER.error("trialMainService modifyPassword ERROR! Tb_001(user) : " + user_proper_num);
			e.printStackTrace();
		}
		return map;
	}
	
	@RequestMapping("withdrawalProcess")
	public Map<String, Object> withdrawalProcess(HttpSession session, int user_proper_num, String user_pw) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			boolean result = trialMainService.withdrawal(user_proper_num, user_pw);
			
			if(result) {
				map.put("result", "success");
				session.invalidate(); // 세션 초기화
				
				LOGGER.info("trialMainService withdrawalProcess Success! user_proper_num : " + user_proper_num + ", user_pw : " + user_pw);
			} else {
				map.put("result", "fail");
				LOGGER.info("trialMainService withdrawalProcess Fail! user_proper_num : " + user_proper_num + ", user_pw : " + user_pw);
			}
			
			
		} catch (Exception e) {
			map.put("result", "error");
			map.put("msg", e.getMessage());
			LOGGER.error("trialMainService modifyPassword ERROR! Tb_001(user) : " + user_proper_num);
			e.printStackTrace();
		}
		
		
		return map;
	}
	
	@RequestMapping("modifyUserDetail")
	public Map<String, Object> modifyUserDetail(Tb_001 user) {
		//System.out.println("modifyUserDetail ~~~~~~~~~~~~~~~~~~~~~~~~ : " + user);
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			
			if(trialMainService.modifyMyInfo(user) > 0) {
				map.put("result", "success");
				map.put("msg", "저장되었습니다");
			} else {
				
				map.put("result", "fail");
				map.put("msg", "저장에 실패하였습니다.");
			}
			
			
		} catch (Exception e) {
			map.put("result", "error");
			map.put("msg", e.getMessage());
			LOGGER.error("trialMainService modifyUserDetail ERROR! user_proper_num : " + user.getUser_proper_num());
			e.printStackTrace();
		}
		
		return map;
	}
	
	@RequestMapping("modifyTableFive")
	public Map<String, Object> modifyTableFive(Tb_005 param) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			
			if(trialMainService.modifyTableFive(param) > 0) {
				map.put("result", "success");
				map.put("msg", "저장되었습니다");
			} else {
				
				map.put("result", "fail");
				map.put("msg", "저장에 실패하였습니다.");
			}
			
			
		} catch (Exception e) {
			map.put("result", "error");
			map.put("msg", e.getMessage());
			LOGGER.error("trialMainService modifyTableFive ERROR! aplcn_dtls_proper_num : " + param.getAplcn_dtls_proper_num());
			e.printStackTrace();
		}
		
		
		return map;
	}
	
}
