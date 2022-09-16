package com.br.law.mapper.assistant;

import java.util.List;
import java.util.Map;

import com.br.law.vo.Tb_013;

public interface AssistantSQLMapper {
	public List<Map<String, Object>> ApplicantList();
	public Map<String, Object> ApplicantDetails(int aplcn_dtls_proper_num);
	public void ApplicnatAttachedFile(int aplcn_dtls_proper_num);
	public List<Map<String, Object>> certificate(int aplcn_dtls_proper_num);
	public void evaluationApplicants(Tb_013 tb_013);
	public void accept(int aplcn_dtls_proper_num);
	public void referral(int aplcn_dtls_proper_num);
	
}
