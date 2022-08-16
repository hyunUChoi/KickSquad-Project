package kr.smhrd.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.mapper.MainMapper;
import kr.smhrd.model.DrivingVO;
import kr.smhrd.model.MemberVO;

@Service
public class MainService {

	@Autowired
	private MainMapper mapper;

	public void registerAjax(MemberVO mvo) {

		int cnt = mapper.register(mvo);

		if (cnt > 0) {

			System.out.println("join success");

		} else {

			System.out.println("join fail");
			
		}

	}

	public void loginAjax(MemberVO mvo, HttpSession session) {


		MemberVO mvo2 = mapper.login(mvo);


		if (mvo2 != null) {
			session.setAttribute("mvo", mvo2);
			System.out.println("login success");

		} else {
			System.out.println("login fail");

		}

	}

	public int checkAjax(MemberVO mvo) {


		int cnt = mapper.check(mvo);

		System.out.println("cnt -> " + cnt);

		return cnt;
	}

	public int driveInsert(DrivingVO dvo) {

		System.out.println("param dvo -> " + dvo);
		// 1. 주행정보_tb에 insert
		int cnt = mapper.insertDriving(dvo);

		if (cnt > 0) {
			System.out.println("insert driving_tb success, cnt -> " + cnt);
		} else {
			System.out.println("insert driving_tb fail, cnt -> " + cnt);
		}
		System.out.println(dvo.getFtime());
		// 2. 주행정보_tb에 주행시작시간으로 검색해서
		// 방금 생긴 데이터의 주행번호를 리턴
		int drinum = mapper.drivingSelect(dvo.getFtime());
		
		System.out.println(drinum);
		return drinum;

	}

	public int checkParking(int dnum) {

		System.out.println("param dnum -> " + dnum);

		int cnt = mapper.checkParking(dnum);

		if (cnt > 0) {
			System.out.println("checkParking success, cnt -> " + cnt);
		} else {
			System.out.println("checkParking fail, cnt -> " + cnt);
		}

		return cnt;

	}

	public ArrayList<String> checkDetect(int dnum) {

		System.out.println("param dnum -> " + dnum);

		String total = Integer.toString(mapper.cntDrinum(dnum));
		String helmet = Integer.toString(mapper.cntDrinumHelmet(dnum));
		String head = Integer.toString(mapper.cntDrinumHead(dnum));
		String two = Integer.toString(mapper.cntDrinumTwo(dnum));
		
		ArrayList<String> list = new ArrayList<String>();

//		int total = mapper.cntDrinum(dnum);
//		int helmet = mapper.cntDrinumHelmet(dnum);
//		int head = mapper.cntDrinumHead(dnum);
//		int two = mapper.cntDrinumTwo(dnum);

//		ArrayList<Integer> list = new ArrayList<Integer>();
		System.out.println("total : " + total);
		System.out.println("helmet : " + helmet);
		System.out.println("head : " + head);
		System.out.println("two : " + two);

		list.add(total);
		list.add(helmet);
		list.add(head);
		list.add(two);

		return list;

	}

	public DrivingVO checkDriving(int drinum) {

		System.out.println("param drinum -> " + drinum);

		DrivingVO dvo = mapper.checkDriving(drinum);

		if (dvo != null) {
			System.out.println("checkDriving sucess, dvo -> " + dvo);
		} else {
			System.out.println("checkDriving fail, dvo -> " + dvo);
		}

		return dvo;
	}

	public void updatePoint(String id,int point) {

		if(point == 3) {
			
			mapper.point3(id);
			
		}else if(point == 6) {
			mapper.point6(id);
			
		}else if(point ==9) {
			
			mapper.point9(id);
			
		}
		
	}

	
	
	public void updateSession(String id,HttpSession session) {
		
		MemberVO mvo2 = mapper.sessionUpdate(id);
		
		
		session.setAttribute("mvo", mvo2);
		
	}
		

}
