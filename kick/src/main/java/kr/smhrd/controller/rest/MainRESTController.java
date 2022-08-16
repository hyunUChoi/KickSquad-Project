package kr.smhrd.controller.rest;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.model.DrivingVO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.service.MainService;

@RestController
public class MainRESTController {

	@Autowired
	private MainService service;

	@RequestMapping("/register.do")
	public void registerAjax(MemberVO mvo) {

		service.registerAjax(mvo);

	}

	@RequestMapping("/login.do")
	public void loginAjax(MemberVO mvo, HttpSession session) {

		service.loginAjax(mvo, session);

	}

	@RequestMapping("/insert-driving.do")
	public String insertDriving(DrivingVO dvo) {
		
		int drinum = service.driveInsert(dvo);
		
		return Integer.toString(drinum);
	}
	
	@RequestMapping("/update-point.do")
	public void pointUpdate(int point,String id) {
		
		service.updatePoint(id,point);
		
		
	}
	
	@RequestMapping("/update-session.do")
	public void sessionUpdate(String id,HttpSession session) {
		
		service.updateSession(id,session);
		
		
	}
	
	@RequestMapping("/check-record.do")
	public  List<DrivingVO> checkRecord(String id) {
		
		List<DrivingVO> list = service.checkRecord(id);
		
		return list;
	}
	
	
	

}
