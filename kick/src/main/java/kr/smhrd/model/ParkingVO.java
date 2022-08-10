package kr.smhrd.model;

import lombok.Data;

// 주차사진을 저장하는 테이블
@Data
public class ParkingVO {

	private int pnum;  //주차번호
	private String id; // ID
	private int drinum; // 주행번호
	
}
