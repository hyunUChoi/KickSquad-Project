package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.model.DrivingVO;
import kr.smhrd.model.MemberVO;

@Mapper
public interface MainMapper {
	
	public int register(MemberVO mvo);
	
	public MemberVO login(MemberVO mvo);

	public int check(MemberVO mvo);
	
	public void drivingInsert(DrivingVO dvo);

	public int drivingSelect(String ftime);

}
