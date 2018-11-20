/**
 * /js/analysis/price.js
 */
$(document).ready(function() {
	priceDayProc.init();
});

var priceDayProc = {
	init : function() {
		// Datepicker
		$('input[name="regday"]').daterangepicker({
			opens: 'right',
			locale : {
				"applyLabel": "적용",
		        "cancelLabel": "취소",
				"format": "YYYY-MM-DD",
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
			singleDatePicker: true,
			showDropdowns: true
		});
		
		priceDayProc.initGrid();
		priceDayProc.eventBind();
		priceDayProc.setContryCode();
	}
	, initGrid : function() {
		var regday = $('input[name="regday"]').val();
		var productClsCode = $('input[name="productClsCode"]').val();
		var itemCategoryCode = $('input[name="itemCategoryCode"]').val();
		var contryCode = $('input[name="contryCode"]').val();
		// 그리드 기본 옵션
		var option = {
				url: './list',
				colNames: [
					'지역', '부류별', '품목명', '품종명', '상태',
					'일자','가격','일자','가격','일자','가격','일자','가격','일자','가격','일자','가격','일자','가격'
				],
				colModel: [
					 { name: 'contry_name', index:'contry_name', width:90, align: 'center', formatter: priceDayProc.setContryName}
					,{ name: 'cat_name', index:'cat_name', width:90,  align: 'left', formatter: priceDayProc.setItemCategoryName}
					,{ name: 'item_name', index:'item_name', width:90,  align: 'left' }
					,{ name: 'kind_name', index:'kind_name', width:150,  align: 'left'}
					,{ name: 'rank', index:'rank', width:90,  align: 'left'}
					,{ name: 'day1', index:'day1', width:120,  align: 'left',}
					,{ name: 'dpr1', index:'dpr1', width:70,  align: 'right',}
					,{ name: 'day2', index:'day2', width:130,  align: 'left',}
					,{ name: 'dpr2', index:'dpr2', width:70,  align: 'right',}
					,{ name: 'day3', index:'day3', width:130,  align: 'left',}
					,{ name: 'dpr3', index:'dpr3', width:70,  align: 'right',}
					,{ name: 'day4', index:'day4', width:130,  align: 'left',}
					,{ name: 'dpr4', index:'dpr4', width:70,  align: 'right',}
					,{ name: 'day5', index:'day5', width:130,  align: 'left',}
					,{ name: 'dpr5', index:'dpr5', width:70,  align: 'right',}
					,{ name: 'day6', index:'day6', width:130,  align: 'left',}
					,{ name: 'dpr6', index:'dpr6', width:70,  align: 'right',}
					,{ name: 'day7', index:'day7', width:70,  align: 'left',}
					,{ name: 'dpr7', index:'dpr7', width:70,  align: 'right',}
					],
				height: 570,
				rowNum: 999,
				shrinkToFit : false,
				autowidth:true,
				datatype: 'local',
				formatter : {
		             integer : {thousandsSeparator: ",", defaultValue: '0'}
		        }
		}
		var girdCmpnt = new JqgridCmpnt('#jqGrid');
		girdCmpnt.createGrid(option);
		
		$("#jqGrid").jqGrid('setGroupHeaders', {
			  useColSpanStyle: true, 
			  groupHeaders:[
				{startColumnName: 'contryName', numberOfColumns: 1, titleText: '구분'}
				,{startColumnName: 'catName', 	numberOfColumns: 4, titleText: '농산물'}
				,{startColumnName: 'day1', 		numberOfColumns: 2, titleText: '조회일자'}
				,{startColumnName: 'day2', 		numberOfColumns: 2, titleText: '1일전'}
				,{startColumnName: 'day3', 		numberOfColumns: 2, titleText: '1주일전'}
				,{startColumnName: 'day4', 		numberOfColumns: 2, titleText: '2주일전'}
				,{startColumnName: 'day5', 		numberOfColumns: 2, titleText: '1개월전'}
				,{startColumnName: 'day6', 		numberOfColumns: 2, titleText: '1년전'}
				,{startColumnName: 'day7', 		numberOfColumns: 2, titleText: '평년'}
			  ]
		});
	}
	, initChart : function() {
		
	}
	, eventBind : function() {
		$('#btn-search').on('click', function() {
			var url = "./getData";
			$("#jqGrid").jqGrid('setGridParam',{datatype:'json', url:url, page:1,  mtype:"POST"
				, postData:{
					regday : $('input[name="regday"]').val(),
		        	productClsCode : $('select[name="productClsCode"]').val(),
		        	itemCategoryCode : $('select[name="itemCategoryCode"]').val(),
		        	contryCode : $('select[name="contryCode"]').val()
				}
			}).trigger("reloadGrid");
		});
		
		$('#btn-excel').on('click', function(){
			$("#jqGrid").jqGrid("exportToExcel",{
				includeLabels : true,
				includeGroupHeader : true,
				includeFooter: true,
				fileName : "jqGridExport.xlsx",
				maxlength : 40 // maxlength for visible string data 
			})
		});
		
		$('#productClsCode').on('change', priceDayProc.setContryCode);
	}
	,setContryCode : function() {
		var productClsCode = $('#productClsCode').val();
		if(productClsCode == '01'){
			$('#contryCode .02').hide();
			$('#contryCode .01').show();
		} else if (productClsCode == '02') {
			$('#contryCode .01').hide();
			$('#contryCode .02').show();
		}
	}
	,setContryName : function() {
		return $('#productClsCode option:selected').text();
	}
	,setItemCategoryName : function() {
		return $('#itemCategoryCode option:selected').text();
	}
}

$(window).resize(function() {	
	$(".grid").setGridWidth($('main').width());
});
3