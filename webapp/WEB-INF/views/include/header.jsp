<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/assets/css/include/reset.css"  rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"  rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/include/header.css"  rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/include/sideBar.css"  rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/include/footer.css"  rel="stylesheet" type="text/css" />
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

<header class="p-3 mb-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="${pageContext.request.contextPath}/views/main/main.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none me-4">
          <span class ="fs-1 fw-bold">회사명</span>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 ">
          <li><a href="${pageContext.request.contextPath}/views/board/boardList.jsp" class="nav-link px-2 link-secondary">게시판</a></li>
          <li><a href="#" class="nav-link px-2 link-dark">출결</a></li>
          <li><a href="${pageContext.request.contextPath}/views/calendar/calendar.jsp" class="nav-link px-2 link-secondary">달력</a></li>
          <li><a href="#" class="nav-link px-2 link-dark">???</a></li>
        </ul>

        <div class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" >
			<button class="btn btn-primary">로그인</button>
        </div>

        <div class="dropdown text-end">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="" alt="mdo" width="32" height="32" class="rounded-circle">
          </a>
          <ul class="dropdown-menu text-small" style="">
            <li><a class="dropdown-item" href="#">마이페이지</a></li>
          </ul>
        </div>
      </div>
    </div>
  </header>


