package kr.smhrd.controller.rest;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.model.DrivingVO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.service.MainService;

@RequestMapping("/check")
@RestController
public class CheckController {

	private MainService service;
	
	@RequestMapping("/id.do")
	public int checkAjax(MemberVO mvo) {
		int cnt =service.checkAjax(mvo);
		return cnt;
	}
	
	@RequestMapping("/parking.do")
	public int checkParkingAjax(int drinum) {
		int cnt = service.checkParking(drinum);
		return cnt;
	}
	
	@RequestMapping("/detection.do")
	public ArrayList<String> checkDetectionAjax(int drinum) {
		ArrayList<String> list = service.checkDetect(drinum);
		return list;
	}
	
	@RequestMapping("/driving.do")
	public DrivingVO checkDrivingAjax(int drinum) {
		DrivingVO dvo = service.checkDriving(drinum);
		return dvo;
	}
}
