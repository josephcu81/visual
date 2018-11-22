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

  <title>농산물 가격정보 > 농업정책보험금융원</title>
  <link href="/appstack-1-0-1/dist/css/app.css" rel="stylesheet">
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
						<li class="sidebar-item active">
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
						<h1 class="h3 mb-3">농산물가격정보(aT_KAMIS API연계)<img alt="kamis" src="/images/main/kamis.JPG" height="50" ></h1>	
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-body">
										<form class="form-inline">
											<div class="form-group">
												<label class="form-label mr-5"  for="regday">조회일자</label>
												<input class="form-control mr-5" type="text" id="regday" name="regday" style="width: 213px;" />
												
												<label class="form-label mr-3" for="productClsCode">도소매</label>
												<!--  01:소매, 02:도매 -->
												<select class="custom-select mr-3" id="productClsCode" name="productClsCode">
										          <option value="01" selected>소매</option>
										          <option value="02">도매</option>
										        </select>
										        
												<label class="form-label mr-3" for="itemCategoryCode">부류별</label>
												<!-- 100:식량작물, 200:채소류, 300:특용작물, 400:과일류, 500:축산물, 600:수산물 -->
												<select class="custom-select mr-3" id="itemCategoryCode" name="itemCategoryCode">
										          <!-- <option value="100" selected>식량작물</option>
										          <option value="200">채소류</option>
										          <option value="300">특용작물</option>
										          <option value="400">과일류</option>
										          <option value="500">축산물</option>
										          <option value="600">수산물</option> -->
										          <c:forEach items="${itemCategoryCode }" var="category">
										          	<option value="${category.CODE }">${category.NAME }</option>
										          </c:forEach>
										        </select>
										        
										        <label class="form-label mr-3" for="contryCode">지역구분</label>
												<!-- 100:식량작물, 200:채소류, 300:특용작물, 400:과일류, 500:축산물, 600:수산물 -->
												<select class="custom-select mr-3" id="contryCode" name="contryCode">
										         <!--  <option value="" selected>전체</option>
										          <option value="1101" class="02">서울</option>
										          <option value="2300" class="01">인천</option> -->
										     	 	<c:forEach items="${contryCode}" var="contry">
										          	<option value="${contry.CODE}" class="${not empty contry.TYPE ? '01' : '02'}" >${contry.NAME }</option>
										        	</c:forEach> 
										        </select>
										        <!-- 소매가격 선택가능 지역 (1101:서울, 2100:부산, 2200:대구, 2300:인천, 2401:광주, 2501:대전, 2601:울산, 3111:수원, 3211:춘천, 3311:청주, 3511:전주, 3711:포항, 3911:제주, 3113:의정부, 3613:순천, 3714:안동, 3814:창원, 3145:용인)
													  도매가격 선택가능 지역 (1101:서울, 2100:부산, 2200:대구,           2401:광주, 2501:대전)
													 default : 전체지역 -->
											</div>
											<div class="ml-4">	
												<button type="button" class="btn btn-primary ml-2" id="btn-search">조회</button>
												<button type="button" class="btn btn-success ml-2" id="btn-excel">엑셀다운로드</button>
												<!-- <button type="button" class="btn btn-primary ml-2" id="btn-save">저장</button> 서버에서 저장 처리할 예쩡-->
											</div>
										</form>
									</div>
								</div>
							</div>
						
							<div class="col-md-12">
								<!--	<div class="card-header">
										<h5 class="card-title">기상정보 목록</h5>										
									</div> -->
								<!-- 내용 -->
								<table class="grid" id="jqGrid"></table>
				    			<div id="jqGridPager"></div>
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
	 
	<!-- <script src="/appstack-1-0-1/dist/js/maps.js"></script> -->
	<script src="/appstack-1-0-1/dist/js/forms.js"></script>
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
	
	<!-- grid utils -->
	<script src="/js/utils/jqgrid-cmpnt.js"></script>
	<!-- -->
  	<script src="/js/analysis/price-day.js"></script>
  	
</body>
</html>