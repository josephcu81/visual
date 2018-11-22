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

  <title>시도별 가입자 현황 > 농업정책보험금융원</title>
  
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
                				<i class="align-middle" data-feather="list"></i><span class="align-middle">현황</span>
              				</a>
              				<ul id="status" class="sidebar-dropdown list-unstyled collapse ">
              					<li class="sidebar-item"><a class="sidebar-link" href="/status/cityes/index">시도별 가입 및 사고 현황</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/status/items/index">품목별 가입 및 사고현황</a></li>
              					<li class="sidebar-item active"><a class="sidebar-link" href="/status/join/index">시도별 가입자 현황</a></li>
              				</ul>
						</li>
						<li class="sidebar-item">
							<a href="#analysis" data-toggle="collapse" class="sidebar-link collapsed">
                				<i class="align-middle" data-feather="activity"></i> 
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
                				<i class="align-middle" data-feather="bar-chart-2"></i> 
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
						<h1 class="h3 mb-3">시도별 가입자 현황</h1>	
						<div class="row">
							<!-- 검색조건 영역 -->
							<div class="col-md-12">
								<div class="card">
									<div class="card-body">
										<form class="form-inline">
											<div class="form-group">
												<label class="form-label mr-3" for="cntrctYy">연도</label>
												<select class="custom-select mr-3" id="cntrctYy" name="cntrctYy">
										          <option value="" selected>선택</option>
										          <option value="2018">2018년</option>
										          <option value="2017">2017년</option>
										          <option value="2016">2016년</option>
										        </select>
										        <label class="form-label mr-3" for="sidocd">시도구분</label>
												<select class="custom-select mr-3" id="sidocd" name="sidocd">
										          <option value="" selected>전체</option>
										          <!-- <option value="11000">서울</option> -->
										          <c:forEach items="${sidoList }" var="city">
										          	<option value="${city.CODE }">${city.LABLE }</option>
										          </c:forEach>
										        </select>
											</div>
											<div class="ml-4">	
												<button type="button" class="btn btn-info ml-2" id="btn-search">조회</button>
												<button type="button" class="btn btn-success ml-2" id="btn-excel">엑셀다운로드</button>
												<!-- 1:차트(연령별) 2:차트(가입면적별) -->
											</div>
										</form>
									</div>
								</div>
							</div><!-- //검색조건 영역 -->
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h5 class="card-title float-left">가입자 현황 목록</h5>
										<button type="button" class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#modal-chart-area" id="btn-chart-area">가입면적별 차트보기</button>
										<button type="button" class="btn btn-secondary btn-sm float-right mr-2" data-toggle="modal" data-target="#modal-chart-age"  id="btn-chart-age">연령별 차트보기</button>
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
			
			<!-- 연령별 차트 모달  -->
			<div class="modal fade" id="modal-chart-age" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">연령별 차트</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			            		<span aria-hidden="true">&times;</span>
			          		</button>
						</div>
						<div class="modal-body" style="background-color: #f0f0f0">
							<!-- 차트 선언 탭설정 -->
							<div class="row">
								<div class="col-12 col-lg-12">
									<div class="tab">
									<!-- 차트화면이 나타나서 디폴트로 파이차트가 나오고 차트변경버튼? 활용해서 막대나, 선으로도 변경가능하게 프로그램요망  -->
										<ul class="nav nav-tabs" role="tablist">
											<li class="nav-item"><a class="nav-link active" href="#tab-age-1" data-toggle="tab" role="tab">파이형</a></li>
											<li class="nav-item"><a class="nav-link" href="#tab-age-2" data-toggle="tab" role="tab">막대형</a></li>
											<li class="nav-item"><a class="nav-link" href="#tab-age-3" data-toggle="tab" role="tab">그래프형</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="tab-age-1" role="tabpanel">
												<h4 class="tab-title">연령별 파이차트</h4>
												<div class="card-body">
													<div class="chart chart-lg">
														<canvas id="chartjs-age-pie"></canvas>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab-age-2" role="tabpanel">
												<h4 class="tab-title">연령별 막대차트</h4>
												<div class="card-body">
													<div class="chart">
														<canvas id="chartjs-age-bar"></canvas>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab-age-3" role="tabpanel">
												<h4 class="tab-title">연령별 그래프차트</h4>
												<div class="card-body">
													<div class="chart">
														<canvas id="chartjs-age-line"></canvas>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer" style="background-color: #f0f0f0">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div><!-- // 연령별 차트 모달  -->
			
			<!-- 가입면적별 차트 모달  -->
			<div class="modal fade" id="modal-chart-area" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">가입면적별 차트</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			            		<span aria-hidden="true">&times;</span>
			          		</button>
						</div>
						<div class="modal-body" style="background-color: #f0f0f0">
							<!-- 차트 선언 탭설정 -->
							<div class="row">
								<div class="col-12 col-lg-12">
									<div class="tab">
									<!-- 차트화면이 나타나서 디폴트로 파이차트가 나오고 차트변경버튼? 활용해서 막대나, 선으로도 변경가능하게 프로그램요망  -->
										<ul class="nav nav-tabs" role="tablist">
											<li class="nav-item"><a class="nav-link active" href="#tab-area-1" data-toggle="tab" role="tab">파이형</a></li>
											<li class="nav-item"><a class="nav-link" href="#tab-area-2" data-toggle="tab" role="tab">막대형</a></li>
											<li class="nav-item"><a class="nav-link" href="#tab-area-3" data-toggle="tab" role="tab">그래프형</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="tab-area-1" role="tabpanel">
												<h4 class="tab-title">가입면적별 파이차트</h4>
												<div class="card-body">
													<div class="chart chart-lg">
														<canvas id="chartjs-area-pie"></canvas>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab-area-2" role="tabpanel">
												<h4 class="tab-title">가입면적별 막대차트</h4>
												<div class="card-body">
													<div class="chart">
														<canvas id="chartjs-area-bar"></canvas>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab-area-3" role="tabpanel">
												<h4 class="tab-title">가입면적별 그래프차트</h4>
												<div class="card-body">
													<div class="chart">
														<canvas id="chartjs-area-line"></canvas>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer" style="background-color: #f0f0f0">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div><!-- // 가입면적별 차트 모달  -->
		</div>
	</div>
	
	<script src="/appstack-1-0-1/dist/js/app.js"></script>

	 <!-- Optional JS modules -->
	 <script src="/appstack-1-0-1/dist/js/charts.js"></script>
	 <script src="/appstack-1-0-1/dist/js/forms.js"></script>
	 <script src="/appstack-1-0-1/dist/js/maps.js"></script>
	 <script src="/appstack-1-0-1/dist/js/tables.js"></script>
	 
	 <!-- jquery + ui -->
	<!-- <script type="text/ecmascript" src="/plugins/jquery-3.3.1.min.js"></script> forms.js와 충돌로 제외 처리 -->
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
	
	<script type="text/javascript" language="javascript" src="/plugins/jqgrid-5.3.1/js/jszip.min.js"></script>
	<script src="/js/utils/jqgrid-cmpnt.js"></script>

  	<script src="/js/status/join.js"></script>
</body>
</html>

<!-- 가입자현황에 차트버튼을 2개 만듬, 1:차트(연령별) 2:차트(가입면적별) 각버튼클릭시
차트화면이 나타나서 디폴트로 파이차트가 나오고 차트변경버튼? 활용해서 막대나, 선으로도 변경가능하게 프로그램요망  -->