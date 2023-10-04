<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/include/reset.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/main/login.css" rel="stylesheet" type="text/css" >
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
</head>
<body>
	<div class="wrap">
		<div class="loginTop">
			<span>SCGW</span>
		</div>
		<form action="${pageContext.request.contextPath}/main" method="post" id="loginForm">
			<div class="loginMid">
				<input class="form-control" id="id" type="text" name="id" placeholder="아이디">
				<input class="form-control" id="pwd" type="password" name="pwd" placeholder="비밀번호">
			</div>
			<div class="info">
			</div>
			<div class="loginBottom">
				<button class="btn btn-primary" type="submit">로그인</button>
			</div>
		</form>
	</div>
</body>

<script>
	$("#loginForm").on("submit",()=>{
		let loginInfo = {
			id : $("#id").val(),
			pwd : $("#pwd").val()
		}
		
		let chk = false;
		$.ajax({
			url : "${pageContext.request.contextPath}/loginAction",
			type : "get",
			data : loginInfo,
			dataType : "json",
			async: false,
			success : function(result) {
				if(result){
					console.log("sdfsdfs");
					$(".info").html("<span class='red'>아이디또는 비밀번호가 일치하지 않습니다</span>");
				} 
				chk = !result;
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		}); 
		return chk;
	})
</script>


</html>