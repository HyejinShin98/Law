package com.br.law.controller.admin;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.annotations.Param;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.law.service.admin.ApplicationRegistrationAdminService;
import com.br.law.vo.Tb_001;
import com.br.law.vo.Tb_009;

@RestController
@RequestMapping("/admin/*")
public class RestApplicationRegistrationAdminController {
	
	@Autowired
	ApplicationRegistrationAdminService applicationRegistrationAdminService;
	
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(RestApplicationRegistrationAdminController.class);
	
	@RequestMapping("selTableOne")
	public Map<String, Object> selTableOne(int aplcn_dtls_proper_num, String aplcn_dtls_sts) {
		Map<String, Object> map = new HashMap<String, Object>();
	
		map.put("aplcn_dtls_proper_num", aplcn_dtls_proper_num);
		map.put("aplcn_dtls_sts", aplcn_dtls_sts);
		Map<String, Object> param = applicationRegistrationAdminService.onestExamination(map);
		
		map.put("map", param);
		map.put("result", "success");
		logger.info("맵확인 : " + param);
		return map;
	}
	
	@RequestMapping("fileList")
	public List<Tb_009> fileList(int aplcn_dtls_proper_num){
		Map<String, Object> map = new HashMap<>();
		List<Tb_009> list= applicationRegistrationAdminService.uploadFileSel(aplcn_dtls_proper_num); 
		
		map.put("list", list);
		
		logger.info("list", list);
		return list;
	}
	
}