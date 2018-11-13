/**
 * 
 */

$(document).ready( function () {
	dash.init();
});

var dash = {
	init : function () {
		dash.drawLineChart();
		dash.drawVectorMap();
		dash.drawPieChart();
		dash.drawBarChart();
		dash.drawCalendar();
	}
	, drawLineChart : function() {
		// Line chart
		new Chart(document.getElementById("chartjs-dashboard-line"), {
			type: 'line',
			data: {
				labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				datasets: [{
					label: "2018년 (%)",
					fill: true,
					backgroundColor: "transparent",
					borderColor: "#0cc2aa",
					data: [0.0, 0.3, 4.0, 10.9, 17.4, 26.3, 29.1, 29.6, 29.7, 30.0, , ]
				}, {
					label: "2017년(%)",
					fill: true,
					backgroundColor: "transparent",
					borderColor: "#5fc27e",
					borderDash: [4, 4],
					data:  [0.0, 0.2, 2.1, 4.9, 15.9, 27.7, 28.5, 28.7, 28.7, 28.8, 29.9, 30.1 ]
				}]
			},
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
							stepSize: 5.0
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
	/**
	 * 백터 맵 초기화  "fill": "#007bff", '#DCE3E8'
	 */
	,drawVectorMap : function() {
		$('#korea_map').vectorMap({
			map: 'kr_mill',
			backgroundColor: 'transparent',
			normalizeFunction: "polynomial",
			hoverOpacity: .7,
			hoverColor: false,
			regionStyle: {
				initial: {
					fill: '#DCE3E8'
				}
			},
			markerStyle: {
				initial: {
					"r": 9,
					"fill": "#007bff",
					"fill-opacity": .9,
					"stroke": "#fff",
					"stroke-width": 7,
					"stroke-opacity": .4
				},
				hover: {
					"stroke": "#fff",
					"fill-opacity": 1,
					"stroke-width": 1.5
				}
			},
			markers: [{
				latLng: [37.56, 126.97],
				name: '서울: 12%'
			}, {
				latLng: [36.49, 128.88],
				name: '경북: 35%'
			}, {
				latLng: [36.34, 127.39],
				name: '대전광역시: 25%'
			}, {
				latLng: [35.16, 126.85],
				name: '광주광역시: 10%'
			}, {
				latLng: [33.43, 126.56],
				name: '제주: 23%'
			}]
		});
	}
	, drawPieChart : function () {
		new Chart(document.getElementById("chartjs-dashboard-pie"), {
			type: 'pie',
			data: {
				labels: ["30대 이하", "40대", "50대", "60대", "70대 이상"],
				datasets: [{
					data: [3051, 12150, 37692, 59580, 57933],
					backgroundColor: ["#a180da", "#fcc100", "#f44455", "#5fc27e", "#5b7dff"],
					borderColor: "transparent"
				}]
			},
			options: {
				responsive: !window.MSInputMethodContext,
				maintainAspectRatio: false,
				legend: {
					display: false
				}
			}
		});
	}
	, drawBarChart : function (){
		new Chart(document.getElementById("chartjs-dashboard-bar"), {
			type: 'bar',
			data: {
				labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				datasets: [{
					label: "작년",
					backgroundColor: "#0cc2aa",
					borderColor: "#0cc2aa",
					hoverBackgroundColor: "#0cc2aa",
					hoverBorderColor: "#0cc2aa",
					data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79]
				}, {
					label: "금년",
					backgroundColor: "#E8EAED",
					borderColor: "#E8EAED",
					hoverBackgroundColor: "#E8EAED",
					hoverBorderColor: "#E8EAED",
					data: [69, 66, 24, 48, 52, 51, 44, 53, 62, 79, 51, 68]
				}]
			},
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
	, drawCalendar : function () {
		$('#datetimepicker-dashboard').datetimepicker({
			inline: true,
			sideBySide: false,
			format: 'L'
		});
	}
}
