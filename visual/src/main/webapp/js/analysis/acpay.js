/**
 * /js/analysis/acpay.js
 */

$(document).ready(function() {
	
	acpayProc.init();
});

var acpayProc = {
	init : function() {
		acpayProc.initGrid();
		acpayProc.eventBind();
		
	}
	, initGrid : function() {
		/*var daterange = $('input[name="daterange"]').val();
		var dateArr = daterange.replace(/-/gi, '').split("~");*/
		// 그리드 기본 옵션
		var option = {
				url: './list',
				colNames: [
					'시 도', '상품중분류', '상품소분류','품목코드','품목명','사고원인','보상지급액(천원)','피해면적','농가수','평균지급액(천원)'
				],
				colModel: [
					{ name: 'sidoetc', index:'sido', width:140, align: 'center' }
					,{ name: 'mcls', index:'mcls', width:140,  align: 'center' }
					,{ name: 'scls', index:'scls', width:140,  align: 'center' }
					,{ name: 'fppcd', index:'fppcd', width:140,  align: 'center' }
					,{ name: 'fpp', index:'fpp', width:140,  align: 'center' }
					,{ name: 'acdcacd', index:'acdcacd', width:140,  align: 'center' }
					,{ name: 'payidm', index:'payidm', width:140,  align: 'right',formatter:'integer' }
					,{ name: 'paymgar', index:'paymgar', width:140,  align: 'right',formatter:'integer' }
					,{ name: 'fmcnt', index:'fmcnt', width:140,  align: 'right',formatter:'integer' }
					,{ name: 'avgidm', index:'avgidm', width:140,  align: 'right',formatter:'integer' }
			
					],
					height: 600,
					rowNum: 200,
					shrinkToFit : false,
					autowidth:true,
					datatype: 'local',
					formatter : {
			             integer : {thousandsSeparator: ",", defaultValue: '0'}
			        },
		        mtype:"POST",
		        postData:{
		        	/*stYmd : dateArr[0].trim(),
		        	edYmd : dateArr[1].trim(),*/
		        	sidocd : $('select[name="sidocd"]').val(),
		        	fppcd : $('select[name="fppcd"]').val(),
		        	 mcls : $('select[name="mcsl"]').val(),
			         scls : $('select[name="scls"]').val()
		        }
		}
		var girdCmpnt = new JqgridCmpnt('#jqGrid');
		girdCmpnt.createGrid(option);
		
		/*$("#jqGrid").jqGrid('setGroupHeaders', {
			  useColSpanStyle: true, 
			  groupHeaders:[
				{startColumnName: 'acdno', numberOfColumns: 11, titleText: '사고 및 조사 현황'}
				,{startColumnName: 'areanm', numberOfColumns: 7, titleText: '기상재해정보'}
				
			  ]
			});*/
	}
	, initChart : function() {
		
	}
	, eventBind : function() {
		$('#btn-search').on('click', function() {
			/*var daterange = $('input[name="daterange"]').val();
			var dateArr = daterange.replace(/-/gi, '').split("~");*/
			var url = "./list";
			
			$("#jqGrid").jqGrid('setGridParam',{datatype:'json', url:url, page:1,  mtype:"POST", postData:{
         	  /* stYmd : dateArr[0].trim(),
			   edYmd : dateArr[1].trim(),*/
			   sidocd : $('select[name="sidocd"]').val(),
			   fppcd : $('select[name="fppcd"]').val(),
			   mcls : $('select[name="mcsl"]').val(),
			   scls : $('select[name="scls"]').val()
          }}).trigger("reloadGrid");
		});
		
		$('#btn-excel').on('click', function(){
			$("#jqGrid").jqGrid("exportToExcel",{
				includeLabels : true,
				includeGroupHeader : true,
				includeFooter: true,
				fileName : "지역별상품별_보상지급현황.xlsx",
				maxlength : 40 // maxlength for visible string data 
			})
		});
	}
}

$(window).resize(function() {	
	$(".grid").setGridWidth($('main').width());
});
