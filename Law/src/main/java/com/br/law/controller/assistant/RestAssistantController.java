package com.br.law.controller.assistant;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.law.service.assistant.AssistantServiceImpl;
import com.br.law.vo.Tb_009;

@RestController
@RequestMapping("/admin/*")
public class RestAssistantController {
	
	@Autowired
	private AssistantServiceImpl assistantServiceImpl;
	
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(RestAssistantController.class);

	
	@RequestMapping("userInfoTable")
	public Map<String, Object> ApplicantDetail(int aplcn_dtls_proper_num) {				
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("aplcn_dtls_proper_num", aplcn_dtls_proper_num);
		System.out.println("레스트 map" + map);
		
		Map<String, Object> userInfo = assistantServiceImpl.applicantInformation(aplcn_dtls_proper_num);
		map.put("userInfo", userInfo);
		
//		Map<String, Object> certificateList = assistantServiceImpl.certificateList(aplcn_dtls_proper_num);
//		map.put("certificateList", certificateList);
//		
//		List<Map<String, Object>> uploadfile = assistantServiceImpl.uploadfile(aplcn_dtls_proper_num);
//		map.put("uploadfile", uploadfile);
//		
		map.put("result", "success");
		
		return map;
	}
	
	@RequestMapping("certificateList")
	public List<Map<String, Object>> certificateList(int aplcn_dtls_proper_num){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> certificate = assistantServiceImpl.certificateList(aplcn_dtls_proper_num);
		map.put("map", certificate);
		
		System.out.println(map);
		return certificate;
	}
	
	
	@RequestMapping("uploadfile")
	public List<Map<String, Object>> uploadfiles(int aplcn_dtls_proper_num){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> files = assistantServiceImpl.uploadfile(aplcn_dtls_proper_num);
		
		map.put("map", files);
		
		System.out.println(map);
		
		return files;
	}
 	
	
}
