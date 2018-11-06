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
				labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
				datasets: [{
					label: "Sales ($)",
					fill: true,
					backgroundColor: "transparent",
					borderColor: "#0cc2aa",
					data: [2015, 1465, 1487, 1796, 1387, 2123, 2866, 2548, 3902, 4938, 3917, 4927]
				}, {
					label: "Orders",
					fill: true,
					backgroundColor: "transparent",
					borderColor: "#5fc27e",
					borderDash: [4, 4],
					data: [928, 734, 626, 893, 921, 1202, 1396, 1232, 1524, 2102, 1506, 1887]
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
	/**
	 * 백터 맵 초기화
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
				latLng: [37.77, -122.41],
				name: 'San Francisco: 375'
			}, {
				latLng: [40.71, -74.00],
				name: 'New York: 350'
			}, {
				latLng: [39.09, -94.57],
				name: 'Kansas City: 250'
			}, {
				latLng: [36.16, -115.13],
				name: 'Las Vegas: 275'
			}, {
				latLng: [32.77, -96.79],
				name: 'Dallas: 225'
			}]
		});
	}
	, drawPieChart : function () {
		new Chart(document.getElementById("chartjs-dashboard-pie"), {
			type: 'pie',
			data: {
				labels: ["30대 이하", "40대", "50대", "60대 이상"],
				datasets: [{
					data: [180899, 242578, 1204724, 709149],
					backgroundColor: ["#0cc2aa", "#fcc100", "#f44455", "#E8EAED"],
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
				labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
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
