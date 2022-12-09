package com.boot.jdbc.model.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.boot.jdbc.model.dto.LikeDto;

@Mapper
public interface LikeMapper {
	
	@Select(" SELECT COUNT(LIKENO) FROM LIKEDO WHERE REVIEWNO=#{reviewno} AND MEMBERID=#{memberid} ")
	int select(LikeDto dto);
	
	@Insert(" INSERT INTO LIKEDO VALUES(NULL, #{memberid}, #{reviewno}) ")
	int insert(LikeDto dto);
	
	@Delete(" DELETE FROM LIKEDO WHERE REVIEWNO=#{reviewno} AND MEMBERID=#{memberid} ")
	int delete(LikeDto dto);
	
	@Update(" UPDATE REVIEWBOARD SET LIKECOUNT =\n"
			+ " (SELECT COUNT(*) FROM LIKEDO WHERE REVIEWNO=#{reviewno})\n"
			+ " WHERE REVIEWNO=#{reviewno} ")
	int update(int reviewno);
}
