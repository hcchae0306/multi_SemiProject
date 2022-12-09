package com.boot.jdbc.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.jdbc.model.dao.NoticeMapper;
import com.boot.jdbc.model.dto.NoticeDto;

@Service
public class NoticeImpl implements NoticeBiz{

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public List<NoticeDto> selectList() {
		return noticeMapper.selectList();
	}

	@Override
	public NoticeDto selectOne(int boardno) {
		return noticeMapper.selectOne(boardno);
	}
	
	@Override
	public int insert(NoticeDto dto) {
		return noticeMapper.insert(dto);
	}

	@Override
	public int update(NoticeDto dto) {
		return noticeMapper.update(dto);
	}

	@Override
	public int delete(int boardno) {
		return noticeMapper.delete(boardno);
	}
}
