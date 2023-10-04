<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="flex-shrink-0 p-3 bg-white sidebar" style="width: 280px; text-bg-dark">
	<a href="/"
		class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
		<svg class="bi pe-none me-2" width="30" height="24">
			<use xlink:href="#bootstrap"></use></svg> <span class="fs-5 fw-semibold">게시판</span>
	</a>
	<ul class="list-unstyled ps-0 sidebar_content">
		<li class="mb-1">
			<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0"
				data-bs-toggle="collapse" aria-controls="home-collapse"
				data-bs-target="#home-collapse" aria-expanded="false">전체</button>
			<div class="collapse" id="home-collapse">
				<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">공지사항</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">질의</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">자유</a></li>
				</ul>
			</div>
		</li>
		<li class="mb-1">
			<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 "
				data-bs-toggle="collapse" aria-controls="dashboard-collapse"
				data-bs-target="#dashboard-collapse" aria-expanded="flase">인사팀</button>
			<div class="collapse" id="dashboard-collapse">
				<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
				</ul>
			</div>
		</li>
		<li class="mb-1">
			<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 "
				data-bs-toggle="collapse" aria-controls="orders-collapse"
				data-bs-target="#orders-collapse" aria-expanded="false">???</button>
			<div class="collapse" id="orders-collapse">
				<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
				</ul>
			</div>
		</li>
		<li class="border-top my-3"></li>
		<li class="mb-1">
			<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 "
				data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">???</button>
			<div class="collapse" id="account-collapse">
				<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">???</a></li>
				</ul>
			</div>
		</li>
	</ul>
</div>
