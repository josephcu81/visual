<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>품목별 가입 및 사고현황 > 농업정책보험금융원</title>
  
  <link href="/appstack-1-0-1/dist/css/app.css" rel="stylesheet">
  <style>
    table {
        font-size:13px !important; 
    }
    table td {
    	padding:5px !important;
    }
 </style>
	
</head>
<body>
	<div class="wraaper">
		<div class="d-flex">
			<!-- Left -->
			<nav class="sidebar sidebar-sticky">
				<div class="sidebar-content">
					<a class="sidebar-brand" href="/">
						<span class="align-middle">농작물재해보험 통계</span>
					</a>
					<ul class="sidebar-nav">
						<li class="sidebar-header">
						</li>
						<li class="sidebar-item">
							<a href="/" class="sidebar-link">
								 <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
							</a>
						</li>
						<li  class="sidebar-item active">
							<a href="#status" data-toggle="collapse" class="sidebar-link collapsed">
                				<i class="align-middle" data-feather="layout"></i><span class="align-middle">현황</span>
              				</a>
              				<ul id="status" class="sidebar-dropdown list-unstyled collapse ">
              					<li class="sidebar-item"><a class="sidebar-link" href="/status/cityes/index">시도별 가입 및 사고 현황</a></li>
              					<li class="sidebar-item active"><a class="sidebar-link" href="/status/items/index">품목별 가입 및 사고현황</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/status/join/index">시도별 가입자 현황</a></li>
              				</ul>
						</li>
						<li class="sidebar-item">
							<a href="#analysis" data-toggle="collapse" class="sidebar-link collapsed">
                				<i class="align-middle" data-feather="book-open"></i> 
                				<span class="align-middle">분석</span>
              				</a>
              				<ul id="analysis" class="sidebar-dropdown list-unstyled collapse ">
              					<!-- <li class="sidebar-item"><a class="sidebar-link" href="/analysis/rejoin/index">농작물주산지 가입률및손해율</a></li> -->
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/weather/index">농작물주산지 기상재해정보</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/price-day/index">농작물가격정보(AT센터)</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/acdnt/index">사고조사현황_기상재해현황</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/acpay/index">지역별상품별_보상지급현황</a></li>
              				</ul>
						</li>
						<!-- <li class="sidebar-item">
							<a class="sidebar-link" href="/performance/index">
                				<i class="align-middle" data-feather="book-open"></i> 
                				<span class="align-middle">성과지표</span>
              				</a>
						</li> -->
						<li class="sidebar-item">
							<a class="sidebar-link" href="/sample/menu">
                				<i class="align-middle" data-feather="bar-chart-2"></i> 
                				<span class="align-middle">메뉴 구성도</span>
              				</a>
						</li>
					</ul>
				</div>
			</nav> <!-- // Left -->
			
			<div class="main">
				<!-- Header -->
				<nav class="navbar navbar-expand navbar-light bg-white">
					<a class="sidebar-toggle d-flex mr-2">
            			<i class="hamburger align-self-center"></i>
          			</a><!-- sidebar-toggle -->
				</nav><!-- //Header -->
				<!-- Content -->
				<main class="content">
					<div class="container-fluid p-0">
						<h1 class="h3 mb-3">품목별 가입 및 사고현황</h1>	
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h5 class="card-title">가입 및 사고현황 목록</h5>										
									</div>
								<!-- 내용 -->
									<table class="grid" id="jqGrid"></table>
					    			<div id="jqGridPager"></div>
								</div>
							</div>
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>
	<script src="/appstack-1-0-1/dist/js/app.js"></script>

	 <!-- Optional JS modules -->
	 <script src="/appstack-1-0-1/dist/js/charts.js"></script>
	 <script src="/appstack-1-0-1/dist/js/forms.js"></script>
	 <script src="/appstack-1-0-1/dist/js/maps.js"></script>
	 <script src="/appstack-1-0-1/dist/js/tables.js"></script>
	 
	 <!-- jquery + ui -->
	<script type="text/ecmascript" src="/plugins/jquery-3.3.1.min.js"></script>
	<script type="text/ecmascript" src="/plugins/jquery-ui.min.js"></script>
		
	<!-- jqgried -->
	<script type="text/ecmascript" src="/plugins/jqgrid-5.3.1/js/i18n/grid.locale-en.js"></script>
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
	
	<script src="/js/utils/jqgrid-cmpnt.js"></script>

  	<script src="/js/status/item.js"></script>
</body>
</html>