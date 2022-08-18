<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=0.6 user-scalable=no" />
<title>서비스</title>
<link rel="shortcut icon" href="resources/image/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="resources/image/favicon.ico" type="image/x-icon">
<!-- reset.css cdn! 브라우저 초기화-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
	
	
<link rel="stylesheet" href="resources/css/service.css">
</head>
<body>
	<!-- 영상출력 -->
	<section class="service1">
		<div class="inner" style="height:400px"></div>
	</section>
	
	<!--서비스 소개 단 -->
	<section class="service2">
		<br><br><br>
		<div class="inner">

			<div class="main-service">

				<div class="phoneline"></div>

				<div class="phonebg">
					<div class="main"></div>
					<div class="drive"></div>
					<div class="parking"></div>
					<div class="map"></div>
				</div>
			</div>

			<div class="main-group">
				<div class="title">
					<h1>안전한 전동킥보드 문화</h1>
					<h1>함께 만들어가요!</h1>
				</div>
				<div class="btn-groups" style="height: auto">
					<div id="main" class="btn-group">메인</div>
					<div id="drive" class="btn-group">운행하기</div>
					<div id="parking" class="btn-group">주차하기</div>
					<div id="map" class="btn-group">킥보드 찾기</div>
				</div>

				<div class="main-content" style="padding-top:60px">
					<div class="content1" style="font-weight:520; font-size:0.9em">
						주변의 킥보드 찾기, 킥보드 주행하러 가기
						<br>
						포인트와 운행 내역을 확인할 수 있습니다.
					</div>
					<div class="content2" style="font-weight:520; font-size:0.9em">
						킥보드에 설치되어 있는 거치대에
						<br>
						 휴대폰을 거치하시면 실시간으로
						<br>
						나의 주행 영상을 분석할 수 있습니다.
						<br>
						안전한 킥보드 주행을 통해
						<br>
						포인트를 획득해 보세요!
					</div>
					<div class="content3" style="font-weight:520; font-size:0.9em">
						킥보드의 사진을 등록하시면 실시간으로
						<br>
						정상 주차 여부를 분석할 수 있습니다.
						<br>
						주차를 성공하여 포인트를 획득해 보세요!
					</div>
					<div class="content4" style="font-weight:520; font-size:0.9em">
						가까이에 있는 전동킥보드를 찾을 수 있습니다.
						<br>
						킥보드를 찾아 운행해 보세요!
					</div>
				</div>
			</div>
		</div>
		<br><br><br>
	</section>
	
	<section class="service3">
	
	<div class="inner">
	
	<h3>킥스쿼드와 안전한 주행</h3>
	<div class="riding-navi">
	<ul class="navi-list">
	<li>
	<p> <img alt="" src="resources/image/fig4_01.png"> </p>
	<dl>
	<dt>헬멧 착용 필수!</dt> <dd>안전을 위해서 헬멧을 꼭 착용해 주세요. </dd>
	</dl>
	</li> 
	<li>
	<p> <img alt="" src="resources/image/fig4_02.png"> </p> 
	<dl>
	<dt> 면허 취득 필수!</dt> <dd> 반드시 면허를 취득한 회원만 이용하세요.</dd>
	</dl>
	</li> 
	<li> 
	<p> <img alt="" src="resources/image/fig4_03.png"> </p>
	<dl>
	<dt>음주 후 이용 금지! </dt> <dd>음주 후 탑승은 법률에 의해처벌 대상에 해당돼요. </dd>
	</dl>
	</li> 
	<li>
	<p> <img alt="" src="resources/image/fig4_04.png"> </p>
	<dl>
	<dt> 동반 탑승 금지!</dt> <dd> 2인 이상 탑승은 위험해요.
반드시 회원 본인만 탑승하세요.</dd>
	</dl>
	</li> 
	<li>
	<p> <img alt="" src="resources/image/fig4_05.png"> </p>
	<dl>
	<dt> 인도 주행 금지!</dt> <dd> 보행자 우선 지역입니다.
킥보드는 주행하면 안 돼요!</dd>
	</dl>
	</li> 
	<li>
	<p> <img alt="" src="resources/image/fig4_06.png"> </p>
	<dl>
	<dt>돌발 행동 금지! </dt> <dd>갑작스러운 방향 전환, 급 감속,
정지를 하면 안 돼요! </dd>
	</dl>
	</li> 
	</ul>
	
	
	
	
	
	
	
	
	</div>
	
	
	
	
	
	
	</div>
	
	
	
	</section>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$('#main').click(function() {
			$('.main').fadeIn(300);

			$('.drive').css('display', 'none');
			$('.parking').css('display', 'none');
			$('.map').css('display', 'none');
			$('.content1').fadeIn(300);
			$('.content2').css('display', 'none');
			$('.content3').css('display', 'none');
			$('.content4').css('display', 'none');
		});
		$('#drive').click(function() {
			$('.drive').fadeIn(300);
			$('.main').css('display', 'none');
			$('.parking').css('display', 'none');
			$('.map').css('display', 'none');
			$('.content2').fadeIn(300);
			$('.content1').css('display', 'none');
			$('.content3').css('display', 'none');
			$('.content4').css('display', 'none');

		});
		$('#parking').click(function() {
			$('.parking').fadeIn(300);
			$('.main').css('display', 'none');
			$('.drive').css('display', 'none');
			$('.map').css('display', 'none');
			$('.content3').fadeIn(300);
			$('.content2').css('display', 'none');
			$('.content1').css('display', 'none');
			$('.content4').css('display', 'none');

		});
		$('#map').click(function() {
			$('.map').fadeIn(300);
			$('.main').css('display', 'none');
			$('.parking').css('display', 'none');
			$('.drive').css('display', 'none');
			$('.content4').fadeIn(300);
			$('.content2').css('display', 'none');
			$('.content3').css('display', 'none');
			$('.content1').css('display', 'none');

		});

		$('.btn-group').click(function() {
			if ($(this).hasClass('active')) {
				$('.btn-group').removeClass('active');

			} else {
				$('.btn-group').removeClass('active');

				$(this).addClass('active');

			}
		});
	</script>
</body>
</html>