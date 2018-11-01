<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>메인 페이지 > 농업정책보험금융원</title>
	
    <!-- jquery + ui -->
	<script type="text/ecmascript" src="/plugins/jquery-3.3.1.min.js"></script>
	<script type="text/ecmascript" src="/plugins/jquery-ui.min.js"></script>
		
    <!-- jqgried -->
    <script type="text/ecmascript" src="/plugins/jqgrid-5.3.1/js/i18n/grid.locale-kr.js"></script>
	<script type="text/ecmascript" src="/plugins/jqgrid-5.3.1/js/jquery.jqGrid.min.js"></script>
	
	<!-- bootstrap css -->
	<link rel="stylesheet" href="/plugins/bootstrap-4.1.3-dist/css/bootstrap.min.css">	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/octicons/4.4.0/font/octicons.css">
    <link rel="stylesheet" type="text/css" media="screen" href="/plugins/jqgrid-5.3.1/css/ui.jqgrid-bootstrap4.css" />
    
	<script>
		$.jgrid.defaults.width = 780;
		$.jgrid.defaults.responsive = true;
		$.jgrid.defaults.styleUI = 'Bootstrap4';
		$.jgrid.defaults.iconSet = "Octicons";
	</script>
	
	<!-- bootstrap 4.1.3 -->
 	<script src="/plugins/popper.js/1.14.3/umd/popper.min.js"></script>
  	<script src="/plugins/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="/css/ui-common.css"/>
</head>
<body>
	<!-- header area -->
	<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
		<div class="navbar-wrapper">
			<a class="" href="#">
				<img src="/images/main/logo.png" alt="농업정책보험금융원" />
			</a>
			<a class="navbar-brand mb-0 h1" href="#">
				농작물재해보험 통계정보
			</a>
		</div>		
	</nav>
	<!-- //header area -->
	<!-- body area -->
	<div class="body_area_wrap">
		<!-- Menu area -->
		<nav class="col-md-2 d-none d-md-block bg-light sidebar">
			<div class="sidebar-sticky">
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link active" href="#">현황</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">분석</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">성과지표</a>
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
			<!-- section-grid-paging-->
			<h3>일반 그리드</h3>
			<div  class="section-grid">
				<table class="grid" id="jqGrid"></table>
    			<div id="jqGridPager"></div>
			</div>
			<!-- section-grid-none paging-->
			<h3>페이징 그리드</h3>
			<div  class="section-grid">
				<table class="grid" id="jqPageGrid"></table>    			
    			<div id="jqGridPager"></div>
			</div>
		</main>
		<!-- //Content area -->
	</div>
	<!-- //body area -->
	
	<script src="/js/utils/jqgrid-cmpnt.js"></script>
	<script src="/js/sample/index2.js"></script>
</body>
</html>