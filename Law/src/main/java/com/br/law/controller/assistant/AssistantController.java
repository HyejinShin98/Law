package com.br.law.controller.assistant;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.law.controller.admin.ApplicationRegistrationAdminController;
import com.br.law.service.admin.ApplicationRegistrationAdminService;
import com.br.law.service.assistant.AssistantServiceImpl;
import com.br.law.vo.Tb_009;
import com.br.law.vo.Tb_013;
import com.br.law.vo.Tb_015;

@Controller
@RequestMapping("/admin/*")
public class AssistantController {
	
	@Autowired
	private AssistantServiceImpl assistantServiceImpl;
	
	@Autowired
	private ApplicationRegistrationAdminService applicationRegistrationAdminService;
	
	@Autowired
	private ApplicationRegistrationAdminController applicationRegistrationAdminController;
	
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(RestAssistantController.class);
	
	@RequestMapping("managementEvaluationtable")
	public String ManagementEvaluationtable(){
		
		return "admin/managementEvaluationtable";
	}
	
	@RequestMapping("applicantManagement")
	public String  ApplicantManagement(Model model) {
		List<Map<String, Object>> applicantManagementList= assistantServiceImpl.allApplicantManagement();
		System.out.println(applicantManagementList);
		
		model.addAttribute("applicantManagementList", applicantManagementList);
		
		return "admin/applicantManagement";
	}
	
	@RequestMapping("applicantManagementDetail")
	public String ApplicantManagementDetail(Model model,int aplcn_dtls_proper_num){
		Map<String, Object> user = new HashMap<String, Object>();
		
		/*
		 * int userNo = Integer.parseInt(request.getParameter("aplcn_dtls_proper_num"));
		 * System.out.println(userNo); user.put("aplcn_dtls_proper_num", userNo);
		 * System.out.println("유저" + user);
		 * 
		 * Map<String, Object> userInfo =
		 * assistantServiceImpl.applicantInformation(aplcn_dtls_proper_num);
		 * model.addAttribute("userInfo", userInfo); System.out.println("유저인포" +
		 * assistantServiceImpl.applicantInformation(aplcn_dtls_proper_num));
		 * Map<String, Object> map =
		 * assistantServiceImpl.certificateList(aplcn_dtls_proper_num);
		 * model.addAttribute("certificateList", map); System.out.println("자격증" +
		 * assistantServiceImpl.certificateList(aplcn_dtls_proper_num)); Map<String,
		 * Object> map2 = assistantServiceImpl.uploadfile(aplcn_dtls_proper_num);
		 * model.addAttribute("uploadfile", map2); System.out.println("파ㅏ일" +
		 * assistantServiceImpl.uploadfile(aplcn_dtls_proper_num));
		 */
		
		
		return "admin/applicantManagementDetail";
	}
	
	@RequestMapping("searchCondition")
	public String SearchCondition() {
		
		return "admin/searchCondition";
	}
	
	@RequestMapping("evaluationApplicantsList")
	public String  EvaluationApplicantsList(Model model) {
		List<Map<String, Object>> applicantManagementList= assistantServiceImpl.allApplicantManagement();
		
		
		model.addAttribute("applicantManagementList", applicantManagementList);
		
		return "admin/evaluationApplicantsList";
	}	
	
	@RequestMapping("evaluationApplicants")
	public String  EvaluationApplicants(HttpServletRequest request, Model model,int aplcn_dtls_proper_num) {
		Map<String, Object> user = new HashMap<String, Object>();
		int userNo = Integer.parseInt(request.getParameter("aplcn_dtls_proper_num"));
		user.put("aplcn_dtls_proper_num", userNo);
		System.out.println(userNo);
		System.out.println("유저" + user);
		
		model.addAttribute("map", user);
//		Map<String, Object> userInfo = assistantServiceImpl.applicantInformation(aplcn_dtls_proper_num);
//		model.addAttribute("userInfo", userInfo);
//		System.out.println("유저인포" + assistantServiceImpl.applicantInformation(aplcn_dtls_proper_num));
//		
//		Map<String, Object> map = assistantServiceImpl.certificateList(aplcn_dtls_proper_num);
//		model.addAttribute("certificateList", map);
//		System.out.println("자격증" + assistantServiceImpl.certificateList(aplcn_dtls_proper_num));
//		
//		List<Tb_009> map2 = applicationRegistrationAdminService.uploadFileSel(userNo);
//		model.addAttribute("uploadfiale", map2);
//		
//		
//		Map<String, Object> userInfo = assistantServiceImpl.applicantInformation(aplcn_dtls_proper_num);
//		model.addAttribute("userInfo", userInfo);
//		
////		Map<String, Object> certificateList = assistantServiceImpl.certificateList(aplcn_dtls_proper_num);
////		System.out.println(certificateList);
////		model.addAttribute("certificateList", certificateList);
		
		
		return "admin/evaluationApplicants";
	}
	
	@RequestMapping("evaluationApplicantsProcess")
	public String EvaluationApplicantsProcess(Tb_013 param, int aplcn_dtls_proper_num, HttpSession session){ 
		 Tb_015 admin = (Tb_015) session.getAttribute("admin");
		 int adminNo = admin.getAdmin_proper_num();
		 
		 param.setAdmin_proper_num(adminNo);
		 param.setAplcn_dtls_proper_num(aplcn_dtls_proper_num);
		 
		 assistantServiceImpl.evaluation(param);
		 
		 assistantServiceImpl.accept(aplcn_dtls_proper_num);
		 assistantServiceImpl.referral(aplcn_dtls_proper_num);
		return "redirect:./evaluationApplicantsList";
	}
	
	
	@RequestMapping("fileDownLoadProcess2")
	public String fileDownLoadProcess(HttpServletResponse response, 
			@Param("aplcn_dtls_proper_num")int aplcn_dtls_proper_num,
			@Param("aplcn_atch_file_proper_num")int aplcn_atch_file_proper_num) {
		
		applicationRegistrationAdminController.fileDownLoadProcess(response, aplcn_dtls_proper_num, aplcn_atch_file_proper_num);
		
		return "admin/fileDownLoadProcess";
	}
	
	
}