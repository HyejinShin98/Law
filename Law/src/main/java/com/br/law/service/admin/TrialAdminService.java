package com.br.law.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.law.mapper.admin.TrialAdminMapper;
import com.br.law.vo.Tb_015;

@Service
public class TrialAdminService {

	
	@Autowired
	private TrialAdminMapper trialAdminMapper;
	
	public Tb_015 login(Tb_015 admin) {
		return trialAdminMapper.login(admin);
	}
	public Tb_015 example(Tb_015 admin) {
		return trialAdminMapper.example(admin);
	}
}
