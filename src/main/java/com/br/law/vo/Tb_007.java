package com.br.law.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Tb_007 {
	private int aplcn_carer_proper_num;
	private int user_proper_num;
	private int company_name;
	private int carer_type;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date work_start_date;
	private Date work_end_deate;
	private String work_description;
	private String work_department;
	private String work_prosition;
	private String carer_description;
	private String special_note_description;
	public Tb_007() {
		super();
	}
	public Tb_007(int aplcn_carer_proper_num, int user_proper_num, int company_name, int carer_type,
			Date work_start_date, Date work_end_deate, String work_description, String work_department,
			String work_prosition, String carer_description, String special_note_description) {
		super();
		this.aplcn_carer_proper_num = aplcn_carer_proper_num;
		this.user_proper_num = user_proper_num;
		this.company_name = company_name;
		this.carer_type = carer_type;
		this.work_start_date = work_start_date;
		this.work_end_deate = work_end_deate;
		this.work_description = work_description;
		this.work_department = work_department;
		this.work_prosition = work_prosition;
		this.carer_description = carer_description;
		this.special_note_description = special_note_description;
	}
	public int getAplcn_carer_proper_num() {
		return aplcn_carer_proper_num;
	}
	public void setAplcn_carer_proper_num(int aplcn_carer_proper_num) {
		this.aplcn_carer_proper_num = aplcn_carer_proper_num;
	}
	public int getUser_proper_num() {
		return user_proper_num;
	}
	public void setUser_proper_num(int user_proper_num) {
		this.user_proper_num = user_proper_num;
	}
	public int getCompany_name() {
		return company_name;
	}
	public void setCompany_name(int company_name) {
		this.company_name = company_name;
	}
	public int getCarer_type() {
		return carer_type;
	}
	public void setCarer_type(int carer_type) {
		this.carer_type = carer_type;
	}
	public Date getWork_start_date() {
		return work_start_date;
	}
	public void setWork_start_date(Date work_start_date) {
		this.work_start_date = work_start_date;
	}
	public Date getWork_end_deate() {
		return work_end_deate;
	}
	public void setWork_end_deate(Date work_end_deate) {
		this.work_end_deate = work_end_deate;
	}
	public String getWork_description() {
		return work_description;
	}
	public void setWork_description(String work_description) {
		this.work_description = work_description;
	}
	public String getWork_department() {
		return work_department;
	}
	public void setWork_department(String work_department) {
		this.work_department = work_department;
	}
	public String getWork_prosition() {
		return work_prosition;
	}
	public void setWork_prosition(String work_prosition) {
		this.work_prosition = work_prosition;
	}
	public String getCarer_description() {
		return carer_description;
	}
	public void setCarer_description(String carer_description) {
		this.carer_description = carer_description;
	}
	public String getSpecial_note_description() {
		return special_note_description;
	}
	public void setSpecial_note_description(String special_note_description) {
		this.special_note_description = special_note_description;
	}
	
	
}
