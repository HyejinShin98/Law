package com.br.law.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.law.mapper.user.TrialUserMapper;
import com.br.law.vo.User;

@Service
public class TrialUserService {
	
	
	@Autowired
	private TrialUserMapper trialMainMapper;
	
	public User login(User user) {
		return trialMainMapper.login(user);
	}
	
//	public User login(User user) {
//		return trialMainMapper.login(user);
//	}
	
	public User example(User user) {
		return trialMainMapper.example(user);
	}
	
	public User userins(User user) {
		return trialMainMapper.userins(user);
	}
	
	
}
