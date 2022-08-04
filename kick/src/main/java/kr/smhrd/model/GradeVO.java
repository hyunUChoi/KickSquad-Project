package kr.smhrd.model;

import lombok.Data;

//회원 등급의 최소/최대값을 정의하는 테이블
@Data
public class GradeVO {

	private String grade;
	private int minpoint;
	private int maxpoint;
}
