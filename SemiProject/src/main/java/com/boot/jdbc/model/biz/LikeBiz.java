package com.boot.jdbc.model.biz;

import com.boot.jdbc.model.dto.LikeDto;

public interface LikeBiz {
	public int insert(LikeDto dto);
	public int delete(LikeDto dto);
	public int select(LikeDto dto);
}
