package com.br.law.controller.assistant;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.law.service.assistant.AssistantServiceImpl;
import com.br.law.vo.Tb_013;
import com.br.law.vo.Tb_015;

@Controller
@RequestMapping("/admin/*")
public class AssistantController {
	
	@Autowired
	private AssistantServiceImpl assistantServiceImpl;
	
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
		Map<String, Object> userInfo = assistantServiceImpl.applicantInformation(aplcn_dtls_proper_num);
		model.addAttribute("userInfo", userInfo);
		
		List<Map<String, Object>> map = assistantServiceImpl.certificateList(aplcn_dtls_proper_num);
		model.addAttribute("certificateList", map);
		
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
	public String  EvaluationApplicants(Model model,int aplcn_dtls_proper_num) {
		List<Map<String, Object>> applicantManagementList= new ArrayList<Map<String,Object>>();
		Map<String, Object> userInfo = assistantServiceImpl.applicantInformation(aplcn_dtls_proper_num);
		model.addAttribute("userInfo", userInfo);
		
		List<Map<String, Object>> map = assistantServiceImpl.certificateList(aplcn_dtls_proper_num);
		model.addAttribute("certificateList", map);
		
		
		return "admin/evaluationApplicants";
	}
	
	@RequestMapping("evaluationApplicantsProcess")
	public String EvaluationApplicantsProcess(Tb_013 param,int aplcn_dtls_proper_num, HttpSession session){ 
		 
		 Tb_015 admin = (Tb_015) session.getAttribute("admin");
		 int adminNo = admin.getAdmin_proper_num();
		 
		 param.setAdmin_proper_num(adminNo);
		 param.setAplcn_dtls_proper_num(aplcn_dtls_proper_num);
		 
		 assistantServiceImpl.evaluation(param);
		 
		 assistantServiceImpl.accept(aplcn_dtls_proper_num);
		 assistantServiceImpl.referral(aplcn_dtls_proper_num);
		return "redirect:./evaluationApplicantsList";
	}
	
}