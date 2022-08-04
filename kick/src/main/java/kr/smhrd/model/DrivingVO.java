package kr.smhrd.model;

import lombok.Data;

// 주행정보 테이블
@Data
public class DrivingVO {

	private int dnum;  //주행번호
	private String id;  // ID
	private String ddate; //이용날짜
	private String stime; // 탑승시간
	private String ftime; // 하차시간
	
}
