package kr.smhrd.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class FileService {

	public Map upload(MultipartHttpServletRequest multipart, String path) {
		// 1. multipart 안에서 데이터르 하나씩 꺼내와서 정제
		Enumeration<String> data = multipart.getParameterNames();
		
		Map map = new HashMap();
		
		// 2. data안에는 parametername값들이 하나씩 들어가 있을것
		while(data.hasMoreElements()) {
			String key = data.nextElement();
			String value = multipart.getParameter(key);
			map.put(key, value);
		}
		// input tpye = "text" / "password" 코드
		//////////////////////////////////////////////////////////////
		// 3. file들도 하나씩 가져와서 정제하는 작업
		Iterator<String> it = multipart.getFileNames();
		List<String> list = new ArrayList<String>(); // 파일 이름 저장할 변수
		
		while(it.hasNext()) {
			// 파일 명칭 하나씩 가져오기
			String fileName = it.next();
			// 실제 파일을 multipart로부터 꺼내오기
			MultipartFile realFile = multipart.getFile(fileName);
			// list에 저장할 수 있게끔 String 형식으로 변환
			String f = realFile.getOriginalFilename();
			list.add(f);
			
			// 파일 업로드
			File file = new File(path+"\\"+f);
			
			// 파일이 존재하는지 여부 체크
			if(realFile.getSize() != 0) {
				try {
					realFile.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		map.put("fileList", list);
		
		
		return map;
		
		
	}
}
