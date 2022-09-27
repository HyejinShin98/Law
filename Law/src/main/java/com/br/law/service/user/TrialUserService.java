package com.br.law.service.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.law.mapper.user.TrialUserMapper;
import com.br.law.vo.Tb_001;
import com.br.law.vo.Tb_005;
import com.br.law.vo.Tb_006;
import com.br.law.vo.Tb_007;
import com.br.law.vo.Tb_008;
import com.br.law.vo.Tb_009;

@Service
public class TrialUserService {
	
	
	@Autowired
	private TrialUserMapper trialMainMapper;
	
	public Tb_001 login(Tb_001 user) {
		return trialMainMapper.login(user);
	}
	
//	public User login(User user) {
//		return trialMainMapper.login(user);
//	}
	
	public Tb_001 example(Tb_001 user) {
		return trialMainMapper.example(user);
	}
	
	public Tb_001 userins(Tb_001 user) {
		return trialMainMapper.seluser(user);
	}
	
	public Tb_001 getMyInfo(int user_proper_num) {
		return trialMainMapper.selectMyInfo(user_proper_num); 
	}
	
	public int modifyMyInfo(Tb_001 user) {
		return trialMainMapper.modifyMyInfo(user);
	}
	
	public int modifyPassword(int user_proper_num, String new_pw) {
		return trialMainMapper.modifyPassword(user_proper_num, new_pw);
	}
	
	public boolean withdrawal(int user_proper_num, String user_pw) {
		Tb_001 user = getMyInfo(user_proper_num);
		
		if(!user.getUser_pw().equals(user_pw)) {
			return false;
		}
		
		trialMainMapper.withdrawal(user_proper_num, user_pw);
		return true;
	}
	
	public List<Map<String, Object>> getMyApplicationList(int user_proper_num) {
		List<Map<String, Object>> resultList = new ArrayList<Map<String,Object>>();
		List<Map<String, Object>> searchList = trialMainMapper.selectMyApplicationList(user_proper_num);  
		
		for(Map<String, Object> search : searchList) {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("rownum", search.get("ROWNUM"));
			result.put("announce_proper_num", search.get("ANNOUNCE_PROPER_NUM"));
			result.put("aplcn_dtls_proper_num", search.get("APLCN_DTLS_PROPER_NUM"));
			result.put("court_proper_num", search.get("COURT_PROPER_NUM"));
			result.put("aplcn_dtls_date", search.get("APLCN_DTLS_DATE"));
			result.put("trial_fcltt_description", search.get("TRIAL_FCLTT_DESCRIPTION"));
			result.put("court_name", search.get("COURT_NAME"));
			
			// 신청상태 한글로 변환하여 리스트 넣기(출력용)
			String stsEnStr = (String)search.get("APLCN_DTLS_STS");
			result.put("aplcn_dtls_sts", convertAplcnStsToKorean(stsEnStr));
			
			resultList.add(result);
		}
		
		return resultList;
	}
	
	public Map<String, Object> getMyApplication(int aplcn_dtls_proper_num) {
		return trialMainMapper.selectMyApplication(aplcn_dtls_proper_num);
	}
	
	public int modifyTableFive(Tb_005 param) {
		return trialMainMapper.modifyTableFive(param);
	}
	
	public int modifyTableSix(Tb_006 param) {
		return trialMainMapper.modifyTableSix(param);
	}
	
	public int modifyTableSeven(Tb_007 param) {
		return trialMainMapper.modifyTableSeven(param);
	}
	
	public int modifyTableEight(Tb_008 param) {
		return trialMainMapper.modifyTableEight(param);
	}
	
	public int modifyTableNine(Tb_009 param) {
		return trialMainMapper.modifyTableNine(param);
	}
	
	public List<Map<String, Object>> getMyActiveList(int user_proper_num) {
		return trialMainMapper.selectMyActiveList(user_proper_num);
	}	
	
	// 등재신청 상태 en -> ko 변환 출력용 메소드
	private String convertAplcnStsToKorean(String aplcn_dtls_sts) {
		String stsKoStr = "";
		
		switch (aplcn_dtls_sts) {
		case "ing":
			stsKoStr = "작성중";
			break;
		case "examination" :
			stsKoStr = "신청중";
			break;
		case "evaluationCp" :
			stsKoStr = "1차심사완료";
			break;
		case "companion" :
			stsKoStr = "서류보완필요";
			break;
		case "failure" :
			stsKoStr = "불합격";
			break;
		case "accept" :
			stsKoStr = "합격";
			break;
		}
		return stsKoStr;
	}
	
	
}
