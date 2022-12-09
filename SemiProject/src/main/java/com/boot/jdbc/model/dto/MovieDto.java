package com.boot.jdbc.model.dto;

public class MovieDto {
	private int movieno;
	private String movietitle;
	private String moviedirector;
	private String moviegenre;
	private String moviedate;
	private String movieimage;
	
	public MovieDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MovieDto(int movieno, String movietitle, String moviedirector, String moviegenre, String moviedate,
			String movieimage) {
		super();
		this.movieno = movieno;
		this.movietitle = movietitle;
		this.moviedirector = moviedirector;
		this.moviegenre = moviegenre;
		this.moviedate = moviedate;
		this.movieimage = movieimage;
	}
	
	public int getMovieno() {
		return movieno;
	}
	public void setMovieno(int movieno) {
		this.movieno = movieno;
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
	public String getMoviegenre() {
		return moviegenre;
	}
	public void setMoviegenre(String moviegenre) {
		this.moviegenre = moviegenre;
	}
	public String getMoviedate() {
		return moviedate;
	}
	public void setMoviedate(String moviedate) {
		this.moviedate = moviedate;
	}
	public String getMovieimage() {
		return movieimage;
	}
	public void setMovieimage(String movieimage) {
		this.movieimage = movieimage;
	}
}
