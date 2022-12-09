package com.boot.jdbc.model.biz;

import java.util.List;

import com.boot.jdbc.model.dto.MovieDto;
import com.boot.jdbc.model.dto.MovierequestDto;

public interface MovieBiz {
	public MovieDto selectMovie(int movieno);
	public List<MovieDto> selectMovieList();
	public List<MovieDto> searchMovie(String keyword);
	public int insertrequest(MovierequestDto dto);
}
