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

  <title>메뉴구성도 > 농업정책보험금융원</title>
  
  <link href="/appstack-1-0-1/dist/css/app.css" rel="stylesheet">
  
  <style type="text/css">
  .scrollable-menu {
    height: auto;
    max-height: 600px;
    overflow-x: hidden;
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
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/rejoin/index">농작물주산지 가입률및손해율</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/weather/index">농작물주산지 기상재해정보</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/price-day/index">농작물가격정보(AT센터)</a></li>
              					<li class="sidebar-item"><a class="sidebar-link" href="/analysis/acdnt/index">목적물별사고발생_기상재해현황</a></li>
              				</ul>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link" href="/performance/index">
                				<i class="align-middle" data-feather="book-open"></i> 
                				<span class="align-middle">성과지표</span>
              				</a>
						</li>
						<li class="sidebar-item active">
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
					<a class="sidebar-toggle d-flex mr-5">
            			<i class="hamburger align-self-center"></i>
          			</a><!-- sidebar-toggle -->
				</nav><!-- //Header -->
				<!-- Content -->
				<main class="content">
					<div class="container-fluid p-0">
						<h1 class="h3 mb-3">보험실적 통계정보 제공 메뉴 구성도</h1>
						<ul class="nav nav-tabs" id="myTab" role="tablist">
						  <li class="nav-item">
						    <a class="nav-link active" id="menu1-tab" data-toggle="tab" href="#menu1" role="tab" aria-controls="home" aria-selected="true">연감통계표</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" id="menu2-tab" data-toggle="tab" href="#menu2" role="tab" aria-controls="profile" aria-selected="false">농업재해보험 기본자료집</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" id="menu3-tab" data-toggle="tab" href="#menu3" role="tab" aria-controls="contact" aria-selected="false">사업분야별 통계정보</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" id="menu4-tab" data-toggle="tab" href="#menu4" role="tab" aria-controls="contact" aria-selected="false">통계보고서</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" id="menu5-tab" data-toggle="tab" href="#menu5" role="tab" aria-controls="contact" aria-selected="false">홈페이지 제공통계</a>
						  </li>
						</ul>
						<div class="tab-content" id="myTabContent">
						  <div class="tab-pane fade show active" id="menu1" role="tabpanel" aria-labelledby="menu1-tab">
						  	<div class="mt-3">
						  	 <div class="btn-group col-2">
								  <button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농작물재해보험
								  </button>
								  <div class="dropdown-menu scrollable-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">품목별/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">품목별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(연도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(시도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(품목별)현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">특정위험품목(연도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">특정위험품목(시도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">특정위험품목(품목별) 보험금 지급현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">종합위헙품목(연도별) 보험금 지금현황</a>
								    <a class="dropdown-item" href="#">종합위헙품목(시도별) 보험금 지금현황</a>
								    <a class="dropdown-item" href="#">종합위헙품목(품목별) 보험금 지금현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">손해사정인(연도별) 현황</a>
								    <a class="dropdown-item" href="#">손해사정인(재해종류별) 현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">손해평가인(연도별) 현황</a>
								    <a class="dropdown-item" href="#">손해평가인(시도별) 현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">손해평가사(시도별) 합격자 현황</a>
								    <a class="dropdown-item" href="#">손해평가사(성별) 합격자 현황</a>
								    <a class="dropdown-item" href="#">손해평가사(연령대별) 합격자 현황</a>
								  </div>
							  </div>
							  <div class="btn-group col-2">
								  <button type="button" class="btn btn-secondary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    가축재해보험
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">축종별(축종분류별)/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">축종별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(연도별) 현황</a>
								    <a class="dropdown-item" href="#">가입자(시도별) 현황</a>
								    <a class="dropdown-item" href="#">가입자(축종별) 현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">사고원인별(시도별) 현황</a>
								    <a class="dropdown-item" href="#">사고원인별(축종별) 현황</a>
								  </div>
							  </div>
							  <div class="btn-group col-2">
								  <button type="button" class="btn btn-success btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    수입보장보험
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">품목별/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">품목별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(연도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(시도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(품목별))현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">특정위험품목(연도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">특정위험품목(시도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">특정위험품목(품목별) 보험금 지급현황</a>
								  </div>
							  </div>
							  <div class="btn-group col-2">
								  <button type="button" class="btn btn-danger btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농업인안전보험
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">유형별/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">월별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(지역별)현황</a>
								    <a class="dropdown-item" href="#">가입자(월별)현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">사고원인별(시도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">사고원인별(월별) 보험금 지급현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">보장방식별(시도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">보장방식별(월별) 보험금 지급현황</a>
								  </div>
							  </div>
							  <div class="btn-group col-2">
								  <button type="button" class="btn btn-warning btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								   	농기계종합보험
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">농기계별/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">농기계별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(시도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(농기계별)현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">사고원인별(지역별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">사고원인별(농기계별) 보험금 지급현황</a>
								  </div>
								</div>
								<div class="btn-group col-1">
								  <button type="button" class="btn btn-info btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								   	농업재해보험기본통계
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">농작물재해보험 총괄</a>
								    <a class="dropdown-item" href="#">가축재해보험 총괄</a>
								  </div>
							  </div>
							</div>
						  </div>
						  
						  <div class="tab-pane fade" id="menu2" role="tabpanel" aria-labelledby="menu2-tab">
						  	<div class="mt-3">
						  	 <div class="btn-group col-2">
								  <button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농작물
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 생산현황</a>
								    <a class="dropdown-item" href="#">지역별 생산현황</a>
								    <a class="dropdown-item" href="#">품종별 가격동향</a>
								    <a class="dropdown-item" href="#">연도별/재해유형별 생산현황</a>
								    <a class="dropdown-item" href="#">연도별/주산지별 생산현황</a>
								    <a class="dropdown-item" href="#">생산비 및 소득</a>
								    <a class="dropdown-item" href="#">보험운영실적</a>
								  </div>
							  </div>
							  <div class="btn-group col-2">
								  <button type="button" class="btn btn-secondary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    가축
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 생산현황</a>
								    <a class="dropdown-item" href="#">지역별 생산현황</a>
								    <a class="dropdown-item" href="#">축종별 가격동향</a>
								    <a class="dropdown-item" href="#">생산비 및 소득</a>
								    <a class="dropdown-item" href="#">보험운영실적</a>
								  </div>
							  </div>
							</div>
						  </div>
						  
						  <div class="tab-pane fade" id="menu3" role="tabpanel" aria-labelledby="menu3-tab">
						  	<div class="mt-3">
						  	 <div class="btn-group col-2">
								  <button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농작물
								  </button>
								  <div class="dropdown-menu scrollable-menu">
								    <a class="dropdown-item" href="#">가입 및 지급 현황</a>
								    <a class="dropdown-item" href="#">가입자현황</a>
								    <a class="dropdown-item" href="#">재해유형별 지급현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">농작물 월별 당월신규</a>
								    <a class="dropdown-item" href="#">농작물 월별 당해누적</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">농작물 지역별 당월 신규</a>
								    <a class="dropdown-item" href="#">농작물 지역별 당해 누적</a>
								    <a class="dropdown-item" href="#">농작물 지역별 유효계약</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">농작물 지역별 품목별 당월 신규</a>
								    <a class="dropdown-item" href="#">농작물 지역별 품목별 당해 누적</a>
								    <a class="dropdown-item" href="#">농작물 지역별 품목별 유효계약</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">농작물 품목별 당월신규</a>
								    <a class="dropdown-item" href="#">농작물 품목별 당해누적</a>
								    <a class="dropdown-item" href="#">농작물 품목별 유효계약</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">농작물 표준수확량</a>
								    <a class="dropdown-item" href="#">농작물 보험금 지급</a>
								  </div>
							  </div>
							  <div class="btn-group col-2">
								  <button type="button" class="btn btn-secondary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농업인
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">가입 및 지급현황</a>
								    <a class="dropdown-item" href="#">가입자 현황</a>
								    <a class="dropdown-item" href="#">보장급부별 지급현황</a>
								  </div>
							  </div>
							  <div class="btn-group col-2">
								  <button type="button" class="btn btn-success btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    가축
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">가입 및 지급현황</a>
								    <a class="dropdown-item" href="#">가입자 현황</a>
								    <a class="dropdown-item" href="#">사고분류별 지급현황</a>
								    <a class="dropdown-item" href="#">가축 가입현황</a>
								    <a class="dropdown-item" href="#">가축 지급현황</a>
								  </div>
							  </div>
							  <div class="btn-group col-2">
								  <button type="button" class="btn btn-danger btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농기계
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">가입 및 지급 현황</a>
								    <a class="dropdown-item" href="#">가입자 현황</a>
								    <a class="dropdown-item" href="#">사고원인별 지급현황</a>
								  </div>
							  </div>
							</div>
						  </div>
						  
						  <div class="tab-pane fade" id="menu4" role="tabpanel" aria-labelledby="menu4-tab">
						  	<div class="mt-3  justify-content-between">
						  	 <div class="btn-group" >
								  <button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    가축통계표_(붙임)<br/>가축재해보험사업실정
								  </button>
								  <div class="dropdown-menu scrollable-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">품목별/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">품목별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(연도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(시도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(품목별)현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">특정위험품목(연도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">특정위험품목(시도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">특정위험품목(품목별) 보험금 지급현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">종합위헙품목(연도별) 보험금 지금현황</a>
								    <a class="dropdown-item" href="#">종합위헙품목(시도별) 보험금 지금현황</a>
								    <a class="dropdown-item" href="#">종합위헙품목(품목별) 보험금 지금현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">손해사정인(연도별) 현황</a>
								    <a class="dropdown-item" href="#">손해사정인(재해종류별) 현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">손해평가인(연도별) 현황</a>
								    <a class="dropdown-item" href="#">손해평가인(시도별) 현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">손해평가사(시도별) 합격자 현황</a>
								    <a class="dropdown-item" href="#">손해평가사(성별) 합격자 현황</a>
								    <a class="dropdown-item" href="#">손해평가사(연령대별) 합격자 현황</a>
								  </div>
							  </div>
							  <div class="btn-group">
								  <button type="button" class="btn btn-secondary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농지별 실적현황<br/>
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">축종별(축종분류별)/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">축종별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(연도별) 현황</a>
								    <a class="dropdown-item" href="#">가입자(시도별) 현황</a>
								    <a class="dropdown-item" href="#">가입자(축종별) 현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">사고원인별(시도별) 현황</a>
								    <a class="dropdown-item" href="#">사고원인별(축종별) 현황</a>
								  </div>
							  </div>
							  <div class="btn-group">
								  <button type="button" class="btn btn-success btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농업정책보험<br/> 사업추진실적보고
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">품목별/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">품목별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(연도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(시도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(품목별))현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">특정위험품목(연도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">특정위험품목(시도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">특정위험품목(품목별) 보험금 지급현황</a>
								  </div>
							  </div>
							  <div class="btn-group">
								  <button type="button" class="btn btn-danger btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    농업재해보험<br/> 가입율 현황
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">유형별/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">월별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(지역별)현황</a>
								    <a class="dropdown-item" href="#">가입자(월별)현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">사고원인별(시도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">사고원인별(월별) 보험금 지급현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">보장방식별(시도별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">보장방식별(월별) 보험금 지급현황</a>
								  </div>
							  </div>
							  <div class="btn-group">
								  <button type="button" class="btn btn-warning btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								   	농업인안전재해보험<br/> 가입현황요약
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">농기계별/연도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">시도별 가입 및 사고현황</a>
								    <a class="dropdown-item" href="#">농기계별 가입 및 사고현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가입자(시도별)현황</a>
								    <a class="dropdown-item" href="#">가입자(농기계별)현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">사고원인별(지역별) 보험금 지급현황</a>
								    <a class="dropdown-item" href="#">사고원인별(농기계별) 보험금 지급현황</a>
								  </div>
								</div>
								<div class="btn-group">
								  <button type="button" class="btn btn-info btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								   	농업인안전보험<br/> 동기대비 가입실적
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">농작물재해보험 총괄</a>
								    <a class="dropdown-item" href="#">가축재해보험 총괄</a>
								  </div>
							   </div>
								<div class="btn-group">
								  <button type="button" class="btn btn-grey btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								   	농기계종합보험<br/> 동기대비 가입실적
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">농작물재해보험 총괄</a>
								    <a class="dropdown-item" href="#">가축재해보험 총괄</a>
								  </div>
							   </div>
							</div>
						  </div>
						  
						  <div class="tab-pane fade" id="menu5" role="tabpanel" aria-labelledby="menu5-tab">
						  	<div class="mt-3">
						  	 <div class="btn-group col-2">
								  <button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    홈페이지 제공통계
								  </button>
								  <div class="dropdown-menu">
								    <a class="dropdown-item" href="#">농작물재해보험 품목별 기준연월별 가입 및 지급현황</a>
								    <a class="dropdown-item" href="#">농작물재해보험 지역별 기준연월별 가입 및 지급현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가축재해보험 축종별 기준연월별 가입 및 지급현황</a>
								    <a class="dropdown-item" href="#">가축재해보험 지역별 기준연월별 가입 및 지급현황</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">농작물 품목별 보험료 수준</a>
								    <a class="dropdown-item" href="#">농작물 기준년도별 보험료 수준</a>
								    <a class="dropdown-item" href="#">농작물 지역별 보험료 수준</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="#">가축 축종별 보험료 수준</a>
								    <a class="dropdown-item" href="#">가축 기준년도별 보험료 수준</a>
								    <a class="dropdown-item" href="#">가축 지역별 보험료 수준</a>
								  </div>
							  </div>
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
	 
	 <!-- <script src="/appstack-1-0-1/dist/js/maps.js"></script> -->
	 <script src="/appstack-1-0-1/dist/js/forms.js"></script>
	 <script src="/appstack-1-0-1/dist/js/tables.js"></script>
  	
</body>
</html>