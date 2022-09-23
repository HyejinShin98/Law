package com.br.law.controller.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.br.law.service.user.ApplicationRegistrationService;
import com.br.law.vo.Tb_001;

@RestController
@RequestMapping("/user/*")
public class RestApplicationRegistrationUserController {

	@Autowired
	ApplicationRegistrationService applicationRegistrationService;
	//
	@RequestMapping("registerOverLabCheck")
	public HashMap<String, Object> registerOverLabCheck(@RequestParam("user_id")String user_id){
		System.out.println("aaa" +  user_id);
		HashMap<String, Object> map = new HashMap<String, Object>();
	 	//true = 아이디존재, false = 중복아이디 없음
	 	map.put("count", applicationRegistrationService.registerOverLabCheck(user_id));
	 	
	 	return map;
	}
	
	@RequestMapping("isLogin")
	public Map<String, Object> isLogin(HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		if(session.getAttribute("user") != null) {
			map.put("data", true);
		}else {
			map.put("data", false);
		}
		
		map.put("result", "success");
		System.out.println("he" + map);
		return map;
	}
	

}
