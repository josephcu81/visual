<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- header area -->
	<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
	<!-- //header area -->
	<!-- body area -->
	<div class="body_area_wrap">
		<!-- Menu area -->
		<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
		<!-- //Menu area -->
		<jsp:include page="/WEB-INF/views/layout/menu.jsp"></jsp:include>
		<!-- Content area -->
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
			<!-- title -->
			<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">시도별 가입및 사고현황</h1><!-- 가변영역  -->
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
			<!-- <h3>페이징 그리드</h3>
			<div  class="section-grid">
				<table class="grid" id="jqPageGrid"></table>    			
    			<div id="jqGridPager"></div>
			</div> -->
		</main>
		<!-- //Content area -->
	</div>
	<!-- //body area -->
	<script src="/js/status/join-and-acident.js"></script>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
