package com.br.law.vo;

public class Mb {
	String member_id;
	String member_pw;
	String member_nickname;
	public Mb() {
		super();
	}
	public Mb(String member_id, String member_pw, String member_nickname) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_nickname = member_nickname;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	
}
