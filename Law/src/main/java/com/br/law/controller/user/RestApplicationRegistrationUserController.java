package com.br.law.controller.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.law.service.user.ApplicationRegistrationService;

@RestController
@RequestMapping("/user/*")
public class RestApplicationRegistrationUserController {

	@Autowired
	ApplicationRegistrationService applicationRegistrationService;
	
	@RequestMapping("registerOverLabCheck")
	public Map<String, Object> registerOverLabCheck(String user_id){
		Map<String, Object> map = new HashMap<>();
	 	
	 	map.put("result", "success");
	 	map.put("count", applicationRegistrationService.registerOverLabCheck(user_id));
	 	
	 	return map;
	}
}
