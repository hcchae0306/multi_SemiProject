package com.boot.jdbc.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.boot.jdbc.model.dto.MovieDto;
import com.boot.jdbc.model.dto.MovierequestDto;

@Mapper
public interface MovieMapper {

	
	@Select(" SELECT * FROM MOVIEBOARD WHERE MOVIENO = #{movieNo} ")
	MovieDto selectMovie(int movieno);
	
	@Select(" SELECT MOVIENO, MOVIEIMAGE, MOVIETITLE FROM MOVIEBOARD ORDER BY MOVIENO DESC ")
	List<MovieDto> selectMovieList();
	
	@Select(" SELECT MOVIENO, MOVIEIMAGE, MOVIETITLE FROM MOVIEBOARD WHERE MOVIETITLE=#{keyword} ORDER BY MOVIENO DESC ")
	List<MovieDto> searchMovie(String keyword);
	
	@Insert(" INSERT INTO MOVIEREQUEST VALUES(NULL, #{movietitle}, #{moviedirector}) ")
	int insertRequest(MovierequestDto dto);
}
