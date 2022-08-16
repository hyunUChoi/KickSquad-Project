<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=0.6 user-scalable=no" />
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
<link rel="stylesheet" href="resources/css/main.css" />
</head>

<body>
	<div class="main">
		<div>
			<img src="resources/image/상단바2.png" alt="header" class="main-img1" />
			<img src="resources/image/out-line2.png" alt="header"
				class="main-img2" />
		</div>
		<!-- 메인화면 페이지 -->
		<div class="middle">
			<div class="head">
				<h2>
					<a href="http://localhost:8090/web/basic.do"> KickSquad</a>
				</h2>

				<c:if test="${!empty mvo}">
					<div class="session">
						<span class="material-icons">person</span> <span>${mvo.name}님</span>
						<span onclick='location.href="${cpath}/logout.do"'
							class="material-icons">logout</span>
					</div>
				</c:if>
				<c:if test="${empty mvo}">
					<div class="session">
						<span class="material-icons">person</span> <span></span>
					</div>
				</c:if>

			</div>

			<div class="head-middle">
				<span>공지사항</span> <span onclick="slidedown()" class="material-icons">vertical_align_bottom</span>
				<span onclick="slideup()" id="top" class="material-icons">vertical_align_top</span>
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
			<!--  공지사항 내부 입력창 -->
			<div class="modal-slide-down">
				<div class="swiper mySwiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">Slide 1</div>
						<div class="swiper-slide">Slide 2</div>
						<div class="swiper-slide">Slide 3</div>
						<div class="swiper-slide">Slide 4</div>
						<div class="swiper-slide">Slide 5</div>
						<div class="swiper-slide">Slide 6</div>
						<div class="swiper-slide">Slide 7</div>
						<div class="swiper-slide">Slide 8</div>
						<div class="swiper-slide">Slide 9</div>
					</div>
					<div class="icons-outline">
						<span class="material-icons">swipe</span>
					</div>
					<div class="swiper-scrollbar"></div>
				</div>
			</div>



			<c:if test="${empty mvo.name}">
				<div class="body2">
					<div onclick="alert12()" class="inner">
						<div class="inner-top">운행내역</div>
						<div class="inner-top">킥보드찾기</div>
						<div class="inner-drive">

							<div class="btn1">주행하기</div>
						</div>
					</div>
			</c:if>
			<c:if test="${!empty mvo.name}">
				<div class="body2">
					<div class="inner">
						<div class="inner-top">운행내역</div>
						<div onclick="movemap()" class="inner-top">킥보드찾기</div>
						<div class="inner-drive">

							<div onclick="movedrive()" class="btn1">주행하기</div>
						</div>
					</div>
			</c:if>
			<div class="inner2">
				<div class="inner-middle1">
					<div class="middle1-inner1">
						<div class="text-group1">
							<c:if test="${!empty mvo.name}">
								<span>${mvo.name}님이</span>
								<p>지구를 아껴준 시간</p>
							</c:if>
						</div>
					</div>
					<div class="middle1-inner2"></div>
				</div>
				<div class="inner-middle2">
					<div class="text-group">
						<c:choose>
							<c:when test="${mvo.grade == 'white'}">
								<div>
									<span class="getgrade">${mvo.grade}등급</span> <span>
										(다음등급까지 <c:set var="add" value="${100 - mvo.point}">
										</c:set> ${add}P)
									</span>
								</div>
								<div class="point-box">
									<span class="point1">${mvo.point}</span> <span class="point2">/100P</span>
								</div>
								<div class="pointbar">

									<div style="width:${mvo.point}%" class="bar"></div>
								</div>
							</c:when>

							<c:when test="${mvo.grade == 'gold'}">
								<div>
									<span class="getgrade">${mvo.grade}등급</span> <span>(다음등급까지<c:set
											var="add" value="${300 - mvo.point}"></c:set>${add}P)</span>
								</div>
								<div class="point-box">
									<span class="point1">${mvo.point}</span> <span class="point2">/300P</span>
								</div>
								<div class="pointbar">
									<c:set var="point" value="${(mvo.point-100)/2}">
									</c:set>
									<div style="width:${point}%" class="bar"></div>
								</div>
							</c:when>

							<c:when test="${mvo.grade == 'vip'}">
								<div>
									<span class="getgrade">${mvo.grade}등급</span> <span>(다음등급까지<c:set
											var="add" value="${500 - mvo.point}"></c:set>${add}P)</span>
								</div>
								<div class="point-box">
									<span class="point1">${mvo.point}</span> <span class="point2">/500P</span>
								</div>
								<div class="pointbar">
									<c:set var="point" value="${(mvo.point -300)/2}">
									</c:set>
									<div style="width:${point}%" class="bar"></div>
								</div>
							</c:when>

							<c:when test="${mvo.grade == 'vvip'}">
								<div>
									<span class="getgrade">${mvo.grade}</span> <span>(마지막등급입니다.)</span>
								</div>
								<div class="point-box">
									<span class="point1">${mvo.point}</span>
								</div>
								<div class="pointbar">
									<div style="width:${mvo.point}%" class="bar"></div>
								</div>
							</c:when>


							<c:otherwise>
								<div class="btn-open-popup">
									<div class="popup1-btn">
										로그인이 필요한 서비스입니다. <span>Login</span> <span
											class="material-icons" id="mlogin">login</span>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="inner-middle3">
					<div class="middle3-inner1"></div>
					<div class="middle3-inner2"></div>
				</div>
			</div>

			<div class="promotion">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="resources/image/일러스트0.png" alt="슬라이드1" /> <a
								class="btn">자세히 보기</a>
						</div>
						<div class="swiper-slide">
							<img src="resources/image/일러스트1.png" alt="슬라이드1" /> <a
								class="btn">자세히 보기</a>
						</div>
						<div class="swiper-slide">
							<img src="resources/image/일러스트2.jpg" alt="슬라이드1" /> <a
								class="btn">자세히 보기</a>
						</div>
						<div class="swiper-slide">
							<img src="resources/image/일러스트3.jpg" alt="슬라이드1" /> <a
								class="btn">자세히 보기</a>
						</div>
						<div class="swiper-slide">
							<img src="resources/image/일러스트4.jpg" alt="슬라이드1" /> <a
								class="btn">자세히 보기</a>
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
			<div class="footer-inner1">
				<div class="foot-text-group">
					<span class="material-icons">article</span> <span>서비스 안내</span>
				</div>
			</div>



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
						<td><input class="input-text1" type="text" id="id1" name="id"
							placeholder="아이디를 입력해주세요." /></td>
					</tr>

					<tr>
						<td><span class="material-icons">lock</span></td>
						<td><input class="input-text1" type="password" id="pw1"
							name="pw" placeholder="비밀번호를 입력해주세요." /></td>
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
							autocomplete="username" required oninput="checkId()"
							placeholder="아이디를 입력하세요(필수)" /></td>
					</tr>
					<tr>
						<td><span class="id_ok"> 사용 가능한 아이디입니다.</span> <span
							class="id_already"> 누군가 이 아이디를 사용하고 있어요.</span></td>
					</tr>
					<tr>
						<td><span class="material-icons">lock</span></td>
						<td><input id="pw2" class="input-text" name="pw"
							type="password" placeholder="비밀번호를 입력해주세요(필수)" /></td>
					</tr>
					<tr>
						<td><span class="material-icons">badge</span></td>
						<td><input id="name2" class="input-text" name="name"
							type="text" placeholder="이름을 입력해주세요." /></td>
					</tr>
					<tr>
						<td><span class="material-icons">call</span></td>
						<td><input id="tel2" class="input-text" name="tel"
							type="text" placeholder="전화번호를 입력해주세요." /></td>
					</tr>

					<tr>
						<td><input type="checkbox" />이용약관 동의</td>
						<td>보기</td>
					</tr>
					<tr>
						<td><input type="checkbox" />개인정보수집이용 동의</td>
						<td>보기</td>
					</tr>
					<tr>
						<td><input type="checkbox" />만 16세이상입니다.</td>
					</tr>
					<tr>
						<td>
							<button onclick="registerService()">회원가입</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<span class="material-icons .btn-close">cancel</span>
	</div>

	<!--  운행시작-종료 페이지  -->
	<section class="drive-inner">
		<div class="drive-inner-in">
			<div class="drive-inner-head"></div>
			<div class="drive-inner-main">
				<video type="video/mp4" autoplay loop width="450" height="800"></video>
				<div class="warning"></div>
			</div>
			<div class="drive-inner-foot">

				<div class="footstart">운행시작</div>
				<div class="footend">운행종료</div>
				<input id="mvoid" type="hidden" value="${mvo.id}">
			</div>
		</div>
	</section>






	<!-- 주차 등록 페이지 -->
	<section class="parking">

		<img class="parkingimage" src="">
		<div class="parking-body">
			<div class="body-top"></div>
			<div class="body-middle">
				<div class="middle-left"></div>
				<div class="middle-middle">
					<div class="middle-outline">
						<div class="middle-alert">
							<p>킥보드를 네모 영역에 맞춰 촬영해주세요</p>
						</div>

						<div class="parkingFail">킥보드를 인식하지못하였습니다</div>

					</div>
				</div>
				<div class="middle-right"></div>
			</div>
			<div class="body-foot">
				<div class="circle">
					<label class="circle-label" for="circle-btn"></label> <input
						type="file" id="circle-btn" name="circle-btn" class="circle-btn">
					<button class="circle-submit" id="btn_submit"></button>
				</div>
			</div>




		</div>
	</section>

	<!-- 주행기록 페이지 -->
	<section class="drive-record">
		<div class="record">
			<div class="inner1">
				<div class="header">
					<p>운행종료</p>
				</div>

			</div>

			<div class="inner2">
				<div class="inner-middle1">
					<div class="middle1-inner1">
						<div class="text-group1">
							<c:if test="${!empty mvo.name}">
								<span>${mvo.name}</span>
								<p>님</p>
							</c:if>
						</div>
					</div>
					<div class="middle1-inner2"></div>
				</div>
				<div class="inner-middle2">
					<div class="text-group">
						<c:choose>
							<c:when test="${mvo.grade == 'white'}">
								<div>
									<span class="getgrade">${mvo.grade}등급</span>
								</div>

								<div class="pointbar">

									<div style="width:${mvo.point}%" class="bar"></div>
								</div>
							</c:when>

							<c:when test="${mvo.grade == 'gold'}">
								<div>
									<span class="getgrade">${mvo.grade}등급</span>
								</div>

								<div class="pointbar">
									<c:set var="point" value="${(mvo.point-100)/2}">
									</c:set>
									<div style="width:${point}%" class="bar"></div>
								</div>
							</c:when>

							<c:when test="${mvo.grade == 'vip'}">
								<div>
									<span class="getgrade">${mvo.grade}등급</span>
								</div>

								<div class="pointbar">
									<c:set var="point" value="${(mvo.point -300)/2}">
									</c:set>
									<div style="width:${point}%" class="bar">
									<div class="finishbar"></div></div> 
								</div>
							</c:when>

							<c:when test="${mvo.grade == 'vvip'}">
								<div>
									<span class="getgrade">${mvo.grade}</span> <span>(마지막등급입니다.)</span>
								</div>

								<div class="pointbar">
									<div style="width:${mvo.point}%" class="bar"></div>
								</div>
							</c:when>


							<c:otherwise>

							</c:otherwise>
						</c:choose>
					</div>
				</div>

			</div>
			<div class="inner3">

				<ul>이용내역
				</ul>
				<ul class="inner3-list">
					<li>탑승자 아이디</li>
				</ul>
				<ul class="inner3-list">
					<li>탑승 일자</li>
				</ul>
				<ul class="inner3-list">
					<li>주행 시작</li>
	
				</ul>
				<ul class="inner3-list">
					<li>주행 종료</li>
				</ul>




			</div>
			<div class="inner4">

				<ul>감지 정보
				</ul>
				<ul class="inner4-list">
					<li>헬멧 착용</li>
				</ul>
				<ul class="inner4-list">
					<li>동반 탑승</li>
				</ul>
				<ul class="inner4-list">
					<li>주차 여부</li>
				</ul>




			</div>
			<div class="inner5">
				<span  onclick="movehome()" class="material-icons home">home</span>
			</div>


		</div>



	</section>

	<!-- 공지사항 open-->
	<section class="openlist">

		<img alt="사진들어올곳" src=""> <span id="btn-close"
			class="material-icons">close</span>




	</section>


	<!-- 킥보드 찾기 open-->

	<section class="map-inner">
		<div class="map-box">
			<div class="box-head">킥보드 찾기</div>
			<div class="mbox1" id="map"></div>
			<div onclick="movehome()" class="mbox2">
				<span class="material-icons home">home</span>
			</div>
		</div>
	</section>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3d75a41bbb55475bec63a4ca074a7d2e"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>




	<script>
		
	$('#btn-close').click(function() {
		
		$('.openlist').fadeOut(200);
		
		
		
		
		
	});
	

	
	
	var btns = document.querySelectorAll('.btn');
	var path1 = ['resources/image/일러스트0.png',
				'resources/image/일러스트1.png',
				'resources/image/일러스트2.jpg',
				'resources/image/일러스트3.jpg',
				'resources/image/일러스트4.jpg']

		
		btns[0].addEventListener('click', () => {
		    
			$('.openlist').fadeIn(200);
			
		
			$('.openlist>img').attr('src',path1[0]);
			
			
		   
      });
	
		btns[1].addEventListener('click', () => {
		    
			$('.openlist').fadeIn(200);
			
		
			$('.openlist>img').attr('src',path1[1]);
			
			
		   
      });
		btns[2].addEventListener('click', () => {
		    
			$('.openlist').fadeIn(200);
			
			
			$('.openlist>img').attr('src',path1[2]);
			
			
		   
      });
		
		btns[3].addEventListener('click', () => {
		    
			$('.openlist').fadeIn(200);
			
			
			$('.openlist>img').attr('src',path1[3]);
			
			
		   
      });
		
		btns[4].addEventListener('click', () => {
		    
			$('.openlist').fadeIn(200);
			
		
			$('.openlist>img').attr('src',path1[4]);
			
			
		   
      });

			  

		
		$('.inner5').click(function() {

			$('.drive-record').fadeOut(300);
			$('.middle').fadeIn(300);

		});

		var drinum = 0;
		var detsrc = "";
		//----------- 파일첨부 ---------------------
		
		$('.circle-btn').click(function() {

			var sel_file;
			var reader = new FileReader();

		
				$(".circle-btn").on("change", handleImgFileSelect);
				$(".circle-btn").css("z-index","0");
				$(".circle-submit").css("z-index","1");
				
		
		///---------미리보기 -------------------
		
			function handleImgFileSelect(e) {
				var files = e.target.files;
				var filesArr = Array.prototype.slice.call(files);
				var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;

				filesArr.forEach(function(f) {
					if (!f.type.match(reg)) {
						alert("이미지 확장자만 가능합니다 (jpg, jpeg, png, bmp)");
						return;
					}

					sel_file = f;
					reader.onload = function(e) {
						console.log(e.target.result);
						$(".parkingimage").css('opacity','1');
						$(".parkingimage").attr("src", e.target.result);
					}
					reader.readAsDataURL(f);
				});
			}

		});	
		
		
			//-------- flask ------------------
			
			$(".circle-submit").on("click",function(){
				
				let file = $('.circle-btn')[0].files[0]
				let form_data = new FormData()
			
				console.log(drinum);
				
			
				
				
				form_data.append('file', file)
				
				
				$.ajax({
					type : 'post',
					url : 'http://172.30.1.25:3500/det-sqooter?drinum='+drinum,
					data : form_data,
					cache : false,
					contentType: false,
			        processData: false,
			        async : false,
		 			success : function(res){
		 				console.log(res);
		 				
		 				$(".circle-btn").css("z-index","1");
						$(".circle-submit").css("z-index","0");
		 				detsrc = res;
		 				
		 			 checkparking();
		 				
		 				
		 			},
					error : function(){
						alert('접속실패')
						$(".circle-btn").css("z-index","1");
						$(".circle-submit").css("z-index","0");
						
						
					}
				});
				
				
			
			
			
			

		});
		
			//-------------디텍딩 테이블에 insert가 되어있는지 안되어있는지 판단--------------------\
			
			function checkparking(){
				console.log('체크파킹()');
				
				$.ajax({
					//서버 url
					url : '${cpath}/check/parking.do',
					
					data : {
						'dnum' : drinum},
					// 요청방식
					type : 'post', 
					// 받아올 데이터 타입 지정
					// 성공했을 때 실행할 함수
					success : function(res){
						
						if(res>0){
							alert('주차성공')
							console.log(detsrc);
							$('.middle-outline').css('border','10px solid #19B652');
							$('.parkingimage').css('position','relative');
							$('.parkingimage').css('z-index','2');
						
							setTimeout(function() {
			 					$('.parking').fadeOut(300);
			 					$('.parkingimage').css('position','');
			 					$(".parkingimage").attr("src", "");
								$('.parkingimage').css('z-index','0');
				 				$('.drive-record').fadeIn(300);
			 				}, 1000);
							
							//-- 디텍딩된 사진 출력
							$(".parkingimage").attr("src", "resources/result/"+detsrc);
							
							//-- 주차화면에서 주행기록 페이지에서 넘어갈때  감지테이블 셀렉 ajax 실행할 함수
							
							
							//탑승자 아이디 정보
							searchDrinum();
							
							
							// 감지테이블 정보
							illegalcheck();
						
							
							
							
						}else{
							console.log('주차실패');
							
							$('.parkingFail').fadeIn(1500);
							$('.parkingFail').fadeOut(1500);
							$('.parkingFail').fadeIn(1500);
							$('.parkingFail').fadeOut(1500);
							$('.middle-outline').css('border','10px solid orangered');
							$('.circle-label').css('z-index','1');
							$('.circle-submit').css('z-index','0');
							$(".parkingimage").css('opacity','0');
							$(".parkingimage").css('position',"");
							$(".parkingimage").attr("src", "");
							
							
						}
						
						
						
						
					},
					// 실패했을 때 실행할 함수
					error : function() {
	
						alert('실패!');
					}
				})
				
				
				
				
				
			}
			
			
			
			
