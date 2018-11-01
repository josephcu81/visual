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
	
	<link rel="stylesheet" href="/css/ui-common.css"/>
	<script src="/js/utils/jqgrid-cmpnt.js"></script>
</head>
<body>
	<!-- Header -->
	<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
		<div class="navbar-wrapper">
			<!-- <a class="" href="#">
				<img src="/images/main/logo.png" alt="농업정책보험금융원" />
			</a> -->
			<a class="navbar-brand ml-3 mb-0 h1" href="#">
				농작물재해보험 통계정보
			</a>
		</div>		
	</nav>