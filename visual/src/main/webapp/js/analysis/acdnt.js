/**
 * /js/analysis/acdnt.js
 */

$(document).ready(function() {
	
	weatherProc.init();
	weatherProc.initGrid();
	weatherProc.eventBind();
});

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
			"startDate": moment().subtract(29, 'days'),
			"endDate": moment()
			        
		});
	}
	, initGrid : function() {
		var daterange = $('input[name="daterange"]').val();
		var dateArr = daterange.replace(/-/gi, '').split("~");
		// 그리드 기본 옵션
		var option = {
				url: './list',
				colNames: [
					'구분', '사고번호', '목적물번호','사고일자','사고원인','상품분류','품목명','농지시도명','피해면적','지급보험금',
					'주산지명','특보명','일최고기온','일최저기온','일강수량','일평균풍속','누적일조량시간'
				],
				colModel: [
					{ name: 'sidoetc', index:'sido', width:100, align: 'center' }
					,{ name: 'acdno', index:'acdno', width:100,  align: 'right' }
					,{ name: 'objno', index:'objno', width:100,  align: 'right' }
					,{ name: 'acdbdt', index:'acdbdt', width:100,  align: 'right' }
					,{ name: 'acdcacd', index:'acdcacd', width:100,  align: 'right' }
					,{ name: 'frcs', index:'frcs', width:100,  align: 'right' }
					,{ name: 'fppnm', index:'fppnm', width:100,  align: 'right' }
					,{ name: 'sidonm', index:'sido', width:100, align: 'center' }
					,{ name: 'paymgar', index:'paymgar', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'payidm', index:'payidm', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'areanm', index:'areanm', width:100,  align: 'right' }
					,{ name: 'wrnnm', index:'wrnnm', width:100,  align: 'right' }
					,{ name: 'daymaxta', index:'daymaxta', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'dayminta', index:'dayminta', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'daysumrn', index:'daysumrn', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'dayavgws', index:'dayavgws', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'daysumss', index:'daysumss', width:100,  align: 'right',formatter:'integer' }
					
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
				{startColumnName: 'acdno', numberOfColumns: 9, titleText: '사고현황'}
				,{startColumnName: 'wrnnm', numberOfColumns: 6, titleText: '기상재해정보'}
				
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
			/*$.ajax({
				  method: "GET",
				  url: url,
				  contentType: 'application/json; charset=utf-8',
				  dataType: "json",
				  data : {
					  stYmd : dateArr[0].trim(),
					  edYmd : dateArr[1].trim(),
					  areaID : $('select[name="areaid"]').val(),
					  paCropSpeId : "PA999999"//전체 작물
				  },
				  cache: false
				}).done(function( data ) {
					  var itemArr = data.response.body.items;
					  $(itemArr).each(function(idx, item){
						  
					  });
					  $("#jqGrid").trigger("reloadGrid");
					  console.log( data ); // 2pm
				  });*/
		});
		//http://newsky2.kma.go.kr/service/ProductingAreaInfoService/DayStats?ST_YMD=20161201&ED_YMD=20161231&AREA_ID=999999999&PA_CROP_SPE_ID=PA999999&serviceKey="+tokenKey
	}
}

$(window).resize(function() {	
	$(".grid").setGridWidth($('main').width());
});
