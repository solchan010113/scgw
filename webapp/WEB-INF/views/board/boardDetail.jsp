<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="${pageContext.request.contextPath}/assets/css/include/common.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/board/boardDetail.css"
	rel="stylesheet" type="text/css">

<body>
	<jsp:include page="../include/sideBar.jsp"></jsp:include>
	<div class="wrap">
		<div class="content">
			<div class="detail">
				<p class="title">${boardVO.title }</p>
				<p class="mid">
					<span class="name">${boardVO.emVO.name } </span><span class="deName">${boardVO.emVO.deVO.name}</span>
				</p>
				<p class="date">${boardVO.regDate }</p>
				<hr>
				<p>${boardVO.content }</p>
				<hr>
				<div class="btnGroup">
					<a class="btn btn-danger">삭제</a> <a class="btn btn-primary"
						href="${pageContext.request.contextPath}/board">목록으로</a>
				</div>
			</div>
		</div>

	</div>
</body>
</html>