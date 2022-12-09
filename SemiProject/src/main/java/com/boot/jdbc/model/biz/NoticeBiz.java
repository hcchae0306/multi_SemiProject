package com.boot.jdbc.model.biz;

import java.util.List;

import com.boot.jdbc.model.dto.NoticeDto;

public interface NoticeBiz {
	public List<NoticeDto> selectList();
	public NoticeDto selectOne(int boardno);
	public int insert(NoticeDto dto);
	public int update(NoticeDto dto);
	public int delete(int boardno);
}