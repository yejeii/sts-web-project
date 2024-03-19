package com.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zerock.domain.BoardVO;
import com.zerock.domain.Criteria;
import com.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor	
@Log4j
public class BoardServiceImpl implements BoardService {

	// Spring 4.3v부턴 자동주입
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {
		log.info("register..........." + board);
		
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(Long bno) {
		log.info("read...........");
		
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("modify...............");
		
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {
		log.info("remove.............");
		
		return mapper.delete(bno) == 1;
	}

	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("getList(Criteria cri).............." +cri);
		return mapper.getListWithPaging(cri);
	}
	
	

}
