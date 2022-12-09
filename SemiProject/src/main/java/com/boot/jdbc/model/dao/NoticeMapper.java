package com.boot.jdbc.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.boot.jdbc.model.dto.NoticeDto;

@Mapper
public interface NoticeMapper {
	
	@Select("SELECT * FROM BOARDINFO ORDER BY BOARDNO DESC")
	List<NoticeDto> selectList();

	@Select("SELECT BOARDNO, MEMBERNAME, BOARDTITLE, BOARDCONTENT, BOARDDATE\n"
			+ "FROM BOARDINFO, MEMBERINFO\n"
			+ "WHERE BOARDNO=${boardno} AND BOARDINFO.MEMBERID = MEMBERINFO.MEMBERID")
	NoticeDto selectOne(int boardno);
	
	@Insert(" INSERT INTO BOARDINFO VALUES(NULL, #{memberid}, #{boardtitle}, #{boardcontent}, now()) ")
	int insert(NoticeDto dto);
	
	@Update("UPDATE BOARDINFO SET BOARDTITLE=#{boardtitle}, BOARDCONTENT=#{boardcontent} WHERE BOARDNO=#{boardno}")
	int update(NoticeDto dto);
	
	@Delete("DELETE FROM BOARDINFO WHERE BOARDNO=#{boardno}")
	int delete(int boardno);
}