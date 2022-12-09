package com.boot.jdbc.model.dto;

public class MemberDto {
	
	private String memberid;
	private String memberpw;
	private String membername;
	private String memberphone;
	private String membergr;
	private String memebergn;
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberDto(String memberid, String memberpw, String membername, String memberphone, String membergr,
			String memebergn) {
		super();
		this.memberid = memberid;
		this.memberpw = memberpw;
		this.membername = membername;
		this.memberphone = memberphone;
		this.membergr = membergr;
		this.memebergn = memebergn;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMemberpw() {
		return memberpw;
	}
	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getMemberphone() {
		return memberphone;
	}
	public void setMemberphone(String memberphone) {
		this.memberphone = memberphone;
	}
	public String getMembergr() {
		return membergr;
	}
	public void setMembergr(String membergr) {
		this.membergr = membergr;
	}
	public String getMemebergn() {
		return memebergn;
	}
	public void setMemebergn(String memebergn) {
		this.memebergn = memebergn;
	}
	
	

}
