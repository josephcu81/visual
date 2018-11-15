/**
 * /js/status/join.js
 */

$(document).ready(function() {
	// 그리드 기본 옵션
	var option = {
			url: './list',
			colNames: [
				'구분', '남자', '여자','30대이하','40~49','50~59','60~69','70대이상','개인','법인',
				'2K미만','2K~4K','4K~6K','6K~8K','8K~10K','10K~15K','15K이상','내국인','외국인'
			],
			colModel: [
				{ name: 'sidonm', index:'sido', width:90, align: 'center' }
				,{ name: 'mcnt', index:'mcnt', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'wcnt', index:'wcnt', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ag30', index:'ag30', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ag40', index:'ag40', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ag50', index:'ag50', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ag60', index:'ag60', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ag70', index:'ag70', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'gicnt', index:'gicnt', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'bicnt', index:'bicnt', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ar2m', index:'ar2m', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ar24', index:'ar24', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ar46', index:'ar46', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ar68', index:'ar68', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ar810', index:'ar810', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ar1015', index:'ar1015', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'ar15e', index:'ar15e', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'kor', index:'kor', width:90,  align: 'right',formatter:'integer' }
				,{ name: 'frn', index:'frn', width:90,  align: 'right',formatter:'integer' }
				],
				height: 600,
				rowNum: 30,
				shrinkToFit : false,
				autowidth:true,
				formatter : {
		             integer : {thousandsSeparator: ",", defaultValue: '0'}
		        }
	}
	var girdCmpnt = new JqgridCmpnt('#jqGrid');
	girdCmpnt.createGrid(option);
	
	$("#jqGrid").jqGrid('setGroupHeaders', {
		  useColSpanStyle: true, 
		  groupHeaders:[
			{startColumnName: 'mcnt', numberOfColumns: 2, titleText: '성별'}
			,{startColumnName: 'ag30', numberOfColumns: 5, titleText: '연령별'}
			,{startColumnName: 'gicnt', numberOfColumns: 2 , titleText: '개인/법인'}
			,{startColumnName: 'ar2m', numberOfColumns: 7 , titleText: '가입면적규모(KM2)'}
			,{startColumnName: 'kor', numberOfColumns: 2 , titleText: '내국인/외국인'}
		  ]
		});
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
