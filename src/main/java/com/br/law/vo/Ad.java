package com.br.law.vo;

public class Ad {
	String admin_id;
	String admin_pw;
	String admin_nickname;
	public Ad() {
		super();
	}
	public Ad(String admin_id, String admin_pw, String admin_nickname) {
		super();
		this.admin_id = admin_id;
		this.admin_pw = admin_pw;
		this.admin_nickname = admin_nickname;
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
	public String getAdmin_nickname() {
		return admin_nickname;
	}
	public void setAdmin_nickname(String admin_nickname) {
		this.admin_nickname = admin_nickname;
	}
	
	
}
