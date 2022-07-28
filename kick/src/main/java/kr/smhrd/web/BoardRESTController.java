package kr.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.model.BoardVO;
import kr.smhrd.service.BoardService;

@RestController
public class BoardRESTController {

	@Autowired
	private BoardService service;
	
	@RequestMapping("/boardListAjax.do")
	public List<BoardVO> boardListAjax() {
		// @ResponseBody : 응답에 대한 제어권이 client에게 전부 되돌아간다
		// : converter가 로드가 되어있지 않으면 작동 불가능
		List<BoardVO> list = service.boardListAjax();
		// List -> Gson -> JSON
		// List -> jackson -> JSON
		// 스프링 프레임워크는 jackson 라이브러리를 로드해주기만 하면
		// 자동으로 json 구조로 변환시켜준다.
		
		return list;		
	}
	
	@RequestMapping("/boardInsert.do")
	public void boardInsertAjax(BoardVO vo) {
		service.boardInsertAjax(vo);		
	}
	
	@RequestMapping("/boardDelete.do")
	public void boardDeleteAjax(int idx) {
		service.boardDeleteAjax(idx);
	}
	@RequestMapping("/boardUpdateAjax.do")
	public void boardUpdateAjax(BoardVO vo) {
		service.boardUpdateAjax(vo);
	}
	
}
