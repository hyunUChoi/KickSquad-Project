<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 프로젝트의 contextpath값 동적으로 가져오는 방법 -->
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!--  bootstrap 사용하기 위해 필요한 라이브러리 3개 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h2>jQuery+ajax+Session관리</h2>
		<div class="panel panel-default">
			<div class = "panel-heading">
			
			<c:if test="${empty mvo}">
				<form class="form-inline" action="${cpath}/login.do">
  					<div class="form-group">
    					<label for="text">아이디:</label>
    					<input type="text" class="form-control" id="id" name = "id">
  					</div>
  					<div class="form-group">
    					<label for="pw">비밀번호:</label>
    					<input type="password" class="form-control" id="pw" name = "pw">
  					</div>  					
  					<button type = "submit" class="btn btn-default">로그인</button>
				</form>
			</c:if>
			<c:if test="${!empty mvo}">
				<h2>${mvo.name}님 환영합니다</h2>
				<button onclick='location.href="${cpath}/logout.do"' class="btn btn-default">로그아웃</button>
			</c:if>			
			</div>
			<div class="panel-body">
				<table class="table table-bordered table-hover">
					<tr class="heading">
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>삭제</td>
					</tr>
					<c:if test="${!empty mvo}">
					<tr>
						<td colspan="5">
							<button onclick="goInsert()" class="btn-success btn-sm">글쓰기</button>
					</tr>
					</c:if>						
				</table>
				<div style="display:none" id = "insertview">
					<form name="Form" id = "Form">
						<input type="hidden" class="form-control" name="id" id="id" value="${mvo.id}">
						<div class="form-group">
							<label for="title">제목:</label> 
							<input type="text"	class="form-control" name="title" id="title">
						</div>
						<div class="form-group">
							<label for="writer">작성자:</label> 
							<input type="text" class="form-control" name="writer" id="writer" value="${mvo.name}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="contents">내용:</label> 
							<textarea rows = "10" class="form-control" id = "contents" name="contents"></textarea>
						</div>
						<button type = "button" onclick="goController()" class="btn btn-success btn-sm">글쓰기</button>
						<button type="reset" class="btn btn-warning btn-sm close">닫기</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		// 1. 해당하는 페이지에 접속하자마자 서버에 데이터를 요청하는 ajax 함수를 실행
		$(document).ready(function() {
			loadList(); // --> 호출

		})
		// 2. 서버에 요청하는 ajax 함수를 생성
		function loadList() {
			$.ajax({
				// 서버 url
				url : '${cpath}/boardListAjax.do',
				// 요청방식
				type : 'get',
				// 받아올 데이터 타입 지정
				dataType : 'json',
				// 성공했을 때 실행할 함수
				success : listView,
				// 실패했을 때 실행할 함수
				error : function() {
					alert('실패');
				}

			})
		}

		// 3. 화면에 보여주는 함수 생성
		function listView(data) {

			console.log(data);
			// 내가 화면에 출력해줄 tr 태그들의 모음
			var blist = "";

			// for-each문을 사용하는 방법
			// $.each(어떤 데이터를 가지고 반복, 어떤 함수로 처리할건지)
			$.each(data,function(index, board) {
				// function(인덱스번호, data안에 들어있는 각각의 값들을 어떤 변수로 받아줄건지)
				blist += "<tr class = 'innerContent'>";
				blist += "<td>" + board.idx + "</td>";
				blist += "<td><a href = 'javascript:viewContent("+board.idx+")'>" + board.title + "</a></td>";
				blist += "<td>" + board.writer + "</td>";
				blist += "<td>" + board.indate + "</td>";
				if("${mvo.id}"==board.id){
					blist += "<td><button onclick = 'boardDelete("+board.idx+")' class = 'btn-sm btn-danger btn'>삭제</button></td>";
				}else{
					blist += "<td><button disabled onclick = 'boardDelete("+board.idx+")' class = 'btn-sm btn-danger btn'>삭제</button></td>";				
				}				
				
				blist += "</tr>";
				blist += "<tr class = 'innerContent' id = 'vc"+board.idx+"' style = 'display:none'>";
				blist += "<td colspan = '5'>"
				blist += "<textarea rows = '5' class = 'form-control'>"+board.contents+"</textarea>"
				blist += "<br>";
				blist += "<button onclick = 'boardUpdate("+board.idx+")'class = 'btn-primary btn btn-sm'>수정</button>"
				
				blist += "&nbsp<button class = 'btn-warning btn btn-sm'>닫기</button>"
				blist += "</td>"
				blist += "</tr>";
			})
			$('.innerContent').remove();
			$('.heading').after(blist);
		}
		/*	
		$('.btn-success.btn-sm').on('click', function(){
			$('div').css({'display' : 'block'});
		})
		*/
		function goInsert(){
			if($('#insertview').css('display') == 'none'){
				//$('#insertview').css('display', 'block');
				$('#insertview').slideDown();
			}else{
				//$('#insertview').css('display', 'none');
				$('#insertview').slideUp();
			}
			
		}		
		
		function goController(){
			var formdata = $("#Form").serialize() ;	
			$.ajax({
				// 서버 url
				url : '${cpath}/boardInsert.do',
				// 요청방식
				type : 'post',
				// 받아올 데이터 타입 지정
				data: formdata,
				// 성공했을 때 실행할 함수
				success : loadList,
				// 실패했을 때 실행할 함수
				error : function() {
					alert('실패');
				}
			})
			// 초기화 버튼 클릭
			$('.close').trigger('click');
			
			// insertview div태그를 다시 접기
			$('#insertview').slideUp();
		}
		
		function boardDelete(idx){
			$.ajax({
				url : '${cpath}/boardDelete.do',
				type : 'get',
				data : {'idx':idx},
				success : loadList,
				error : function(){
					alert('실패');
				}
			})
			
		}
		function viewContent(idx){
			if($('#vc'+idx).css('display') == 'none'){
				$('#vc'+idx).css('display','table-row');
			}else{
				$('#vc'+idx).css('display','none');
			}
			
		}
		
		 // 수정하기
	      function boardUpdate(idx) {
	         // 1. textarea안에 들어있는 데이터를 가져오기
	         var contents = $("#vc"+idx+" textarea").val();
	         
	         // 2. ajax를 활용해서 controller에 수정을 요청
	         $.ajax({
	            url : '${cpath}/boardUpdateAjax.do',
	            // data : 보내줄 데이터를 객체형식으로 넘겨줬었음! {'idx':idx}
	            data : {'idx':idx, 'contents':contents},
	            // 요청 방식
	            type : 'get',
	            // 성공했을 때 실행할 함수
	      // 4. 받아올 데이터는 x --> 성공했을때 loadList함수를 다시 한 번 실행
	            success : loadList,
	            // 실패했을 때 실행할 함수
	            error : function() {
	               alert('실패!');
	            }
	         })
	      }
	</script>
</body>
</html>