package com.br.law.service.assistant;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.law.mapper.assistant.AssistantSQLMapper;
import com.br.law.vo.Tb_002;
import com.br.law.vo.Tb_005;
import com.br.law.vo.Tb_010;
import com.br.law.vo.Tb_013;
import com.br.law.vo.Tb_014;

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
		System.out.println(certificateList);
		
		return certificateList;
		
	}
	
	public List<Map<String, Object>> uploadfile(int aplcn_dtls_proper_num){
		List<Map<String, Object>> uploadfileList = assistantSQLMapper.uploadFile(aplcn_dtls_proper_num);
		
		return uploadfileList; 
	}
	public void evaluation(Tb_013 tb_013) {
		assistantSQLMapper.evaluationApplicants(tb_013);
	}
	
	public void accept(int aplcn_dtls_proper_num){
		 assistantSQLMapper.accept(aplcn_dtls_proper_num);
		 
		 Tb_005 tb_005 = assistantSQLMapper.callTb_005(aplcn_dtls_proper_num);
		 Tb_014 tb_014 = new Tb_014();
		 tb_014.setAplcn_dtls_proper_num(aplcn_dtls_proper_num);
		 tb_014.setUser_proper_num(tb_005.getUser_proper_num());
		 tb_014.setTrial_fcltt_proper_num(tb_005.getTrial_fcltt_proper_num());
		 tb_014.setCourt_proper_num(tb_005.getCourt_proper_num());
		 
		 assistantSQLMapper.insertTb_014(tb_014);
		
	}
	
	public void referral(int aplcn_dtls_proper_num){
		 assistantSQLMapper.referral(aplcn_dtls_proper_num);
		
	}
	
	public List<Map<String, Object>> announce(){
		List<Map<String, Object>> announceName = assistantSQLMapper.announce();
		
		return announceName;
	}
	
	public List<Map<String, Object>> trial_fcltt(){
		List<Map<String, Object>> trial_fcltt_name = assistantSQLMapper.TRIAL_FCLTT_NAME();
		
		return trial_fcltt_name;
	}
	
	public Map<String, Object> announceSelectList(int announce_proper_num){
		Map<String, Object> announceSelect =  assistantSQLMapper.announceSelect(announce_proper_num);
		
		return announceSelect;
	}
	
//	0928 하다 조건별 분류
	public ArrayList<Tb_010> callTb_010() {
		return assistantSQLMapper.callTb_010();
	}
	//0928 하다 공고별 분류
	public ArrayList<Tb_002> callTb_002() {
		return assistantSQLMapper.callTb_002();
	}
	
	//0928 하다 조건별 유저
	public List<Map<String, Object>> callAUser(int trial_fcltt_proper_num){
		return assistantSQLMapper.callAUser(trial_fcltt_proper_num);
	}
	
	//0928 하다 공고별 유저
	public List<Map<String, Object>> callCUser(int announce_proper_num){
		return assistantSQLMapper.callCUser(announce_proper_num);
	}
	
	//0928 병훈 신청현황 별 유저
	public List<Map<String, Object>> callDUser(String aplcn_dtls_sts){
		return assistantSQLMapper.callDUser(aplcn_dtls_sts);
	}
	
	//0930 하다
	public int sumTb_013 (int aplcn_dtls_proper_num) {
		 return assistantSQLMapper.sumTb_013(aplcn_dtls_proper_num); 	
		}
}
