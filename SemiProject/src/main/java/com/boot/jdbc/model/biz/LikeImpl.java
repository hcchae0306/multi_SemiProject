package com.boot.jdbc.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.jdbc.model.dao.LikeMapper;
import com.boot.jdbc.model.dto.LikeDto;

@Service
public class LikeImpl implements LikeBiz {

	@Autowired
	private LikeMapper likeMapper;
	
	@Override
	public int insert(LikeDto dto) {
		likeMapper.insert(dto);
		return likeMapper.update(dto.getReviewno());
	}

	@Override
	public int delete(LikeDto dto) {
		likeMapper.delete(dto);
		return likeMapper.update(dto.getReviewno());
	}

	@Override
	public int select(LikeDto dto) {
		return likeMapper.select(dto);
	}

}
