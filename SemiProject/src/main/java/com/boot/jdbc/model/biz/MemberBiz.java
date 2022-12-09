package com.boot.jdbc.model.biz;

import java.util.List;

import com.boot.jdbc.model.dto.MemberDto;
import com.boot.jdbc.model.dto.ReviewDto;

public interface MemberBiz {
	
	public int insert(MemberDto dto);
	public MemberDto login(MemberDto dto);
	public MemberDto selectmember(String memberid);
	public List<ReviewDto> selectmyreview(String memberid);
	
	
}
