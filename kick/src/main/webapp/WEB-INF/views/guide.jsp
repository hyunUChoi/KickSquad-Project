<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=0.6 user-scalable=no" />
<title> 서비스  </title>
<!-- reset.css cdn! 브라우저 초기화-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
    <link rel="stylesheet" href="resources/css/service.css">
</head>
<body>
	
	 <!-- HEADER-->
    <header>
        <div class="inner">








        </div>
    </header>

    <!-- 영상출력 -->
    <section class="service1">
        <div class="inner">


        </div>
    </section>

<!--서비스 소개 단 -->
    <section class="service2">
        <div class="inner">


            <div class="main-service">
                <div class="phoneline">

                </div>
                <div class="phonebg">
                    <div class="main"></div>
                    <div class="drive"></div>
                    <div class="parking"></div>
                    <div class="map"></div>
                </div>


            </div>

            <div class="main-group">
                <div class="btn-groups">
                <div id="main" class="btn-group">메인</div>
                <div id="drive" class="btn-group">운행하기</div>
                <div id="parking" class="btn-group">주차하기</div>
                <div id="map" class="btn-group">킥보드 찾기</div>
            </div>

          
            <div class="main-content">
                <div class="content1">메인 소개 </div>
                <div class="content2">운행 소개 </div>
                <div class="content3">주차 소개</div>
                <div class="content4">맵   소개</div>
            </div>
        </div>


        </div>
    </section>

<!-- 화면3-->
    <section class="service3">
        <div class="inner">

        </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $('#main').click(function () {
            $('.main').fadeIn(300);

            $('.drive').css('display', 'none');
            $('.parking').css('display', 'none');
            $('.map').css('display', 'none');
            $('.content1').fadeIn(300);
            $('.content2').css('display','none');
            $('.content3').css('display','none');
            $('.content4').css('display','none');
        });
        $('#drive').click(function () {
            $('.drive').fadeIn(300);
            $('.main').css('display', 'none');
            $('.parking').css('display', 'none');
            $('.map').css('display', 'none');
            $('.content2').fadeIn(300);
            $('.content1').css('display','none');
            $('.content3').css('display','none');
            $('.content4').css('display','none');


        });
        $('#parking').click(function () {
            $('.parking').fadeIn(300);
            $('.main').css('display', 'none');
            $('.drive').css('display', 'none');
            $('.map').css('display', 'none');
            $('.content3').fadeIn(300);
            $('.content2').css('display','none');
            $('.content1').css('display','none');
            $('.content4').css('display','none');

        });
        $('#map').click(function () {
            $('.map').fadeIn(300);
            $('.main').css('display', 'none');
            $('.parking').css('display', 'none');
            $('.drive').css('display', 'none');
            $('.content4').fadeIn(300);
            $('.content2').css('display','none');
            $('.content3').css('display','none');
            $('.content1').css('display','none');

        });

        $('.btn-group').click(function(){
      if($(this).hasClass('active')){
             $('.btn-group').removeClass('active');     
             
      } else {
             $('.btn-group').removeClass('active');

             $(this).addClass('active');

      }
});




    </script>
	
	
	
	
	
	
</body>
</html>