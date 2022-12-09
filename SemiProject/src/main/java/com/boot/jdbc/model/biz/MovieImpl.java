package com.boot.jdbc.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.jdbc.model.dao.MovieMapper;
import com.boot.jdbc.model.dto.MovieDto;
import com.boot.jdbc.model.dto.MovierequestDto;



@Service
public class MovieImpl implements MovieBiz{
	
	@Autowired
	private MovieMapper movieMapper;

	@Override
	public MovieDto selectMovie(int movieno) {
		return movieMapper.selectMovie(movieno);
	}

	@Override
	public List<MovieDto> selectMovieList() {
		return movieMapper.selectMovieList();
	}
	
	@Override
	public List<MovieDto> searchMovie(String keyword) {
		return movieMapper.searchMovie(keyword);
	}
	
	@Override
	public int insertrequest(MovierequestDto dto) {
		return movieMapper.insertRequest(dto);
	}

}
