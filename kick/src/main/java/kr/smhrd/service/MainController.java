package kr.smhrd.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	//@Autowired
	// private BoardMapper mapper;
		
	@RequestMapping("/basic.do")
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
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate(); //세션자체를 무효화
		
		
		return "redirect:/basic.do";
		
	}
	
	@RequestMapping("/moveService.do")
	public String moveService() {
		
		
		
		
		return "redirect:/play.do";
		
	}
	
	
}
