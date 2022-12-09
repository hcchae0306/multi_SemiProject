package com.boot.jdbc.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.jdbc.model.dao.MemberMapper;
import com.boot.jdbc.model.dto.MemberDto;
import com.boot.jdbc.model.dto.NoticeDto;
import com.boot.jdbc.model.dto.ReviewDto;

@Service
public class MemberImpl implements MemberBiz{

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public int insert(MemberDto dto) {
		return memberMapper.insert(dto);
	}

	@Override
	public MemberDto login(MemberDto dto) {
		return memberMapper.login(dto);
	}

	@Override
	public MemberDto selectmember(String memberid) {
		// TODO Auto-generated method stub
		return memberMapper.selectmember(memberid);
	}

	@Override
	public List<ReviewDto> selectmyreview(String memberid) {
		return memberMapper.selectmyreview(memberid);
	}

	


}
