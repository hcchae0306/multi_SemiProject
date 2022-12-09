package com.boot.jdbc.model.biz;

import java.util.List;

import com.boot.jdbc.model.dto.ReviewDto;

public interface ReviewBiz {
	public List<ReviewDto> selectRVList();
	
	public int insertRVList(ReviewDto dto);
}
