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
				사원 상세보기
			</div>
			<form action="${pageContext.request.contextPath}/personnel/modifyEmployee" method="get" id="modifyForm">
				<input type="file" style="display: none;" class="fileInput"> 
				<input type="hidden" name="img" id="imageInput">
				<input type="hidden" name="no" value = "${emVO.no }">
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
							<td><input type="text" placeholder="이름을 입력해주세요" name="name" value="${emVO.name }" disabled id="inputName"></td>
							<td class="table-active">전화번호</td>
							<td><input type="text" placeholder="전화번호를 입력해주세요" name="hp" value="${emVO.hp }" disabled id="inputHp"></td>
						</tr>
						<tr>
							<td class="table-active">주소</td>
							<td><input type="text" placeholder="주소를 입력해주세요" name="address" value="${emVO.address }" disabled id="inputAddress"></td>
							<td class="table-active">직위</td>
							<td>
								<select class="form-select" aria-label="Default select example" name="position" disabled id="positionSelect">
										<option value="사원" ${emVO.position == "사원" ? "selected" : ""}>사원</option>
										<option value="주임" ${emVO.position == "주임" ? "selected" : ""}>주임</option>
										<option value="팀장" ${emVO.position == "팀장" ? "selected" : ""}>팀장</option>
								</select>
							</td>	
						</tr>
						<tr>
							<td class="table-active">입사일</td>
							<td><input type="date" name="hireDate" value="${emVO.hireDate }" disabled id="inputHireDate"></td>
							<td class="table-active">생년월일</td>
							<td><input type="date" name="birth" value="${emVO.birth }" disabled id="inputBirth"></td>
						</tr>
						<tr>
							<td class="table-active">부서</td>
							<td>
								<select id="departmentSelect"class="form-select" aria-label="Default select example" disabled>
										<option value="0" selected>부서선택</option>
										<c:forEach items="${deVO }" var="department">
											<option value="${department.id}" ${emVO.teVO.deVO.id == department.id ? "selected" : ""}>${department.name }</option>
										</c:forEach>
								</select>
							</td>
							<td class="table-active">팀</td>
							<td>
								<select id="teamsSelect" class="form-select" aria-label="Default select example" name="teamId" disabled>
										<option>팀 선택</option>
								</select>
							</td>
						</tr>
						<tr>
							
						</tr>
					</tbody>
				</table>
				<div class="tbBottom">
				<button class="btn btn-primary btn-modify" type="button">수정</button>
				<button class="btn btn-danger" type="button">취소</button>
			</div>
			</form>
		</div>
	</div>
</body>

<script>
	$(document).ready(function(){
		let url = '${emVO.img.replace("\\","/")}';
		$("#imageInput").val(url);
		$(".imageUpload").html("<img src='"+url+"'>")
		
		let value = ${emVO.teVO.deVO.id};
		let teVO = ${teVO};
		let filteredTeVO = teVO.filter(data => data.deVO.id == value);
		for(var i = 0; i < filteredTeVO.length; i++) {
			let selected = ${emVO.teVO.id} == filteredTeVO[i].id ? 'selected' : ' ';
			$("#teamsSelect").append("<option value='"+filteredTeVO[i].id+"'"+selected+" >" + filteredTeVO[i].name + "</option>")
		}
	});
	
	$(".btn-modify").on("click", function() {
		if($(".btn-modify").hasClass("btn-submit")) {
			$("#modifyForm").submit();
		}
		$("#inputName").attr("disabled",false);
		$("#inputHp").attr("disabled",false);
		$("#inputAddress").attr("disabled",false);
		$("#positionSelect").attr("disabled",false);
		$("#inputHireDate").attr("disabled",false);
		$("#inputBirth").attr("disabled",false);
		$("#departmentSelect").attr("disabled",false);
		$("#teamsSelect").attr("disabled",false);
		$(".imageUpload").addClass('imageUploadModify');
		$(".btn-modify").addClass("btn-submit");
		$(".btn-modify").text("완료");
		$(".tbTop").text("사원 수정하기");
		
	})
	
	$("#modifyForm").on("submit", function() {
		return true;
	})
	
	$(".imageUpload").on("click", function() {
		if($(".imageUpload").hasClass("imageUploadModify")){
			console.log("dfd")
			$(".fileInput").click();
		}
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
		console.log(value);
		let teVO = ${teVO};
		$("#teamsSelect").children('option:not(:first)').remove();
		if(value == 0) {
			$("#teamsSelect").attr("disabled",true);
		}
		else {
			let filteredTeVO = teVO.filter(data => data.deVO.id == value);
			for(var i = 0; i < filteredTeVO.length; i++) {
				$("#teamsSelect").append("<option value='"+filteredTeVO[i].id+"'>" + filteredTeVO[i].name + "</option>")
			}
			$("#teamsSelect").attr("disabled",false);
			console.log("akdo")
		}
	})
	
</script>
</html>