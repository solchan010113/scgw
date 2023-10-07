<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="${pageContext.request.contextPath}/assets/css/include/common.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/personnel/management.css"
	rel="stylesheet" type="text/css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<body>
	<jsp:include page="../include/sideBar.jsp"></jsp:include>
	<div class="wrap">
		<div class="content">
			
			<div class="employeesList">
				<p>사원 목록<p>
				<div class="departmentBtn">
					<button type="button" id="allBtn" class="btn active" data-bs-toggle="button">전체</button>
					<c:forEach items="${deVO }" var="department">
						<button type="button" value="${department.id }" class="btn deBtn active" data-bs-toggle="button">${department.name }</button>
					</c:forEach>
				</div>
				<div class="employeeTable">
					<table class="table table-sm table-hover">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">사번</th>
								<th scope="col">이름</th>
								<th scope="col">부서</th>
								<th scope="col">팀</th>
								<th scope="col">직위</th>
								<th scope="col">입사일</th>
							</tr>
						</thead>
						<tbody class="tbody">
							
						</tbody>
					</table>
				</div>
				<div>
					<a class="btn btn-primary" href="${pageContext.request.contextPath}/personnel/addition">사원 등록</a>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${param.count  eq 0}">
		<script>
		
			Swal.fire({
	            icon: 'error',                         
	            title: '직원 등록에 실패하였습니다.',      
	        });
		</script>
	</c:if>
	
	<c:if test="${param.count  eq 1}">
		<script>
			Swal.fire({
	            icon: 'success',                         
	            title: '직원 등록이 완료되었습니다.',      
	        });
		</script>
	</c:if>
	
	<script>
		
		let emVO = ${emVO};
		filterList();
		$("#allBtn").on("click",function() {
			if($("#allBtn").hasClass("active")) {
				$(".deBtn").addClass('active');
			} else {
				$(".deBtn").removeClass('active');
			}
			filterList();
		})
		
		$(".deBtn").on("click",function() {
			let $this = $(this);	
			if(!$this.hasClass("active")) {
				$("#allBtn").removeClass('active');
			}
			filterList();
			console.log($(".deBtn").val());
		})
		
		
		function filterList() {
			$(".tbody").children().remove();
			var department = [];
			$(".deBtn").each(function() {
				if($(this).hasClass("active")){
					department.push($(this).val());
				}
			})
			let filterList = emVO.filter(data => -1 != department.indexOf(data.teVO.deVO.id+''));
			
			for(let i = 0; i < filterList.length; i++) {
				$(".tbody").append("<tr class='employeeTr'>"
						             + "<td scope='row' class='image'><div><img src='"+filterList[i].img+"'></div></td>"
						             + "<td>"+filterList[i].no+"</td>"
						             + "<td> <a href='${pageContext.request.contextPath}/personnel/"+filterList[i].no+"'>"+filterList[i].name+"</a></td>"
						             + "<td>"+filterList[i].teVO.deVO.name+"</td>"
						             + "<td>"+filterList[i].teVO.name+"</td>"
						             + "<td>"+filterList[i].position+"</td>"
						             + "<td>"+filterList[i].hireDate+"</td>"
								  +"</tr>")
			}
		}
	</script>
</body>
</html>