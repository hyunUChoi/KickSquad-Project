package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String root() {
		return "basic";
	}
	
	@RequestMapping("/basic.do")
	public String basic() {
		System.out.println("메인화면");
		return "basic";
	}
	
	@RequestMapping("/guide.do")
	public String play() {
		System.out.println("안내화면");
		return "guide";
	}
		
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		
		System.out.println("로그아웃");
		session.invalidate(); //세션자체를 무효화
		
		return "basic";
	}
	
	
	
	
}
