package com.br.law.mapper.user;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.br.law.vo.Tb_001;

public interface TrialUserMapper {
//	public User login(User user);
	public Tb_001 login(Tb_001 user);
	
	public Tb_001 example(Tb_001 user);
	
	public Tb_001 seluser(Tb_001 user);
	
	public Tb_001 selectMyInfo(int user_proper_num);
	
	// 내정보
	public int modifyMyInfo(Tb_001 user);
	
	// 비밀번호 변경
	public int modifyPassword(@Param("user_proper_num") int user_proper_num, @Param("new_pw") String new_pw);
	
	// 회원 탈퇴
	public int withdrawal(@Param("user_proper_num") int user_proper_num, @Param("user_pw") String user_pw);
	
	// 나의 등재신청 정보 리스트 출력
	public List<Map<String, Object>> selectMyApplicationList(int user_proper_num);
	
	// 나의 등재신청 내역 상세보기
	public Map<String, Object> selectMyApplication(int aplcn_dtls_proper_num);

}
