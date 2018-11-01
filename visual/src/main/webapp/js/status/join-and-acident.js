/**
 * /js/status/join-and-acident.js
 */

$(document).ready(function() {
	// 그리드 기본 옵션
	var option = {
			url: './list',
			colNames: [
			'구분', '대상면적', '가입농가수', '건수', '과수원(농지)수', '금액', '면적', '면적가입률', '보험료', '국가', '시도', '시군구', '농가', '환급금', '국가', '시도', '시군구', '농가', '환급금차감후보혐료', '농가', '위험보험료', '영업보험료', '보험요율', '환급건수', '환급율', '건당보험료(천원)', '사고현황 지급건수', '보험금', '건당보험금', '사고율', '손해율'
			],
			colModel: [
				{ name: 'sido', index:'sido', width:100 }
				,{ name: 'tgar', index:'tgar', width:100 }
				,{ name: 'sbfm', index:'sbfm', width:100 }
				,{ name: 'pcycnt', index:'pcycnt', width:100 }
				,{ name: 'objcnt', index:'objcnt', width:100 }
				,{ name: 'sttInsrf', index:'sttInsrf', width:100 }
				,{ name: 'sbsrar', index:'sbsrar', width:100 }
				,{ name: 'arsbrt', index:'arsbrt', width:100 }
				,{ name: 'insrf', index:'insrf', width:100 }
				,{ name: 'govf', index:'govf', width:100 }
				,{ name: 'sidof', index:'sidof', width:100 }
				,{ name: 'sggf', index:'sggf', width:100 }
				,{ name: 'fmf', index:'fmf', width:100 }
				,{ name: 'rta', index:'rta', width:100 }
				,{ name: 'gova', index:'gova', width:100 }
				,{ name: 'sidoa', index:'sidoa', width:100 }
				,{ name: 'sgga', index:'sgga', width:100 }
				,{ name: 'fma', index:'fma', width:100 }
				,{ name: 'rta1', index:'rta1', width:100 }
				,{ name: 'fma1', index:'fma1', width:100 }
				,{ name: 'riskInsrf', index:'riskInsrf', width:100 }
				,{ name: 'bsnInsrf', index:'bsnInsrf', width:100 }
				,{ name: 'insrt', index:'insrt', width:100 }
				,{ name: 'rtcnt', index:'rtcnt', width:100 }
				,{ name: 'rtrt', index:'rtrt', width:100 }
				,{ name: 'ginsrf', index:'ginsrf', width:100 }
				,{ name: 'acdcnt', index:'acdcnt', width:100 }
				,{ name: 'insra', index:'insra', width:100 }
				,{ name: 'ginsra', index:'ginsra', width:100 }
				,{ name: 'acdrt', index:'acdrt', width:100 }
				,{ name: 'shrt', index:'shrt', width:100 }


				],
				height: 200,
				rowNum: 30,
				autowidth:false
	}
	var girdCmpnt = new JqgridCmpnt('#jqGrid');
	girdCmpnt.createGrid(option);
	
	jQuery("#jqGrid").jqGrid('setGroupHeaders', {
		  useColSpanStyle: true, 
		  groupHeaders:[
			{startColumnName: 'tgar', numberOfColumns: 1, titleText: '가입대상현황'}
			,{startColumnName: 'sbfm', numberOfColumns: 5, titleText: '보험가입현황'}
			,{startColumnName: 'arsbrt', numberOfColumns: 1 , titleText: '가입률'}
			,{startColumnName: 'insrf', numberOfColumns: 5 , titleText: '가입률'}
			,{startColumnName: 'rta', numberOfColumns: 5 , titleText: '환급금'}
			,{startColumnName: 'rta1', numberOfColumns: 2 , titleText: '환급금차감후<br/> 보혐료'}
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
