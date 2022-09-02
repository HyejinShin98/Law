package com.br.law.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.law.mapper.admin.TrialAdminMapper;
import com.br.law.vo.Admin;

@Service
public class TrialAdminService {

	
	@Autowired
	private TrialAdminMapper trialAdminMapper;
	
	public Admin login(Admin admin) {
		return trialAdminMapper.login(admin);
	}
	public Admin example(Admin admin) {
		return trialAdminMapper.example(admin);
	}
}
