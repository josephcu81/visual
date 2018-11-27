/**
 * /js/status/join.js
 */
var tokenKey = "t%2FW%2BgR8MjLNnoqLoxLWpIrx%2BT9%2F%2FKBemixdk8wZxqBmz53x1ykp1dYhyotCSk4xj6Os3Ri7YZVKSAeEljAfksg%3D%3D";
$(document).ready(function() {
	
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
				url: './getData',
				colNames: [
					'조회일자', '지역ID', '지역이름','작물ID','작물명','작물특성이름',
					'일평균기온','일최고기온','일최저기온','일평균상대습도','일최저상대습도',
					'일강수량','일평균풍속','일누적일조시간','특보발효여부','특보코드','특보명'
				],
				colModel: [
					{ name: 'ymd', index:'ymd', width:100,  align: 'center' }
					,{ name: 'areaId', index:'areaId', width:100,  align: 'right'}
					,{ name: 'areaName', index:'areaName', width:100,  align: 'center'}
					,{ name: 'paCropSpeId', index:'paCropSpeId', width:100,  align: 'right' }
					,{ name: 'paCropName', index:'paCropName', width:100,  align: 'center' }
					,{ name: 'paCropSpeName', index:'paCropSpeName', width:100,  align: 'center'}
					,{ name: 'dayAvgTa', index:'dayAvgTa', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'dayMaxTa', index:'dayMaxTa', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'dayMinTa', index:'dayMinTa', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'dayAvgRhm', index:'dayAvgRhm', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'dayMinRhm', index:'dayMinRhm', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'daySumRn', index:'daySumRn', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'dayAvgWs', index:'dayAvgWs', width:100,  align: 'right',formatter:'integer' }
					,{ name: 'daySumSs', index:'daySumSs', width:100,  align: 'right'}
					,{ name: 'wrnCount', index:'wrnCount', width:100,  align: 'center'}
					,{ name: 'wrnCd', index:'wrnCd', width:100,  align: 'center'}
					,{ name: 'wrnNm', index:'wrnNm', width:100,  align: 'center', formatter:weatherProc.setWrnNm}
				
					// {"dayMaxTa":20.2,"dayAvgWs":0.6,"paCropSpeId":"PA080101","paCropSpeName":"봄","paCropName":"당근","ymd":"2018-10-16 00:00:00","areaId":2600000088,"dayAvgTa":16.1,"areaName":"부산","dayAvgRhm":68,"dayMinTa":13.9,"daySumSs":1.9,"dayMinRhm":48.7,"daySumRn":0}
				],
				datatype: "local",
				height: 680,
				rowNum: 900,
				shrinkToFit : false,
				autowidth:true,
				formatter : {
		             integer : {thousandsSeparator: ",", defaultValue: '0'}
		        },
		        mtype:"POST",
		        postData:{
		        	stYmd : dateArr[0].trim(),
		        	edYmd : dateArr[1].trim(),
		        	areaID : $('select[name="areaid"]').val(),
		        	paCropSpeId : $('select[name="cropid"]').val() //"PA999999"전체 작물
		        }
		}
		var girdCmpnt = new JqgridCmpnt('#jqGrid');
		girdCmpnt.createGrid(option);
	}
	, initChart : function() {
		
	}
	, eventBind : function() {
		$('#btn-search').on('click', function() {
			var daterange = $('input[name="daterange"]').val();
			var dateArr = daterange.replace(/-/gi, '').split("~");
			var url = "./getData";
			
			$("#jqGrid").jqGrid('setGridParam',{datatype:'json', url:url, page:1,  mtype:"POST", postData:{
         	   stYmd : dateArr[0].trim(),
			   edYmd : dateArr[1].trim(),
			   areaID : $('select[name="areaid"]').val(),
			   paCropSpeId : $('select[name="cropid"]').val()
          }}).trigger("reloadGrid");
		});
		$('#btn-excel').on('click', function(){
			$("#jqGrid").jqGrid("exportToExcel",{
				includeLabels : true,
				includeGroupHeader : true,
				includeFooter: true,
				fileName : "농주산지기상정보.xlsx",
				maxlength : 40 // maxlength for visible string data 
			})
		});
		//http://newsky2.kma.go.kr/service/ProductingAreaInfoService/DayStats?ST_YMD=20161201&ED_YMD=20161231&AREA_ID=999999999&PA_CROP_SPE_ID=PA999999&serviceKey="+tokenKey
	}
	, setWrnNm : function(cellValue, options, rowdata, action){
		if(cellValue) return cellValue;
		var code = rowdata.wrnCd;
		switch (code) {
		case 'W2' : return '강풍주의보'
		case 'W3' : return '강풍경보'
		case 'R2' : return '호우주의보'
		case 'R3' : return '호우경보'
		case 'S2' : return '대설주의보'
		case 'S3' : return '대설경보'
		case 'H2' : return '폭염주의보'
		case 'H3' : return '폭염경보'
		case 'D2' : return '건조주의보'
		case 'D3' : return '건조경보'
		case 'C2' : return '한파주의보'
		case 'C3' : return '한파경보'
		case 'T2' : return '태풍주의보'
		case 'T3' : return '태풍경보'
		default : return ''
		}
	}
}

$(window).resize(function() {	
	$(".grid").setGridWidth($('main').width());
});
