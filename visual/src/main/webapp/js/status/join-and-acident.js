/**
 * /js/status/join-and-acident.js
 */

$(document).ready(function() {
	// 그리드 기본 옵션
	var option = {
			url: './list',
			colNames: [
			'구분','대상면적','가입농가수','건수','과수원(농지)수','금액','면적','면적가입률','보험료','국가',
			'시도','시군구','농가','환급금','국가','시도','시군구','농가','환급금차감후보혐료','농가',
			'위험보험료','영업보험료', '보험요율', '환급건수', '환급율', '건당보험료(천원)', '지급건수', '보험금', '건당보험금', '사고율', '손해율'
			],
			colModel: [
				{ name: 'sidonm', index:'sidonm', width:100 }
				,{ name: 'tagar', index:'tagar', width:100 }
				,{ name: 'sbfmcnt', index:'sbfmcnt', width:100 }
				,{ name: 'pcycnt', index:'pcycnt', width:100 }
				,{ name: 'objcnt', index:'objcnt', width:100 }
				,{ name: 'sbam', index:'sbam', width:100 }
				,{ name: 'sbar', index:'sbar', width:100 }
				,{ name: 'asbrt', index:'asbrt', width:100 }
				,{ name: 'prms', index:'prms', width:100 }
				,{ name: 'govprm', index:'govprm', width:100 }
				,{ name: 'sidoprm', index:'sidoprm', width:100 }
				,{ name: 'sggprm', index:'sggprm', width:100 }
				,{ name: 'fmprm', index:'fmprm', width:100 }
				,{ name: 'rfas', index:'rfas', width:100 }
				,{ name: 'govrfa', index:'govrfa', width:100 }
				,{ name: 'sidorfa', index:'sidorfa', width:100 }
				,{ name: 'sggrfa', index:'sggrfa', width:100 }
				,{ name: 'fmrfa', index:'fmrfa', width:100 }
				,{ name: 'rfprm', index:'rfprm', width:100 }
				,{ name: 'rffmacnt', index:'rffmacnt', width:100 }
				,{ name: 'riskprm', index:'riskInsrf', width:100 }
				,{ name: 'grsprm', index:'grsprm', width:100 }
				,{ name: 'prmrt', index:'prmrt', width:100 }
				,{ name: 'rfcnt', index:'rfcnt', width:100 }
				,{ name: 'rfrt', index:'rfrt', width:100 }
				,{ name: 'rrmpp', index:'rrmpp', width:100 }
				,{ name: 'acdcnt', index:'acdcnt', width:100 }
				,{ name: 'idm', index:'idm', width:100 }
				,{ name: 'idmpa', index:'idmpa', width:100 }
				,{ name: 'acdrt', index:'acdrt', width:100 }
				,{ name: 'losrt', index:'losrt', width:100 }


				],
				height: 400,
				rowNum: 30,
				shrinkToFit : false,
				autowidth:true
	}
	var girdCmpnt = new JqgridCmpnt('#jqGrid');
	girdCmpnt.createGrid(option);
	
	jQuery("#jqGrid").jqGrid('setGroupHeaders', {
		  useColSpanStyle: true, 
		  groupHeaders:[
			{startColumnName: 'tgar', numberOfColumns: 1, titleText: '가입대상현황'}
			,{startColumnName: 'sbfm', numberOfColumns: 5, titleText: '보험가입현황'}
			,{startColumnName: 'sbrt', numberOfColumns: 1 , titleText: '가입률'}
			,{startColumnName: 'prms', numberOfColumns: 5 , titleText: '보험료'}
			,{startColumnName: 'rfas', numberOfColumns: 5 , titleText: '환급금'}
			,{startColumnName: 'rfprm', numberOfColumns: 2 , titleText: '환급금차감후<br/> 보혐료'}
			,{startColumnName: 'acdcnt', numberOfColumns: 1 , titleText: '사고현황'}
		  ]
		});
	
	
	/*var pageGridCmpnt = new JqgridCmpnt('#jqPageGrid', '#jqGridPager');
	pageGridCmpnt.createGrid(option);*/
	
	
	// Draw Grid
	/*$("#jqGrid").jqGrid({
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
		//altRows : true,
		//rownumbers: true, // show row numbers
        //rownumWidth: 35, // the width of the row numbers columns
		//multiselect : true,
        width: 780,
		//colMenu : true,
		//menubar: true,
		viewrecords : true,
		hoverrows : true,
        height: 200,       
        rowNum: 20,				
		sortable: true,				
	    //pager: "",
	    autowidth:true
	});
	
	// Draw Grid
	$("#jqPageGrid").jqGrid({
		url: 'http://trirand.com/blog/phpjqgrid/examples/jsonp/getjsonp.php?callback=?&qwery=longorders',
	    //url: './data',
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
		viewrecords: true,
	    height: 250,	    
	    pager: true,
	    rowNum: 20,
	    pgbuttons: false,
	    pginput: false,
	    pgtext: "jqGridPager",
	    autowidth:true
	});*/
	
	// event bind
	/*$("#jqGrid2").on("jqGridSelectRow", function(event, id, orgEvent) {
		$(this).css("background")
		var rowData = $("#jqGrid2").getRowData(id);
		console.log(rowData);
		console.log(rowData.ShipName);
		
		
	});*/
	indexProc.init();
});

var indexProc = {
	init : function() {
		
	}
	, initGrid : function() {
		
	}
	, initChart : function() {
		
	}
	, eventBind : function() {
	}
}

$(window).resize(function() {	
	$(".grid").setGridWidth($('main').width());
});
