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

  <title>메인 페이지 > 농업정책보험금융원</title>
  
	<link href="/appstack-1-0-1/dist/css/app.css" rel="stylesheet">
	<script src="/appstack-1-0-1/dist/js/app.js"></script>

  <!-- jquery + ui -->
	<script type="text/ecmascript" src="/plugins/jquery-3.3.1.min.js"></script>
	<script type="text/ecmascript" src="/plugins/jquery-ui.min.js"></script>
  <!-- Optional JS modules -->
  <script src="/appstack-1-0-1/dist/js/charts.js"></script>
  <script src="/appstack-1-0-1/dist/js/forms.js"></script>
  <script src="/appstack-1-0-1/dist/js/maps.js"></script>
  <script src="/appstack-1-0-1/dist/js/tables.js"></script>
  
		
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
						<li class="sidebar-item active">
							<a href="/" class="sidebar-link">
								 <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
							</a>
						</li>
						<li  class="sidebar-item">
							<a href="#status" data-toggle="collapse" class="sidebar-link collapsed">
                				<i class="align-middle" data-feather="layout"></i><span class="align-middle">현황</span>
              				</a>
              				<ul id="status" class="sidebar-dropdown list-unstyled collapse ">
              					<li class="sidebar-item"><a class="sidebar-link" href="/status/cityes/index">시도별 가입 및 사고 현황</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/status/items/index">품목별 가입 및 사고현황</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/status/join/index">시도별 가입자 현황</a></li>
              				</ul>
						</li>
						<li class="sidebar-item">
							<a href="#analysis" data-toggle="collapse" class="sidebar-link collapsed">
                				<i class="align-middle" data-feather="book-open"></i> 
                				<span class="align-middle">분석</span>
              				</a>
              				<ul id="analysis" class="sidebar-dropdown list-unstyled collapse ">
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/rejoin/index">정책보험재가입자 비율</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/weather/index">주산지지역의날씨정보</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/price/index">농작물가격정보(AT센터)</a></li>
              				</ul>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link" href="/performance/index">
                				<i class="align-middle" data-feather="book-open"></i> 
                				<span class="align-middle">성과지표</span>
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
						<!--카드별 파이챠트 -->
						<div class="row">
							<!-- 반복 시작 -->
							<div class="col-12 col-md-6 col-xl d-flex">
								<div class="card flex-fill">
									<div class="card-body py-2">
										<div class="row">
											<div class="col-12 col-md-6 align-self-center text-center text-md-left">
												<h4>2,562 건</h4> <!-- 카운트  -->
												<p class="mb-0">가입농가수</p> <!-- 타이틀 -->
											</div>
											<div class="col-12 col-md-6 align-self-center text-center text-md-right">
												<div data-label="50%" class="doughnut mt-2 doughnut-primary doughnut-50"></div>
												<!-- 퍼셑트 저오 및 컬러 설정 -->
											</div>
										</div>
									</div>
								</div>
							</div> <!-- // 반복 끝 -->
							<div class="col-12 col-md-6 col-xl d-flex">
								<div class="card flex-fill">
									<div class="card-body py-2">
										<div class="row">
											<div class="col-12 col-md-6 align-self-center text-center text-md-left">
												<h4>2,507,852 원</h4>
												<p class="mb-0">환급률</p>
											</div>
											<div class="col-12 col-md-6 align-self-center text-center text-md-right">
												<div data-label="55%" class="doughnut mt-2 doughnut-danger doughnut-55"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6 col-xl d-flex">
								<div class="card flex-fill">
									<div class="card-body py-2">
										<div class="row">
											<div class="col-12 col-md-6 align-self-center text-center text-md-left">
												<h4>20 건</h4>
												<p class="mb-0">사고율</p>
											</div>
											<div class="col-12 col-md-6 align-self-center text-center text-md-right">
												<div data-label="20%" class="doughnut mt-2 doughnut-success doughnut-20"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6 col-xl d-flex">
								<div class="card flex-fill">
									<div class="card-body py-2">
										<div class="row">
											<div class="col-12 col-md-6 align-self-center text-center text-md-left">
												<h4>25,452</h4>
												<p class="mb-0">손해율</p>
											</div>
											<div class="col-12 col-md-6 align-self-center text-center text-md-right">
												<div data-label="10%" class="doughnut mt-2 doughnut-warning doughnut-10"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6 col-xl d-none d-xxl-flex">
								<div class="card flex-fill">
									<div class="card-body py-2">
										<div class="row">
											<div class="col-12 col-md-6 align-self-center text-center text-md-left">
												<h4>$ 18700</h4>
												<p class="mb-0">Total Revenue</p>
											</div>
											<div class="col-12 col-md-6 align-self-center text-center text-md-right">
												<div data-label="55%" class="doughnut mt-2 doughnut-danger doughnut-55"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> <!--// 카드별 파이챠트 -->
						<div class="row">
							<!-- 라인차트 -->
							<div class="col-12 col-lg-8 d-flex">
								<div class="card flex-fill w-100">
									<div class="card-header">
										<h5 class="card-title mb-0">월별 증감율</h5>
									</div>
									<div class="card-body">
										<div class="chart">
											<canvas id="chartjs-dashboard-line"></canvas>
										</div>
									</div>
								</div>
							</div> <!-- //그래프차트 -->
							<!-- 벡터맵 -->
							<div class="col-12 col-lg-4 d-flex">
								<div class="card flex-fill w-100">
									<div class="card-header">
										<h5 class="card-title mb-0">지역별 사고현황</h5>
									</div>
									<div class="card-body px-4">
										<div id="korea_map" style="height:294px;"></div>
									</div>
								</div>
							</div>
						</div> 
						<div class="row">
							<div class="col-12 col-md-6 col-xl-3 d-flex order-1 order-xl-2">
								<!-- 파이 차트 -->
								<div class="card flex-fill w-100">
									<div class="card-header">
										<h5 class="card-title mb-0">나이별 가입현황</h5>
									</div>
									<div class="card-body d-flex">
										<div class="align-self-center w-100">
											<div class="py-3">
												<div class="chart chart-sm">
													<canvas id="chartjs-dashboard-pie"></canvas>
												</div>
											</div>

											<table class="table mb-0">
												<tbody>
													<tr>
														<td><i class="fas fa-square-full text-primary"></i>30대이하</td>
														<td class="text-right">180,899</td>
													</tr>
													<tr>
														<td><i class="fas fa-square-full text-warning"></i> 40대</td>
														<td class="text-right">242,578</td>
													</tr>
													<tr>
														<td><i class="fas fa-square-full text-danger"></i> 50대</td>
														<td class="text-right">1204,724</td>
													</tr>
													<tr>
														<td><i class="fas fa-square-full" style="background:#E8EAED;"></i> 60대 이상</td>
														<td class="text-right">709,149</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div><!-- // 파이 차트 -->
							</div>
							<!-- bar 그래프 차트 -->
							<div class="col-12 col-md-12 col-xl-5 d-flex order-3 order-xl-3">
								<div class="card flex-fill w-100">
									<div class="card-header">
										<h5 class="card-title mb-0">년도별 비고</h5>
									</div>
									<div class="card-body d-flex w-100">
										<div class="align-self-center chart chart-lg">
											<canvas id="chartjs-dashboard-bar"></canvas>
										</div>
									</div>
								</div>
							</div><!-- // bar 그래프 차트 -->
							<!-- 캘린더 -->
							<div class="col-12 col-md-6 col-xl-4 d-flex order-2 order-xl-1">
								<div class="card flex-fill">
									<div class="card-header">
										<h5 class="card-title mb-0">Calendar</h5>
									</div>
									<div class="card-body d-flex">
										<div class="align-self-center w-100">
											<div class="chart">
												<div id="datetimepicker-dashboard"></div>
											</div>
										</div>
									</div>
								</div>
							</div><!-- 캘린더 -->
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>

  <script src="/js/main/dash.js"></script>
</body>
</html>