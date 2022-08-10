package kr.smhrd.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.model.DrivingVO;
import kr.smhrd.model.MemberVO;

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
		System.out.println(mvo+"??");
		service.loginAjax(mvo, session);
		
	}
	
	@RequestMapping("/checkid.do")
	public int checkAjax(MemberVO mvo) {
		int cnt =service.checkAjax(mvo);
		
		return cnt;
	}
	
	@RequestMapping("/insertDrive.do")
	public int driveAjax(DrivingVO dvo) {
		int drinum = service.driveInset(dvo);
		return drinum;
	}
	
	
}
