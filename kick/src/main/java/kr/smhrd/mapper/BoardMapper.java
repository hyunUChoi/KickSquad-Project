package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.model.BoardVO;
import kr.smhrd.model.MemberVO;

public interface BoardMapper {

	public List<BoardVO> boardList();	
	
	public void boardInsert(BoardVO vo);	
	
	public BoardVO boardSearch(int idx);

	// 쿼리문이 간단하다면 위쪽에 annotation을 추가해서 처리할 수 있다
	@Delete("delete from board2 where idx = #{idx}")
	public void boardDelete(int idx);

	public void boardUpdate(BoardVO bvo); 
	
	@Update("update board2 set contents=#{contents}, indate=now() where idx=#{idx}")
	public void boardUpdateAjax(BoardVO vo);
	
	@Select("select * from member where id = #{id} and pw = #{pw}")
	public MemberVO memberLogin(MemberVO vo);
}
