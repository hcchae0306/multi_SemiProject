package com.boot.jdbc.model.dto;

public class MovierequestDto {
	private int requestno;
	private String movietitle;
	private String moviedirector;
	
	public MovierequestDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MovierequestDto(int requestno, String movietitle, String moviedirector) {
		super();
		this.requestno = requestno;
		this.movietitle = movietitle;
		this.moviedirector = moviedirector;
	}
	
	public int getRequestno() {
		return requestno;
	}
	public void setRequestno(int requestno) {
		this.requestno = requestno;
	}
	public String getMovietitle() {
		return movietitle;
	}
	public void setMovietitle(String movietitle) {
		this.movietitle = movietitle;
	}
	public String getMoviedirector() {
		return moviedirector;
	}
	public void setMoviedirector(String moviedirector) {
		this.moviedirector = moviedirector;
	}
	
	
}
