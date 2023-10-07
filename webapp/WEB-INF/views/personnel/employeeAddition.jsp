<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="${pageContext.request.contextPath}/assets/css/include/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/personnel/addition.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/personnel/addition.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<body>
	<jsp:include page="../include/sideBar.jsp"></jsp:include>
	<div class="wrap">
		<div class="content">
			<div class="tbTop">
				사원 등록
			</div>
			<form action="${pageContext.request.contextPath}/personnel/insertEmployee" method="get">
				<input type="file" style="display: none;" class="fileInput"> <input type="hidden" name="img" id="imageInput">
				<table class="table table-bordered border-dark">
					<tbody>
						<tr>
							<td rowspan="5">
								<div class="imageUpload">
									<span> <i class="fa-solid fa-image"></i> 이미지 업로드
									</span>
								</div>
							</td>
							<td class="table-active">이름</td>
							<td><input type="text" placeholder="이름을 입력해주세요" name="name"></td>
							<td class="table-active">전화번호</td>
							<td><input type="text" placeholder="전화번호를 입력해주세요" name="hp"></td>
						</tr>
						<tr>
							<td class="table-active">영어이름</td>
							<td><input type="text" placeholder="이름을 입력해주세요" name="pwd"></td>
							<td class="table-active">주소</td>
							<td><input type="text" placeholder="주소를 입력해주세요" name="address"></td>
							</tr>
						<tr>
							<td class="table-active">입사일</td>
							<td><input type="date" name="hireDate"></td>
							<td class="table-active">생년월일</td>
							<td><input type="date" name="birth"></td>
						</tr>
						<tr>
							<td class="table-active">부서</td>
							<td>
								<select id="departmentSelect"class="form-select" aria-label="Default select example">
										<option value="0" selected>부서선택</option>
										<c:forEach items="${deVO }" var="department">
											<option value="${department.id}">${department.name }</option>
										</c:forEach>
								</select>
							</td>
							<td class="table-active">팀</td>
							<td>
								<select disabled id="teamsSelect" class="form-select" aria-label="Default select example" name="teamId">
										<option selected>팀 선택</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="table-active">직위</td>
							<td>
								<select class="form-select" aria-label="Default select example" name="position">
										<option value="사원" selected>사원</option>
										<option value="주임">주임</option>
										<option value="팀장">팀장</option>
								</select>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="tbBottom">
				<button class="btn btn-primary" type="submit">등록</button>
				<button class="btn btn-danger" type="button">취소</button>
			</div>
			</form>
		</div>
	</div>
</body>

<script>
	$(".imageUpload").on("click", function() {
		$(".fileInput").click();
	})

	$(".fileInput").on("change", function() {
		console.log("dfdf");
		const form = new FormData();
		form.append("upload", $(".fileInput")[0].files[0]);
		$.ajax({
			url : "${pageContext.request.contextPath}/imageUpload",
			type : "post",
			data : form,
			processData : false,
			contentType : false,
			success : function(jsonResultVo) {
				console.log(jsonResultVo);
				if (jsonResultVo.uploaded) {
					$("#imageInput").val(jsonResultVo.url);
					$(".imageUpload").html("<img src='"+jsonResultVo.url+"'>")
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	})
	
	$("#departmentSelect").on("change", function() {
		let value = $("#departmentSelect").val();
		let teVO = ${teVO};
		$("#teamsSelect").children('option:not(:first)').remove();
		if(value == 0) {
			$("#teamsSelect").attr("disabled",true);
		}
		else {
			let filteredTeVO = teVO.filter(data => data.deVO.id == value);
			console.log(filteredTeVO.length);
			for(var i = 0; i < filteredTeVO.length; i++) {
				$("#teamsSelect").append("<option value='"+filteredTeVO[i].id+"'>" + filteredTeVO[i].name + "</option>")
			}
			$("#teamsSelect").attr("disabled",false);
			console.log("akdo")
		}
	})
	
</script>
</html>