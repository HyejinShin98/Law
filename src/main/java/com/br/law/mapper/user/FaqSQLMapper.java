package com.br.law.mapper.user;

import java.util.ArrayList;

import com.br.law.vo.Tb_004;

public interface FaqSQLMapper {

	public void insertFaq(Tb_004 tb_004);
	public ArrayList<Tb_004> sellectAll();
	public void updateTitleAndContent(Tb_004 tb_004);
}
