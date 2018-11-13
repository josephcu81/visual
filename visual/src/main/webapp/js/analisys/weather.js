/**
 * /js/status/join.js
 */

$(document).ready(function() {
	// 그리드 기본 옵션
	var option = {
			url: './list',
			colNames: [
				'일자', '지역아이디', '지역이름','작물ID','작물명','작물특성이름','일평균기온','일최고기온','일최저기온','일평균상대습도','일최저상대습도','일강수량','일평균풍속','일누적일조시간','특보발효여부','특보코드','특보명'
			],
			colModel: [
				{ name: 'ymd', index:'sido', width:100 }
				,{ name: 'areaid', index:'areaid', width:100,  align: 'right'}
				,{ name: 'areaname', index:'areaname', width:100,  align: 'right'}
				,{ name: 'cropspeid', index:'cropspeid', width:100,  align: 'right' }
				,{ name: 'cronam', index:'cronam', width:100,  align: 'right' }
				,{ name: 'cropspename', index:'cropspename', width:100,  align: 'right'}
				,{ name: 'dayavgta', index:'dayavgta', width:100,  align: 'right',formatter:'integer' }
				,{ name: 'daymaxta', index:'daymaxta', width:100,  align: 'right',formatter:'integer' }
				,{ name: 'dayminta', index:'dayminta', width:100,  align: 'right',formatter:'integer' }
				,{ name: 'dayavgrhm', index:'dayavgrhm', width:100,  align: 'right',formatter:'integer' }
				,{ name: 'dayminrhm', index:'dayminrhm', width:100,  align: 'right',formatter:'integer' }
				,{ name: 'daysumrn', index:'daysumrn', width:100,  align: 'right',formatter:'integer' }
				,{ name: 'dayavgws', index:'dayavgws', width:100,  align: 'right',formatter:'integer' }
				,{ name: 'wrncount', index:'wrncount', width:100,  align: 'right'}
				,{ name: 'wrncd', index:'wrncd', width:100,  align: 'right'}
				,{ name: 'wrnnm', index:'wrnnm', width:100,  align: 'right'}
				,{ name: 'crtid', index:'crtid', width:100,  align: 'right'}
				],
				height: 400,
				rowNum: 30,
				shrinkToFit : false,
				autowidth:true,
				formatter : {
		             integer : {thousandsSeparator: ",", defaultValue: '0'}
		        }
	}
	var girdCmpnt = new JqgridCmpnt('#jqGrid');
	girdCmpnt.createGrid(option);
	
	/*$("#jqGrid").jqGrid('setGroupHeaders', {
		  useColSpanStyle: true, 
		  groupHeaders:[
			{startColumnName: 'mcnt', numberOfColumns: 2, titleText: '가입대상현황'}
			,{startColumnName: 'ag30', numberOfColumns: 5, titleText: '연령별'}
			,{startColumnName: 'gicnt', numberOfColumns: 2 , titleText: '개인/법인'}
			,{startColumnName: 'ar2m', numberOfColumns: 7 , titleText: '가입면적규모'}
		  ]
		});*/
	weatherProc.init();
});

var weatherProc = {
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
