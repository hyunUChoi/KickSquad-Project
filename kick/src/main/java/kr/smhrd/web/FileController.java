package kr.smhrd.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.smhrd.service.FileService;

@Controller
public class FileController {

	@Autowired
	private FileService service;
	
	@RequestMapping("/form.do")
	public String formUpload() {
		return "uploadForm";
	}
	
	@RequestMapping("/upload.do")
	public String upload(MultipartHttpServletRequest multipart, HttpServletRequest request, Model model ){
		// multipart : form 태그에서 보내주는 데이터가 담겨있는 것
		// request : 저장할 경로를 현재 프로젝트 경로로 잡아주려고 받아오는 것
		
		// 1. 저장할 경로 지정
		String path = request.getServletContext().getRealPath("resources/file");
		System.out.println("경로 : " + path);
		Map map = service.upload(multipart, path);
		model.addAttribute("map", map);
		return "result";
	}
	
}
