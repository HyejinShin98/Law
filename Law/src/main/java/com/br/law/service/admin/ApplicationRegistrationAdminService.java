package com.br.law.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.stereotype.Service;

import com.br.law.mapper.admin.ApplicationRegistrationAdminMapper;
import com.br.law.vo.Tb_001;
import com.br.law.vo.Tb_002;
import com.br.law.vo.Tb_005;
import com.br.law.vo.Tb_009;
import com.br.law.vo.Tb_014;

@Service
public class ApplicationRegistrationAdminService {

	@Autowired
	ApplicationRegistrationAdminMapper applicationRegistrationAdminMapper;
	
	public List<Map<String, Object>> selUserList(){
		return applicationRegistrationAdminMapper.selUserList();
	}
	
	public Map<String, Object> onestExamination(Map<String, Object> param){
		return applicationRegistrationAdminMapper.onestExamination(param);
	}
	
	public void upComplete(int param) {
		applicationRegistrationAdminMapper.upComplete(param);
	}
	
	public void upFail(int param) {
		applicationRegistrationAdminMapper.upFail(param);
	}
	
	public void acceptIns(Tb_014 param) { 
		applicationRegistrationAdminMapper.acceptIns(param);
	}
	
	public Tb_005 getFive(int param) {
		return applicationRegistrationAdminMapper.getFive(param);
	}
	
	public Map<String, Object> forComplete(Map<String, Object> param){
		return applicationRegistrationAdminMapper.forComplete(param);
	}
	
	public List<Tb_009> uploadFileSel(int param) {
		return applicationRegistrationAdminMapper.uploadFileSel(param);
	}
	
	public Tb_001 getUserNameAndPk(int param) {
		return applicationRegistrationAdminMapper.getUserNameAndPk(param);
	}
	
	public int userDetailPk(int param) {
		return applicationRegistrationAdminMapper.userDetailPk(param);
	}
	
	public Tb_009 noForUploadFileSel(int param) {
		return applicationRegistrationAdminMapper.noForUploadFileSel(param);
	}
	
	public void companionUp(int param) {
		applicationRegistrationAdminMapper.companionUp(param);
	}
	
	public void evaluationCpUp(int param) {
		applicationRegistrationAdminMapper.evaluationCpUp(param);
	}
	
	
}
