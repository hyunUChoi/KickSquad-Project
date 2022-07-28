package kr.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.MemberVO;

@Controller 
public class BoardController {
	
	@Autowired
	private BoardMapper service;
	
	@RequestMapping("/")
	public String basic() {
		return "basic"; 
	}
	
	@RequestMapping("/login.do")
	public String login(MemberVO vo, HttpSession session) {
		// session, request, response 등 필요한 데이터들을 매개변수에 받아온다고 작성하면 spring framework가 자동으로 수집해줌
		MemberVO mvo = service.memberLogin(vo);
		if(mvo!=null) {
			System.out.println("로그인 성공");
			session.setAttribute("mvo", mvo);
		}else {
			System.out.println("로그인 실패");
		}		
		return "redirect:/";
	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
