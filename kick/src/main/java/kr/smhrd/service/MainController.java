package kr.smhrd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	//@Autowired
	// private BoardMapper mapper;
		
	@RequestMapping("/basic")
	public String basic() {
		System.out.println("메인화면");
		return "basic";
	}
	
	@RequestMapping("/play.do")
	public String play() {
		System.out.println("주행화면");
		return "play";
	}
	
	@RequestMapping("/quit.do")
	public String quit() {
		System.out.println("주행종료화면");
		return "quit";
	}
	
}
