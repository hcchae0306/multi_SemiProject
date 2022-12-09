package com.boot.jdbc.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.boot.jdbc.model.dto.MemberDto;
import com.boot.jdbc.model.dto.ReviewDto;

@Mapper
public interface MemberMapper {

	@Insert(" INSERT INTO MEMBERINFO VALUES(#{memberid}, #{memberpw}, #{membername}, #{memberphone}, '2', 'general') ")
	int insert(MemberDto dto);

	@Select(" SELECT * FROM MEMBERINFO WHERE MEMBERID=#{memberid} AND MEMBERPW=#{memberpw} ")
	MemberDto login(MemberDto dto);

	@Select(" SELECT MEMBERID,MEMBERNAME,MEMBERPHNE FROM MEMBERINFO WHERE MEMBERID=#{memberid}")
	MemberDto selectmember(String memberid);

	
	@Select("SELECT * FROM MEMBERINFO INNER JOIN REVIEWBOARD ON MEMBERINFO.MEMBERID = REVIEWBOARD.MEMBERID WHERE MEMBERINFO.MEMBERID=#{memberid} ")
	List<ReviewDto> selectmyreview(String memberid);
}
