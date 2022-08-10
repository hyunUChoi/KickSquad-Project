package kr.smhrd.model;

import lombok.Data;

// 감지정보를 저장하는 테이블
@Data
public class DetectVO {
	private int detnum;
	private int drinum;
	private String dettime;
	private String detname;
	private int detcnt;
}
