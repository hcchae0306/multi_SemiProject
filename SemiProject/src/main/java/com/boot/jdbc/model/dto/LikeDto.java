package com.boot.jdbc.model.dto;

public class LikeDto {

	private int likeno;
	private String memberid;
	private int reviewno;
	
	public LikeDto() {
		super();
	}

	public LikeDto(int likeno, String memberid, int reviewno) {
		super();
		this.likeno = likeno;
		this.memberid = memberid;
		this.reviewno = reviewno;
	}

	public int getLikeno() {
		return likeno;
	}

	public void setLikeno(int likeno) {
		this.likeno = likeno;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getReviewno() {
		return reviewno;
	}

	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	
}
