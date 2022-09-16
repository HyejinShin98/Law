package com.br.law.service.assistant;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.law.mapper.assistant.AssistantSQLMapper;
import com.br.law.vo.Tb_013;

@Service
public class AssistantServiceImpl {
	
	@Autowired
	private AssistantSQLMapper assistantSQLMapper;
	
	
	
	public List<Map<String, Object>> allApplicantManagement() {
		List<Map<String, Object>> applicantList = assistantSQLMapper.ApplicantList();		
		
		return applicantList;
	}
	
	public Map<String, Object> applicantInformation(int aplcn_dtls_proper_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> applicantInfo = assistantSQLMapper.ApplicantDetails(aplcn_dtls_proper_num);
		
		map.put("applicantInfo", applicantInfo);
		
		return map;
	}
	
	public List<Map<String, Object>> certificateList(int aplcn_dtls_proper_num){
		List<Map<String, Object>> certificateList = assistantSQLMapper.certificate(aplcn_dtls_proper_num);
		
		
		return certificateList;	
		
	}
	
	public void evaluation(Tb_013 tb_013) {
		assistantSQLMapper.evaluationApplicants(tb_013);
	}
	
	public void accept(int aplcn_dtls_proper_num){
		 assistantSQLMapper.accept(aplcn_dtls_proper_num);
		
	}
	
	public void referral(int aplcn_dtls_proper_num){
		 assistantSQLMapper.referral(aplcn_dtls_proper_num);
		
	}
	
}