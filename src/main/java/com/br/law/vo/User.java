package com.br.law.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class User {

	private String user_name;
	private int user_proper_num;
	private int user_age;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date user_join_date;
	private String user_email;
	private String user_phone;
	private String user_job;
	private String user_id;
	private String USER_pw;
	private String user_street_addr;
	private String user_detail_addr;
	private String user_zipcode;
	private String user_bank;
	private String user_account_num;
	private String user_holder;
	private String act_yn;
	private String delete_yn;
	public User() {
		super();
	}
	public User(String user_name, int user_proper_num, int user_age, Date user_join_date, String user_email,
			String user_phone, String user_job, String user_id, String uSER_pw, String user_street_addr,
			String user_detail_addr, String user_zipcode, String user_bank, String user_account_num, String user_holder,
			String act_yn, String delete_yn) {
		super();
		this.user_name = user_name;
		this.user_proper_num = user_proper_num;
		this.user_age = user_age;
		this.user_join_date = user_join_date;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.user_job = user_job;
		this.user_id = user_id;
		USER_pw = uSER_pw;
		this.user_street_addr = user_street_addr;
		this.user_detail_addr = user_detail_addr;
		this.user_zipcode = user_zipcode;
		this.user_bank = user_bank;
		this.user_account_num = user_account_num;
		this.user_holder = user_holder;
		this.act_yn = act_yn;
		this.delete_yn = delete_yn;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_proper_num() {
		return user_proper_num;
	}
	public void setUser_proper_num(int user_proper_num) {
		this.user_proper_num = user_proper_num;
	}
	public int getUser_age() {
		return user_age;
	}
	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}
	public Date getUser_join_date() {
		return user_join_date;
	}
	public void setUser_join_date(Date user_join_date) {
		this.user_join_date = user_join_date;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_job() {
		return user_job;
	}
	public void setUser_job(String user_job) {
		this.user_job = user_job;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUSER_pw() {
		return USER_pw;
	}
	public void setUSER_pw(String uSER_pw) {
		USER_pw = uSER_pw;
	}
	public String getUser_street_addr() {
		return user_street_addr;
	}
	public void setUser_street_addr(String user_street_addr) {
		this.user_street_addr = user_street_addr;
	}
	public String getUser_detail_addr() {
		return user_detail_addr;
	}
	public void setUser_detail_addr(String user_detail_addr) {
		this.user_detail_addr = user_detail_addr;
	}
	public String getUser_zipcode() {
		return user_zipcode;
	}
	public void setUser_zipcode(String user_zipcode) {
		this.user_zipcode = user_zipcode;
	}
	public String getUser_bank() {
		return user_bank;
	}
	public void setUser_bank(String user_bank) {
		this.user_bank = user_bank;
	}
	public String getUser_account_num() {
		return user_account_num;
	}
	public void setUser_account_num(String user_account_num) {
		this.user_account_num = user_account_num;
	}
	public String getUser_holder() {
		return user_holder;
	}
	public void setUser_holder(String user_holder) {
		this.user_holder = user_holder;
	}
	public String getAct_yn() {
		return act_yn;
	}
	public void setAct_yn(String act_yn) {
		this.act_yn = act_yn;
	}
	public String getDelete_yn() {
		return delete_yn;
	}
	public void setDelete_yn(String delete_yn) {
		this.delete_yn = delete_yn;
	}
	
	
}
