<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/include/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/board/boardList.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
</head>
<body>
	<jsp:include page="../include/sideBar.jsp"></jsp:include>
	<div class="wrap">
		<div class="content">
			<div class="boardTop fs-3">
				전체 게시판<span class ="px-2 link-secondary">(3)</span>
			</div>
			<br>
			<br>
			<input type="search">
			<div class="boardContents">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">no</th>
							<th scope="col">제목</th>
							<th scope="col">날짜</th>
							<th scope="col">이름</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="board">
							<tr>
								<th scope="row">${board.id}</th>
								<td><a href="${pageContext.request.contextPath}/board/${board.id}">${board.title}</a></td>
								<td>${board.regDate}</td>
								<td>${board.emVO.name}</td>
							</tr>
						</c:forEach>
				</table>
				<a href="${pageContext.request.contextPath}/board/write"><button class = "btn btn-primary">글 작성</button></a>
			</div>
		</div>
	</div>
	
	<script>
		$(".title").on("click", function() {
			
		})
	</script>
	
</body>
</html>