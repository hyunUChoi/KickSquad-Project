<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 사진  </title>
</head>
<body>
	<div>
		<input type="file" id="sqoo_img" name="sqoo_img">
		<button id="btn_submit" onclick="javascript:fn_submit()">전송</button>
	</div>

	<div>
		<div class="img_wrap">
			<img id="img" width='500px' />
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		var sel_file;
		var reader = new FileReader();

		$(document).ready(function() {
			$("#sqoo_img").on("change", handleImgFileSelect); //인풋태그
		});

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
					$("#img").attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
		}

		function fn_submit() {
			let file = $('#sqoo_img')[0].files[0]  //input태그
			let form_data = new FormData()
			
			form_data.append('file', file)
			
			$.ajax({
				type : 'post',
				url : 'http://172.30.1.19:3500/det-sqooter',
				data : form_data,
				cache : false,
				contentType: false,
		        processData: false,
		        async : false,
	 			success : function(res){
	 				alert(res)
	 				$("#img").attr("src", "resources/result/"+res);
	 			},
				error : function(){
					alert('연결 오류');
				}
			});
		}
	</script>
</body>
</html>