//--------------------주행번호---------------------
			function drivingnum(res){
					
					return res;
				}
		
//------------주차테이블 셀렉-----------------
		
			function searchDrinum(){
					
				
				$.ajax({
					url : '${cpath}/check/detection.do',
					dataType : 'json',
					data : {'drinum' : drinum},
					type : 'post',
					success : function(res){
					
						console.log(res.ddate);
						var id = '<li>'+res['id']+'</li>';
						var date ='<li>'+res['ddate']+'</li>';
						var stime ='<li>'+res['stime']+'</li>';
						var ftime = '<li>'+res['ftime']+'</li>';
						
						$('.inner3 .inner3-list:nth-child(2) li').after(id);
						$('.inner3 .inner3-list:nth-child(3) li').after(date);
						$('.inner3 .inner3-list:nth-child(4) li').after(stime);
						$('.inner3 .inner3-list:nth-child(5) li').after(ftime);	
						
						
							
					},
					// 실패했을 때 실행할 함수
					error : function() {
	
						alert('실패!');
					}
				})
	
	
	
	
				}
		
		
		
		
		
//---------------감지테이블 셀렉----------------------
		
			function illegalcheck(){
				
				
				console.log(drinum);
				
				$.ajax({
					url : '${cpath}/check/detection.do',
					data : {'drinum' : drinum},
					dataType:'json',
					type : 'post',
					success : function(res){
					console.log(res);
					
					
					var all = res[0];
					var helmet = res[1];
					 var head = res[2];
					var two = res[3];
					
					var add = "";
					var add2 = "";
					
					var greencheck = "<li><span style = 'color:#19B652' class='material-icons'>done</span></li> <li class='flexbox'> <span>point+</span><span class='pointbold'>3</span></li>"
					var redcheck = "<li><span style = 'color:red' class='material-icons'>done</span></li> <li class='flexbox'> <span>point+</span><span class='pointbold'>0</span></li>"
					
					var greenX = "<li><span style = 'color:#19B652' class='material-icons'>close</span></li>  <li class='flexbox'><span>point+</span><span class='pointbold'>3</span><li>"
					var redX = "<li><span style = 'color:red' class='material-icons'>close</span></li> <li class='flexbox'> <span>point+</span><span class='pointbold'>0</span></li>"
					//70프로 이상
					
					if((all*0.7) <helmet){
						
						
						
						if((all*0.05) <two){
							
						add= greencheck;
						add2= redcheck;
						
						}else{
							
							add= greencheck;
							add2= greenX;
						
						}
						
						
						
					}else if((all*0.3) <head){
						
						if((all*0.05) <two){
							
							add = redX;
							add2 = redcheck;
							
						}else{
							
							add = redX;
							add2 = redcheck;
						
						}
						
						
					}
					
					console.log(add);
					console.log(add2);
					
					
					
					$('.inner4 .inner4-list:nth-child(2) li').after(add);
					$('.inner4 .inner4-list:nth-child(3) li').after(add2);
					$('.inner4 .inner4-list:nth-child(4) li').after(greencheck);
					
					
					
					
					},
					// 실패했을 때 실행할 함수
					error : function() {
	
						alert('실패!');
					}
				})
				
				
				
				
			}
		
