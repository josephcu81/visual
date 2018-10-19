<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>메인 페이지 > 농업정책보험금융원</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/ui-common.css"/>
</head>
<body>
	<!-- header area -->
	<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand" href="#">
			<img src="/images/main/logo.png" alt="농업정책보험금융원" />
		</a>
		<!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button> -->
		<!-- 	<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active">
					<a class="nav-link" href="#">#홈</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">#메뉴1</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">#메뉴2</a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled" href="#">#비활성 메뉴</a>
				</li>
			</ul>
		</div> -->
	</nav>
	<!-- //header area -->
	<!-- body area -->
	<div class="body_area_wrap">
		<!-- Menu area -->
		<nav class="col-md-2 d-none d-md-block bg-light sidebar">
			<div class="sidebar-sticky">
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link active" href="#">활성화된 메뉴</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">메뉴2</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">메뉴3</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">비활성된 메뉴</a>
					</li>
				</ul>
			</div>
		</nav>
		<!-- //Menu area -->
		<!-- Content area -->
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
			<!-- title -->
			<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">타이틀 영역</h1><!-- 가변영역  -->
			</div>
			<!-- section-chart -->				
			<div class="section-chart">
				<canvas class="my-4 w-100"></canvas>
			</div>
			<!-- section-grid -->
			<h3>서브 타이틀</h3>
			<div  class="section-grid">
				그리드 구성 영역
			</div>
		</main>
		<!-- //Content area -->
	</div>
	<!-- //body area -->
	
	
	

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>