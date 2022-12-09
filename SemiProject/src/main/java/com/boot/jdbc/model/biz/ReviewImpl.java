package com.boot.jdbc.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.jdbc.model.dao.ReviewMapper;
import com.boot.jdbc.model.dto.ReviewDto;

@Service
public class ReviewImpl implements ReviewBiz{
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	@Override
	public List<ReviewDto> selectRVList() {
		return reviewMapper.selectRVList();
	}

	@Override
	public int insertRVList(ReviewDto dto) {
		System.out.println(dto);
		return reviewMapper.insertRVList(dto);
	}

}
