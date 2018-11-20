/**
 * /js/status/join.js
 */

$(document).ready(function() {
	joinProc.init();
	
});

var joinProc = {
	init : function() {
		joinProc.initGrid();
		joinProc.eventBind();
	}
	, initGrid : function() {
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
				{startColumnName: 'mcnt', numberOfColumns: 2, titleText: '성별'}
				,{startColumnName: 'ag30', numberOfColumns: 5, titleText: '연령별'}
				,{startColumnName: 'gicnt', numberOfColumns: 2 , titleText: '개인/법인'}
				,{startColumnName: 'ar2m', numberOfColumns: 7 , titleText: '가입면적규모(KM2)'}
				,{startColumnName: 'kor', numberOfColumns: 2 , titleText: '내국인/외국인'}
			  ]
			});
	}
	, initChart : function() {
		
	}
	, eventBind : function() {
		$('#btn-search').on('click', function(){
			var cntrctYy = $('#cntrctYy').val();
			if(!cntrctYy){
				alert("연도는 필수 선택 값입니다.");
				$('#cntrctYy').focus();
				return false;
			}
			
			var url = "./list";
			
			$("#jqGrid").jqGrid('setGridParam',{datatype:'json', url:url, page:1,  mtype:"POST", postData:{
			   cntrctYy : $('#cntrctYy').val(),
			   sidocd : $('#sidocd').val(),
          }}).trigger("reloadGrid");
		});
		
		$('#btn-chart-age').on('click', function(){
			// 파이차트 초기화
			var pieData = { 
				labels: ["30대 이하", "40~49", "50~59", "60~69", "60~69", "70대 이상"],
				datasets: [{
					data: [3052, 1250, 37692, 59598, 57932],
					backgroundColor: ["#0cc2aa", "#fcc100", "#f44455", "#E8EAED", "#007bff"],
					borderColor: "transparent"
				}]
			}; 
			joinProc.drawPie("chartjs-age-pie", pieData);
			
			// 바차트 초기화
			var barData = {
				labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
				datasets: [{
					label: "Last year",
					backgroundColor: "#0cc2aa",
					borderColor: "#0cc2aa",
					hoverBackgroundColor: "#0cc2aa",
					hoverBorderColor: "#0cc2aa",
					data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79]
				}, {
					label: "This year",
					backgroundColor: "#E8EAED",
					borderColor: "#E8EAED",
					hoverBackgroundColor: "#E8EAED",
					hoverBorderColor: "#E8EAED",
					data: [69, 66, 24, 48, 52, 51, 44, 53, 62, 79, 51, 68]
				}]
			};
			joinProc.drawBar("chartjs-age-bar", barData);
			
			// Line chart
			var lineData = {
				labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
				datasets: [{
					label: "Sales ($)",
					fill: true,
					backgroundColor: "transparent",
					borderColor: "#0cc2aa",
					data: [2115, 1562, 1584, 1892, 1487, 2223, 2966, 2448, 2905, 3838, 2917, 3327]
				}, {
					label: "Orders",
					fill: true,
					backgroundColor: "transparent",
					borderColor: "#5fc27e",
					borderDash: [4, 4],
					data: [958, 724, 629, 883, 915, 1214, 1476, 1212, 1554, 2128, 1466, 1827]
				}]
			};
			joinProc.drawLine("chartjs-age-line", lineData)
			
		});
		/**
		 * 가입 면적별 차트 모달 오픈
		 */
		$('#btn-chart-area').on('click', function(){
			// 파이차트 초기화
			
			var pieData = { 
				labels: ["Social", "Search Engines", "Direct", "Other"],
				datasets: [{
					data: [260, 125, 54, 146],
					backgroundColor: ["#0cc2aa", "#fcc100", "#f44455", "#E8EAED"],
					borderColor: "transparent"
				}]
			}; 
			
			joinProc.drawPie("chartjs-area-pie", pieData);
			
			
			// 바차트 초기화
			var barData = {
				labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
				datasets: [{
					label: "Last year",
					backgroundColor: "#0cc2aa",
					borderColor: "#0cc2aa",
					hoverBackgroundColor: "#0cc2aa",
					hoverBorderColor: "#0cc2aa",
					data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79]
				}, {
					label: "This year",
					backgroundColor: "#E8EAED",
					borderColor: "#E8EAED",
					hoverBackgroundColor: "#E8EAED",
					hoverBorderColor: "#E8EAED",
					data: [69, 66, 24, 48, 52, 51, 44, 53, 62, 79, 51, 68]
				}]
			};
			joinProc.drawBar("chartjs-area-bar", barData);
			
			// Line chart
			var lineData = {
				labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
				datasets: [{
					label: "Sales ($)",
					fill: true,
					backgroundColor: "transparent",
					borderColor: "#0cc2aa",
					data: [2115, 1562, 1584, 1892, 1487, 2223, 2966, 2448, 2905, 3838, 2917, 3327]
				}, {
					label: "Orders",
					fill: true,
					backgroundColor: "transparent",
					borderColor: "#5fc27e",
					borderDash: [4, 4],
					data: [958, 724, 629, 883, 915, 1214, 1476, 1212, 1554, 2128, 1466, 1827]
				}]
			};
			joinProc.drawLine("chartjs-area-line", lineData);
		
			
		});
	}
	, drawPie : function(target, datas ) {
		new Chart(document.getElementById(target), {
			type: 'pie',
			data: datas,
			options: {
				maintainAspectRatio: false,
				legend: {
					display: false
				}
			}
		});
	}
	
	,drawBar : function(target, datas) {
		new Chart(document.getElementById(target), {
			type: 'bar',
			data: datas,
			options: {
				maintainAspectRatio: false,
				legend: {
					display: false
				},
				scales: {
					yAxes: [{
						gridLines: {
							display: false
						},
						stacked: false,
						ticks: {
							stepSize: 20
						}
					}],
					xAxes: [{
						barPercentage: .75,
						categoryPercentage: .5,
						stacked: false,
						gridLines: {
							color: "transparent"
						}
					}]
				}
			}
		});
	}
	, drawLine : function(target, datas) {
		new Chart(document.getElementById(target), {
			type: 'line',
			data: datas,
			options: {
				maintainAspectRatio: false,
				legend: {
					display: false
				},
				tooltips: {
					intersect: false
				},
				hover: {
					intersect: true
				},
				plugins: {
					filler: {
						propagate: false
					}
				},
				scales: {
					xAxes: [{
						reverse: true,
						gridLines: {
							color: "rgba(0,0,0,0.05)"
						}
					}],
					yAxes: [{
						ticks: {
							stepSize: 500
						},
						display: true,
						borderDash: [5, 5],
						gridLines: {
							color: "rgba(0,0,0,0)",
							fontColor: "#fff"
						}
					}]
				}
			}
		});
	}
}

$(window).resize(function() {	
	$(".grid").setGridWidth($('main').width()-$('.sidebar').width());
});
