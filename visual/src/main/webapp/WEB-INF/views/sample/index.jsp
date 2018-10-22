<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8" />
    <title>jqGrid Loading Data - Alternate Row Background</title>
    <!-- The jQuery library is a prerequisite for all jqSuite products -->
    <script type="text/ecmascript" src="/plugins/jquery-3.3.1.min.js"></script>
	<script type="text/ecmascript" src="/plugins/jquery-ui.min.js"></script>
	
    <!-- We support more than 40 localizations -->
    <script type="text/ecmascript" src="/plugins/jqgrid-5.3.1/js/i18n/grid.locale-kr.js"></script>
	<script type="text/ecmascript" src="/plugins/jqgrid-5.3.1/js/jquery.jqGrid.min.js"></script>
	
	<link rel="stylesheet" href="/plugins/bootstrap-4.1.3-dist/css/bootstrap.min.css">	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/octicons/4.4.0/font/octicons.css">
	<!---	
	<link rel="stylesheet" href="../../../css/iconic/font/css/open-iconic-bootstrap.css">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> 
 --->
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href="/plugins/jqgrid-5.3.1/css/ui.jqgrid-bootstrap4.css" />
	<script>
		$.jgrid.defaults.width = 780;
		$.jgrid.defaults.responsive = true;
		$.jgrid.defaults.styleUI = 'Bootstrap4';
		$.jgrid.defaults.iconSet = "Octicons";
	</script>
  <script src="/plugins/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="/plugins/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div style="margin-left:20px;margin-top:20px">
    <table id="jqGrid"></table>
    <div id="jqGridPager"></div>
	<span class="oi oi-person"  ></span>
</div>
    <script type="text/javascript"> 
    
        $(document).ready(function () {
           // altrows are set with table striped class for Boostrap
           $.jgrid.styleUI.Bootstrap.base.rowTable = "table table-bordered table-striped";
			
        	$("#jqGrid").jqGrid({
        	    url: './data',
        	    mtype: "GET",
        		//styleUI : 'Bootstrap',
        	    datatype: "json",
        	    colModel: [
        	        { label: 'OrderID', name: 'OrderID', key: true },
        	        { label: 'Customer ID', name: 'CustomerID' },
        	        { label: 'Order Date', name: 'OrderDate' },
        	        { label: 'Freight', name: 'Freight' },
        	        { label:'Ship Name', name: 'ShipName' }
        	    ],
        	    loadonce: true,
				altRows : true,
				rownumbers: true, // show row numbers
                rownumWidth: 35, // the width of the row numbers columns
				//multiselect : true,
                width: 780,
				//colMenu : true,
				menubar: true,
				viewrecords : true,
				hoverrows : true,
                height: 200,
                rowNum: 20,				
				sortable: true,				
        	    //pager: "#jqGridPager",
        	    autowidth:true
        	});
			
        });

    </script>

    
	
</body>
</html>