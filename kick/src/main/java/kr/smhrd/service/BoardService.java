package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.model.BoardVO;

@Service
public class BoardService {
	// Business Layer 담당하는 클래스
	// 로직들을 다 가지고 있을 수 있게끔 하는 클래스
	// ex) if문, for문을 활용해서 작업, 받아온 데이터들을 다른 형태로 바꿔주는 로직을 짜는 등등
	// Service 안쪽에는 RequestMapping을 쓰지 않는다
	// 요청 --> FC --> Controller(RequestMapping) --> Service --> Mapper --> DB
	@Autowired
	private BoardMapper mapper;
	
	public List<BoardVO> boardListAjax() {
		List<BoardVO> list = mapper.boardList();
		return list;		
	}
	
	public void boardInsertAjax(BoardVO vo) {
		mapper.boardInsert(vo);		
	}
	
	public void boardDeleteAjax(int idx) {
		mapper.boardDelete(idx);
	}
	public void boardUpdateAjax(BoardVO vo) {
		mapper.boardUpdateAjax(vo);
	}
	
}