//---------------------------------------------------------------------------------
		
		
		
$('.footend').click(function(){
			
	$('.drive-inner').fadeOut(300);
	$('.parking').fadeIn(300);
	$('.footstart').css('display','flex').delay(500);
	
	
	if($('.parking').css('display') == 'block'){
		 
	 $('.main').css( { transition: "transform 0.5s",
	                  transform:  "rotate(" + 0 + "deg)" } );

	setTimeout( function() { $('.drive-inner').css( { transition: "none" } ) }, 500 );
			 }
			
	
			
		});
		

		function getTodayType(){
			var date = new Date();
			arrDayStr = ['일','월','화','수','목','금','토'];
			return date.getFullYear() + "-" + ("0"+(date.getMonth()+1)).slice(-2) + "-" + ("0"+date.getDate()).slice(-2)+"("+arrDayStr[date.getDay()]+")";
			
			
		}
		
		function getTodayType2(){
			var date = new Date();
			return date.toLocaleString().slice(-11);
			
		}
		
		$('.footstart').click(function() {

			$('video').attr('src', 'resources/videos/video1.mp4');
			$('.footstart').fadeOut(500);

			 var today = getTodayType(); // 0000-00-00
			 console.log(today);
			 var thour = getTodayType2(); //  시 분 초
			 console.log(thour)
			
			 
			 
			 return footend(today, thour)
		});

		
		
		
		function footend(today, thour){
			console.log(today+"ss")
			console.log(thour+"ss")
			
		$('.footend').click(function(){
			var c = getTodayType2();
				console.log(c);
			var a =$('#mvoid').val();
			
			console.log(a);
				$.ajax({
					//서버 url
					url : '${cpath}/create-driving.do',
					
					data : {
						'id' : a,
						'ddate' : today,
						'stime' : thour,
						'ftime' : c
					},
					// 요청방식
					type : 'post',
					// 받아올 데이터 타입 지정
					// 성공했을 때 실행할 함수
					success : function(res){
						
						console.log("주행번호"+res); // Driving 테이블의 주행번호
						drinum = res;
							
					},
					// 실패했을 때 실행할 함수
					error : function() {
	
						alert('실패!');
					}
				})
				
			
			
		})
			
		}
			
		
		
		

		function slidedown() {
			$(".modal-slide-down").slideDown(500);

			$('.head-middle span:nth-child(2)').css('display', 'none');
			$('#top').css('display', 'inline');
			if ($(".modal-slide-down").css('display') == 'block') {

				var swiper = new Swiper(".mySwiper", {
			        
					scrollbar: {
			          el: ".swiper-scrollbar",
			          hide: true,
			        },
			      });

				
			}

		};
		

		function slideup() {

			$(".modal-slide-down").slideUp(500);
			$('.head-middle span:nth-child(2)').css('display', 'inline');
			$('#top').css('display', 'none');
		};
		
		
		function movemap() {

			$(".middle").fadeOut(300);
			$(".map-inner").fadeIn(300);
			
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(35.11070947475487, 126.87780407320705), //지도의 중심좌표
				level: 4 //지도의 레벨(확대, 축소 정도)
			};
			
			
			
			var map = new kakao.maps.Map(container, options);
			
			var positions = [
			    {
			        title: '킥보드1', 
			        latlng: new kakao.maps.LatLng(35.11100073746635, 126.87614729722684)
			    },
			    {
			        title: '킥보드2', 
			        latlng: new kakao.maps.LatLng(35.109825405182264, 126.87708143957963)
			    },
			    {
			        title: '킥보드3', 
			        latlng: new kakao.maps.LatLng(35.11038154435669, 126.87886856195118)
			    },
			    {
			        title: '킥보드4',
			        latlng: new kakao.maps.LatLng(35.111875653865965, 126.87672734442789)
			    },
			    {
			        title: '킥보드5',
			        latlng: new kakao.maps.LatLng(35.10873375965866, 126.87610685165205)
			    },
			    {
			        title: '킥보드6',
			        latlng: new kakao.maps.LatLng(35.11239192598583, 126.87476305627516)
			    },
			    {
			        title: '킥보드7',
			        latlng: new kakao.maps.LatLng(35.10752441927655, 126.87463887855603)
			    },
			    {
			        title: '킥보드8',
			        latlng: new kakao.maps.LatLng(35.1126980722384, 126.87445544538991)
			    },
			    {
			        title: '킥보드9',
			        latlng: new kakao.maps.LatLng(35.11232208567883, 126.87697896655256)
			    },
			    {
			        title: '킥보드10',
			        latlng: new kakao.maps.LatLng(35.10765376945354, 126.8777318534288)
			    },
			    {
			        title: '킥보드11',
			        latlng: new kakao.maps.LatLng(35.10843137508623, 126.88016576632226)
			    },
			    {
			        title: '킥보드12',
			        latlng: new kakao.maps.LatLng(35.10736410967649, 126.87652573345994)
			    },
			    {
			        title: '킥보드13',
			        latlng: new kakao.maps.LatLng(35.10628258277558, 126.87663704971796)
			    },
			    {
			        title: '킥보드14',
			        latlng: new kakao.maps.LatLng(35.11183698533693, 126.87860314596998)
			    },
			    {
			        title: '킥보드15',
			        latlng: new kakao.maps.LatLng(35.10846208840922, 126.87487875645712)
			    },
			    {
			        title: '킥보드16',
			        latlng: new kakao.maps.LatLng(35.10956598419351, 126.87904527202753)
			    },
			    {
			        title: '킥보드17',
			        latlng: new kakao.maps.LatLng(35.111875653865965, 126.87672734442789)
			    },
				{
			        title: '킥보드18',
			        latlng: new kakao.maps.LatLng(35.1065866585952, 126.87431125781616)
			    },
			    {
			        title: '킥보드19',
			        latlng: new kakao.maps.LatLng(35.117612882769315, 126.86819498776724)
			    },
			    {
			        title: '킥보드20',
			        latlng: new kakao.maps.LatLng(35.11797136183733, 126.86630755668526)
			    },
			    {
			        title: '킥보드21',
			        latlng: new kakao.maps.LatLng(35.10399185769106, 126.87541206186094)
			    },
			    {
			        title: '킥보드22',
			        latlng: new kakao.maps.LatLng(35.1102861754955, 126.87814474567917)
			    }
			];

			for (var i = 0; i < positions.length; i ++) {
				var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 지도
			        position: positions[i].latlng, // 마커를 표시할 위치
			        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			    });
			}
		}
		
		function movehome() {
			$(".drive-record").fadeOut(300);
			$(".map-inner").fadeOut(300);
			$(".middle").fadeIn(300);

		}
		
		function movedrive() {

			$(".middle").fadeOut("slow");
			$(".drive-inner").fadeIn("slow");
			
			if($('.drive-inner').css('display') == 'block'){
				 
				 $('.main').css( { transition: "transform 0.5s",transform:  "rotate(" + -90 + "deg)" } );
				 $('.drive-inner-main').css( { transition: "transform 0.5s",transform:  "rotate(" + -90 + "deg)" } );
				 $('.drive-inner-foot').css('height','800');
				 $('.footstart').css( { transition: "transform 0.5s",transform:  "rotate(" + 90 + "deg)" } );
				 $('.footend').css( { transition: "transform 0.5s",transform:  "rotate(" + 90 + "deg)" } );
		setTimeout( function() { $('.drive-inner').css( { transition: "none" } ) }, 500 );
			 }

		}
		

		function registerService() {

			console.log($('#id2').val());
			console.log($('#pw2').val());
			console.log($('#name2').val());
			console.log($('#tel2').val());

			$
					.ajax({
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
						success : function() {
							window.location.href = "http://localhost:8090/web/basic.do";
							alert('성공!');

						},
						// 실패했을 때 실행할 함수
						error : function() {

							alert('실패!');
						}
					})
		}

		function loginService(id, pw) {

			$.ajax({
				//서버 url
				url : '${cpath}/login.do',
				// data : 보내줄 데이터를 객체 형식으로 넘겨줬었음! {'idx ': }
				// var formdata = $('#frm').serialize();
				// form 태그 안에 있는 input, textarea등등에 name값이 달려있는 태그들의 값을 가져와서
				// 직렬화 시키는 함수!
				data : {
					'id' : $('#id1').val(),
					'pw' : $('#pw1').val()
				},
				// 요청방식
				type : 'post',
				// 받아올 데이터 타입 지정
				// 성공했을 때 실행할 함수
				success : move,
				// 실패했을 때 실행할 함수
				error : function() {

					alert('실패!');
				}
			})

		}

		function move() {
			window.location.href = "http://localhost:8090/web/basic.do";
			alert('성공!');

		}

		function alert12() {

			alert('로그인이필요한 서비스입니다.');

		}

		function checkId() {

			var id = $('#id2').val();
			$.ajax({
				url : '${cpath}/check/id.do',
				type : 'post',
				data : {
					'id' : id
				},
				success : function(data) {
					if (data == 0) {

						$('.id_ok').css('display', 'block');
						$('.id_already').css('display', 'none');

					} else if (data == 1) {
						$('.id_ok').css('display', 'none');
						$('.id_already').css('display', 'block');

					}
				}

				,

				error : function() {
					alert("에러입니다");
				}

			});
		};
	</script>
</body>

</html>