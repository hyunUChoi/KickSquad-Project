<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=0.6">
<title>Document</title>
<!-- 구글폰트-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap"
	rel="stylesheet" />
<!-- reset.css cdn! 브라우저 초기화-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<!--구글 아이콘-->

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<!-- SWIPER -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>
<!--jQuery CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--부스스트랩 모달-->


<!--자바스크립트 -->

<script defer src="resources/js/main.js"></script>
<link rel="stylesheet" href="resources/css/main.css">

</head>
<body>

	<div class="main">
		<div>
			<img src="resources/image/out-line.png" alt="header">
		</div>
		<div class="middle">
			<div class="head">
				<h2>KickSquad</h2>

				<c:if test="${!empty mvo}">
					<div class="session">
						<span class="material-icons">person</span> <span>${mvo.name}님</span>
					</div>
				</c:if>
				<c:if test="${empty mvo}">
					<div class="session">
						<span class="material-icons">person</span> <span></span>
					</div>
				</c:if>
			</div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<a href="javascript:void(0)">공지사항1</a>
					</div>
					<div class="swiper-slide">
						<a href="javascript:void(0)">공지사항2</a>
					</div>
					<div class="swiper-slide">
						<a href="javascript:void(0)">공지사항3</a>
					</div>
					<div class="swiper-slide">
						<a href="javascript:void(0)">공지사항4</a>
					</div>
				</div>
			</div>
			<div class="menubar">
				<div id="sidebar" onclick="sidebar()" class="material-icons">menu</div>
			</div>
			<div class="sidebar">
				<ul class="sidebar-list">
					<li></li>
					<li id="sign-in" class="btn-open-popup">로그인</li>
					<li>나의정보</li>
					<li>고객센터</li>
					<li>서비스 안내</li>
				</ul>
			</div>
			<div class="body2">
				<div class="inner">
					<div class="inner-top">
						<img class="img1" src="resources/image/운행내역2.jpg" alt="">
					</div>
					<div class="inner-top">
						<img class="img2" src="resources/image/주차가이드.png" alt="">
					</div>
					<div class="inner-drive">
						ㅇ <img class="dri" src="resources/image/메뉴바8246.png" alt="">

					</div>
				</div>
				<div class="inner2">
					<div class="inner-middle">
						<img class="middle-img1" src="resources/image/고객센터.png" alt="고객센터">
					</div>
					<div class="inner-middle">
						<img class="middle-img2" src="resources/image/서비스안내.png"
							alt="서비스안내">
					</div>
				</div>

				<div class="promotion">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="resources/image/일러스트1.png" alt="슬라이드1" /> <a
									href="javascript:void(0)" class="btn">자세히 보기</a>
							</div>
							<div class="swiper-slide">
								<img src="resources/image/일러스트1.png" alt="슬라이드1" /> <a
									href="javascript:void(0)" class="btn">자세히 보기</a>
							</div>
							<div class="swiper-slide">
								<img src="resources/image/일러스트1.png" alt="슬라이드1" /> <a
									href="javascript:void(0)" class="btn">자세히 보기</a>
							</div>
							<div class="swiper-slide">
								<img src="resources/image/일러스트1.png" alt="슬라이드1" /> <a
									href="javascript:void(0)" class="btn">자세히 보기</a>
							</div>
							<div class="swiper-slide">
								<img src="resources/image/일러스트1.png" alt="슬라이드1" /> <a
									href="javascript:void(0)" class="btn">자세히 보기</a>
							</div>
						</div>
					</div>
					<div class="swiper-pagination"></div>
					<div class="swiper-prev">
						<div class="material-icons">arrow_back</div>
					</div>
					<div class="swiper-next">
						<div class="material-icons">arrow_forward</div>
					</div>
				</div>

			</div>
			<div class="footer">
				<div class="foot-menu1"></div>
				<div class="foot-menu2"></div>
			</div>
		</div>
		<!-- 버튼 클릭시 모달창 오픈-->

		<div class="modal">
			<div class="modal_body">
				<div class="modal_header">
					<h3>로그인</h3>
					<h3>회원가입</h3>
				</div>
				<div class="modal_login">

					<table>
						<tr>
							<td><span class="material-icons">person</span></td>
							<td><input class="input-text1" type="text" id="id2" name="id"
								placeholder="아이디를 입력해주세요."></td>
						</tr>
						<tr>
							<td><span class="material-icons">lock</span></td>
							<td><input class="input-text1" type="password" id="pw2" name="pw"
								placeholder="비밀번호를 입력해주세요."></td>
						</tr>
						<tr>
							<td><button onclick="loginService()">로그인</button></td>
						</tr>
					</table>

				</div>
				<div class="modal_middle">

					<table>
						<tr>
							<td><span class="material-icons">person</span></td>
							<td><input id="id2" class="input-text" name="id" type="text"
								placeholder="아이디를 입력하세요(필수)" /></td>
						</tr>
						<tr>
							<td><span class="material-icons">lock</span></td>
							<td><input id="pw2"  class="input-text" name="pw" type="password"
								placeholder="비밀번호를 입력해주세요(필수)" /></td>
						</tr>
						<tr>
							<td><span class="material-icons">badge</span></td>
							<td><input id="name2"  class="input-text" name="name" type="text"
								placeholder="이름을 입력해주세요." /></td>
						</tr>
						<tr>
							<td><span class="material-icons">call</span></td>
							<td><input id="tel2" class="input-text" name="tel" type="text"
								placeholder="전화번호를 입력해주세요." /></td>
						<tr>
							<td><input type="checkbox">이용약관 동의</td>
							<td>보기</td>
						</tr>
						<tr>
							<td><input type="checkbox">개인정보수집이용 동의</td>
							<td>보기</td>
						</tr>
						<tr>
							<td><input type="checkbox">만 16세이상입니다.</td>
						</tr>
						<tr>
							<td>
								<button onclick="registerService()" >회원가입</button>
							</td>
						</tr>


						</tr>
					</table>

				</div>
			</div>
			<span class="material-icons .btn-close">cancel</span>
		</div>


	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script >
	
