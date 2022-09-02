package com.br.law.service.user;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.law.mapper.user.FaqSQLMapper;
import com.br.law.vo.Tb_004;

@Service
public class FaqServiceImpl {

	@Autowired
	private FaqSQLMapper faqSQLMapper;
	
	public ArrayList<HashMap<String, Object>> getFaqDataList(){
		
		ArrayList<HashMap<String, Object>> dataList = new ArrayList<HashMap<String, Object>>();
		ArrayList<Tb_004> faqList = faqSQLMapper.sellectAll();
		
		for(Tb_004 tb_004 : faqList) {
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("Tb_004", tb_004);
			dataList.add(map);
		}
		return dataList;
	}
}
