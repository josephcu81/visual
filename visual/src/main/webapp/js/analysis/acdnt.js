/**
 * /js/analysis/acdnt.js
 */

$(document).ready(function() {
	
	weatherProc.init();
	weatherProc.initGrid();
	weatherProc.eventBind();
});
var rowsToColor = [];
var weatherProc = {
	init : function() {
		// Daterangepicker
		$('input[name="daterange"]').daterangepicker({
			opens: 'right',
			locale : {
				"applyLabel": "적용",
		        "cancelLabel": "취소",
				"format": "YYYY-MM-DD",
			    "separator": " ~ ",
				"daysOfWeek": [
		            "일",
		            "월",
		            "화",
		            "수",
		            "목",
		            "금",
		            "토"
		        ],
		        "monthNames": [
		            "1월",
		            "2월",
		            "3월",
		            "4월",
		            "5월",
		            "6월",
		            "7월",
		            "8월",
		            "9월",
		            "10월",
		            "11월",
		            "12월"
		        ]
			},
			"startDate": moment().subtract(500, 'days'),
			"endDate": moment().subtract(400, 'days')
			        
		});
	}
	, initGrid : function() {
		var daterange = $('input[name="daterange"]').val();
		var dateArr = daterange.replace(/-/gi, '').split("~");
		// 그리드 기본 옵션
		var option = {
				url: './list',
				colNames: [
					'구분', '사고번호', '목적물번호','사고일자','사고원인','조사자','소속사무소','조사종류','상품분류','품목명','피해면적','지급보험금',
					'주산지명','특보명','일최고기온','일최저기온','일강수량','일평균풍속','누적일조량시간'
				],
				colModel: [
					{ name: 'sidoetc', index:'sido', width:100, align: 'center' }
					,{ name: 'acdno', index:'acdno', width:100,  align: 'center' }
					,{ name: 'objno', index:'objno', width:100,  align: 'center' }
					,{ name: 'acdbdt', index:'acdbdt', width:100,  align: 'center' }
					,{ name: 'acdcacd', index:'acdcacd', width:100,  align: 'center' }
					,{ name: 'examnrsn', index:'examnrsn', width:100,  align: 'right' }
					,{ name: 'pstoffc', index:'pstoffc', width:100,  align: 'left' }
					,{ name: 'examinknd', index:'examinknd', width:100,  align: 'left' }
					,{ name: 'frcs', index:'frcs', width:100,  align: 'left' }
					,{ name: 'fppnm', index:'fppnm', width:100,  align: 'center' }
					,{ name: 'paymgar', index:'paymgar', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'payidm', index:'payidm', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'areanm', index:'areanm', width:100,  align: 'center' }
					,{ name: 'wrnnm', index:'wrnnm', width:100,  align: 'left', formatter: weatherProc.rowColorFormatter}
					,{ name: 'daymaxta', index:'daymaxta', width:90,  align: 'center',formatter:'integer' }
					,{ name: 'dayminta', index:'dayminta', width:90,  align: 'center',formatter:'integer' }
					,{ name: 'daysumrn', index:'daysumrn', width:90,  align: 'center',formatter:'integer' }
					,{ name: 'dayavgws', index:'dayavgws', width:90,  align: 'center',formatter:'integer' }
					,{ name: 'daysumss', index:'daysumss', width:90,  align: 'center',formatter:'integer' }
					
					],
					height: 550,
					rowNum: 200,
					shrinkToFit : false,
					autowidth:true,
					datatype: 'local',
					formatter : {
			             integer : {thousandsSeparator: ",", defaultValue: '0'}
			        },
			        gridComplete: function () {
		                for (var i = 0; i < rowsToColor.length; i++) {
	                        $("#" + rowsToColor[i]).find("td").css("background-color", "#f48a66");
	                        //$("#" + rowsToColor[i]).find("td").css("color", "red !important");
		                }
		             },
			        mtype:"POST",
			        postData:{
			        	stYmd : dateArr[0].trim(),
			        	edYmd : dateArr[1].trim(),
			        	sidocd : $('select[name="sidocd"]').val(),
			        	fppcd : $('select[name="fppcd"]').val() //"PA999999"전체 작물
			        }
		}
		var girdCmpnt = new JqgridCmpnt('#jqGrid');
		girdCmpnt.createGrid(option);
		
		$("#jqGrid").jqGrid('setGroupHeaders', {
			  useColSpanStyle: true, 
			  groupHeaders:[
				{startColumnName: 'acdno', numberOfColumns: 11, titleText: '사고 및 조사 현황'}
				,{startColumnName: 'areanm', numberOfColumns: 7, titleText: '기상재해정보'}
				
			  ]
			});
	}
	, initChart : function() {
		
	}
	, eventBind : function() {
		$('#btn-search').on('click', function() {
			var daterange = $('input[name="daterange"]').val();
			var dateArr = daterange.replace(/-/gi, '').split("~");
			var url = "./list";
			
			$("#jqGrid").jqGrid('setGridParam',{datatype:'json', url:url, page:1,  mtype:"POST", postData:{
         	   stYmd : dateArr[0].trim(),
			   edYmd : dateArr[1].trim(),
			   sidocd : $('select[name="sidocd"]').val(),
			   fppcd : $('select[name="fppcd"]').val()
          }}).trigger("reloadGrid");
			
		});
		$('#btn-excel').on('click', function(){
			rowsToColor =[];
			$("#jqGrid").jqGrid("exportToExcel",{
				includeLabels : true,
				includeGroupHeader : true,
				includeFooter: true,
				fileName : "사고발생일자_기상재해.xlsx",
				maxlength : 40 // maxlength for visible string data 
			})
		});
	}
	,rowColorFormatter : function(cellValue, options, rowObject) {
		if (!cellValue) {
			rowsToColor.push(options.rowId);
			cellValue="";
		}
        return cellValue;
	}
}

$(window).resize(function() {	
	$(".grid").setGridWidth($('main').width());
});
