/**
 * /js/status/cityes.js
 */

$(document).ready(function() {
	cityesProc.init();
	cityesProc.initGrid();
	cityesProc.eventBind();
});

var cityesProc = {
	init : function() {
		
	}
	, initGrid : function() {
		var option = {
				url: './list',
				colNames: [
				'구분','대상면적','가입농가수','건수','과수원(농지)수','금액','면적','면적가입률','보험료','국가',
				'시도','시군구','농가','환급금','국가','시도','시군구','농가','RF보혐료','농가',
				'위험보험료','영업보험료', '보험요율', '환급건수', '환급율', '건당보험료</br>(천원)', '지급건수', '보험금', '건당보험금', '사고율', '손해율'
				],
				colModel: [
					{ name: 'sidonm', index:'sidonm', width:80,  align: 'center',formatter:'text' }
					,{ name: 'tagar', index:'tagar', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'sbfmcnt', index:'sbfmcnt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'pcycnt', index:'pcycnt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'objcnt', index:'objcnt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'sbam', index:'sbam', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'sbar', index:'sbar', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'asbrt', index:'asbrt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'prms', index:'prms', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'govprm', index:'govprm', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'sidoprm', index:'sidoprm', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'sggprm', index:'sggprm', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'fmprm', index:'fmprm', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'rfas', index:'rfas', width:70,  align: 'right',formatter:'integer' }
					,{ name: 'govrfa', index:'govrfa', width:70,  align: 'right',formatter:'integer' }
					,{ name: 'sidorfa', index:'sidorfa', width:70,  align: 'right',formatter:'integer' }
					,{ name: 'sggrfa', index:'sggrfa', width:70,  align: 'right',formatter:'integer' }
					,{ name: 'fmrfa', index:'fmrfa', width:70,  align: 'right',formatter:'integer' }
					,{ name: 'rfprm', index:'rfprm', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'rffmprm', index:'rffmprm', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'riskprm', index:'riskInsrf', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'grsprm', index:'grsprm', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'prmrt', index:'prmrt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'rfcnt', index:'rfcnt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'rfrt', index:'rfrt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'rrmpp', index:'rrmpp', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'acdcnt', index:'acdcnt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'idm', index:'idm', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'idmpa', index:'idmpa', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'acdrt', index:'acdrt', width:80,  align: 'right',formatter:'integer' }
					,{ name: 'losrt', index:'losrt', width:80,  align: 'right',formatter:'integer'	 }
					],
					height: 600,
					rowNum: 30,
					shrinkToFit : false,
					autowidth:true
		}
		var girdCmpnt = new JqgridCmpnt('#jqGrid');
		girdCmpnt.createGrid(option);
		
		jQuery("#jqGrid").jqGrid('setGroupHeaders', {
			  useColSpanStyle: true, 
			  groupHeaders:[
				{startColumnName: 'tagar', numberOfColumns: 1, titleText: '가입대상'}
				,{startColumnName: 'sbfmcnt', numberOfColumns: 5, titleText: '보험가입현황'}
				,{startColumnName: 'asbrt', numberOfColumns: 1 , titleText: '가입률'}
				,{startColumnName: 'prms', numberOfColumns: 5 , titleText: '보험료'}
				,{startColumnName: 'rfas', numberOfColumns: 5 , titleText: '환급금'}
				,{startColumnName: 'rfprm', numberOfColumns: 2 , titleText: '환급금차감후보혐료'}
				,{startColumnName: 'acdcnt', numberOfColumns: 1 , titleText: '사고현황'}
			  ]
			});
	}
	, initChart : function() {
		
	}
	, eventBind : function() {
		$('#btn-search').on('click', function() {
			var url = "./list";
			$("#jqGrid").jqGrid('setGridParam',{datatype:'json', url:url, page:1,  mtype:"POST"
				, postData:{
					cntyy : $('select[name="cntyy"]').val(),
		        	sidocd : $('select[name="sidocd"]').val()
				}
			}).trigger("reloadGrid");
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
