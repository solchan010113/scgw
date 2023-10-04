<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/assets/css/include/reset.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/include/header.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/include/sideBar.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/include/footer.css"
	rel="stylesheet" type="text/css" />
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
	integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/109d7bd609.js" crossorigin="anonymous"></script>
<div class="d-flex flex-column flex-shrink-0 p-3 sidebar" style="width: 280px;">
	<div>
		<a href="/"
			class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
			<span class="fs-4">SCGW</span>
		</a>
		<hr>
		<ul class="sidebar_content">
			<li>
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0"
					data-bs-toggle="collapse" href="#community-collapse" role="button"
					aria-expanded="false" aria-controls="community-collapse">
					<span>
					<i class="fa-regular fa-clipboard"></i>
					커뮤니티
					</span>
				</button>
				<div class="collapse" id="community-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small ">
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">공지사항</a></li>
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">질의</a></li>
						<li><a href="${pageContext.request.contextPath}/board" class="d-inline-flex text-decoration-none rounded">자유</a></li>
					</ul>
				</div>
			</li>
			<li>
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0"
					data-bs-toggle="collapse" href="#attendance-collapse" role="button"
					aria-expanded="false" aria-controls="attendance-collapse">
					<span>
						<i class="fa-solid fa-stamp"></i>
						출결
					</span>
					</button>
				<div class="collapse" id="attendance-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small ">
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">공지사항</a></li>
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">질의</a></li>
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">자유</a></li>
					</ul>
				</div>
			</li>
			<li>
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0"
					data-bs-toggle="collapse" href="#calendar-collapse" role="button"
					aria-expanded="false" aria-controls="calendar-collapse">
					<span>
						<i class="fa-solid fa-calendar-days"></i>
						캘린더
					</span>
					</button>
				<div class="collapse" id="calendar-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small ">
						<li><a href="${pageContext.request.contextPath}/views/calendar/calendar.jsp" class="d-inline-flex text-decoration-none rounded">공지사항</a></li>
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">질의</a></li>
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">자유</a></li>
					</ul>
				</div>
			</li>
			<li>
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0"
					data-bs-toggle="collapse" href="#personnel-collapse" role="button"
					aria-expanded="false" aria-controls="personnel-collapse">
					<span>
						<i class="fa-solid fa-clipboard-user"></i>
						인사
					</span>
					</button>
				<div class="collapse" id="personnel-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small ">
						<li><a href="${pageContext.request.contextPath}/personnel" class="d-inline-flex text-decoration-none rounded">인사관리</a></li>
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">질의</a></li>
						<li><a href="#" class="d-inline-flex text-decoration-none rounded">자유</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="dropdown">
		<hr>
		<a href="#"
			class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
			data-bs-toggle="dropdown" aria-expanded="false"> <img
			src="https://github.com/mdo.png" alt="" width="32" height="32"
			class="rounded-circle me-2"> <strong>${authUser.name }</strong>
		</a>
		<ul class="dropdown-menu dropdown-menu-dark text-small shadow">
			<li><a class="dropdown-item" href="#">New project...</a></li>
			<li><a class="dropdown-item" href="#">Settings</a></li>
			<li><a class="dropdown-item" href="#">Profile</a></li>
			<li><hr class="dropdown-divider"></li>
			<li><a class="dropdown-item" href="#">Sign out</a></li>
		</ul>
	</div>
</div>