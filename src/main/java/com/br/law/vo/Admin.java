package com.br.law.vo;

public class Admin {
	private int admin_proper_num;
	private String admin_id;
	private String admin_pw;
	private String admin_auth;
	public Admin() {
		super();
	}
	public Admin(int admin_proper_num, String admin_id, String admin_pw, String admin_auth) {
		super();
		this.admin_proper_num = admin_proper_num;
		this.admin_id = admin_id;
		this.admin_pw = admin_pw;
		this.admin_auth = admin_auth;
	}
	public int getAdmin_proper_num() {
		return admin_proper_num;
	}
	public void setAdmin_proper_num(int admin_proper_num) {
		this.admin_proper_num = admin_proper_num;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	public String getAdmin_auth() {
		return admin_auth;
	}
	public void setAdmin_auth(String admin_auth) {
		this.admin_auth = admin_auth;
	}
	
	
}