function registerService(){
		
	console.log($('#id2').val());
	console.log($('#pw2').val());
	console.log($('#name2').val());
	console.log($('#tel2').val());
		
		$.ajax({
			//서버 url
			url : '${cpath}/register.do',
			// data : 보내줄 데이터를 객체 형식으로 넘겨줬었음! {'idx ': }
			// var formdata = $('#frm').serialize();
			// form 태그 안에 있는 input, textarea등등에 name값이 달려있는 태그들의 값을 가져와서
			// 직렬화 시키는 함수!
			data : {
				'id' : $('#id2').val(),
				'pw' : $('#pw2').val(),
				'name' : $('#name2').val(),
				'tel' : $('#tel2').val()
				},
			// 요청방식
			type : 'post',
			// 받아올 데이터 타입 지정
			// 성공했을 때 실행할 함수  
			success :""

			    ,
			// 실패했을 때 실행할 함수
			error : function() {

				alert('실패!');
			}
		})
}
	
	
	function loginService(){
		
		$.ajax({
			//서버 url
			url : '${cpath}/login.do',
			// data : 보내줄 데이터를 객체 형식으로 넘겨줬었음! {'idx ': }
			// var formdata = $('#frm').serialize();
			// form 태그 안에 있는 input, textarea등등에 name값이 달려있는 태그들의 값을 가져와서
			// 직렬화 시키는 함수!
			data : {
				'id' : $('#id2').val(),
				'pw' : $('#pw2').val()
				},
			// 요청방식
			type : 'post',
			// 받아올 데이터 타입 지정
			// 성공했을 때 실행할 함수  
			success : 
				function() {
				window.location.href="http://localhost:8090/web/basic.do";
				alert('성공!');
				
			},
			// 실패했을 때 실행할 함수
			error : function() {

				alert('실패!');
			}
		})
		
		
		
		
		
		
		
	}
	
	
	
	</script>


</body>
</html>