/**
 * 
 */

$(document).ready(function() {
	// 그리드 기본 옵션
	var option = {
			url: './data',
			colModel: [
				{ label: 'OrderID', name: 'OrderID', key: true },
				{ label: 'Customer ID', name: 'CustomerID' },
				{ label: 'Order Date', name: 'OrderDate' },
				{ label: 'Freight', name: 'Freight' },
				{ label:'Ship Name', name: 'ShipName' }
				],
				height: 200,
				rowNum: 30
	}
	var girdCmpnt = new JqgridCmpnt('#jqGrid');
	girdCmpnt.createGrid(option);
	
	
	var pageGridCmpnt = new JqgridCmpnt('#jqPageGrid', '#jqGridPager');
	
	pageGridCmpnt.createGrid(option);
	
	
	// Draw Grid
	/*$("#jqGrid").jqGrid({
	    url: './data',
	    mtype: "GET",
		//styleUI : 'Bootstrap',
	    datatype: "json",
	    colModel: [
	        { label: 'OrderID', name: 'OrderID', key: true },
	        { label: 'Customer ID', name: 'CustomerID' },
	        { label: 'Order Date', name: 'OrderDate' },
	        { label: 'Freight', name: 'Freight' },
	        { label:'Ship Name', name: 'ShipName' }
	    ],
	    loadonce: true,
		//altRows : true,
		//rownumbers: true, // show row numbers
        //rownumWidth: 35, // the width of the row numbers columns
		//multiselect : true,
        width: 780,
		//colMenu : true,
		//menubar: true,
		viewrecords : true,
		hoverrows : true,
        height: 200,       
        rowNum: 20,				
		sortable: true,				
	    //pager: "#jqGridPager",
	    autowidth:true
	});*/
	
	// Draw Grid
	/*$("#jqGrid2").jqGrid({
		url: 'http://trirand.com/blog/phpjqgrid/examples/jsonp/getjsonp.php?callback=?&qwery=longorders',
	    //url: './data',
	    mtype: "GET",
		//styleUI : 'Bootstrap',
	    datatype: "json",
	    colModel: [
	        { label: 'OrderID', name: 'OrderID', key: true },
	        { label: 'Customer ID', name: 'CustomerID' },
	        { label: 'Order Date', name: 'OrderDate' },
	        { label: 'Freight', name: 'Freight' },
	        { label:'Ship Name', name: 'ShipName' }
	    ],
		viewrecords: true,
	    height: 250,	    
	    pager: true,
	    rowNum: 1000,
	    pgbuttons: false,
	    pginput: false,
	    pgtext: "",
	    autowidth:true
	});*/
	
	// event bind
	/*$("#jqGrid2").on("jqGridSelectRow", function(event, id, orgEvent) {
		$(this).css("background")
		var rowData = $("#jqGrid2").getRowData(id);
		console.log(rowData);
		console.log(rowData.ShipName);
		
		
	});*/
        
});

$(window).resize(function() {	
	$(".grid").setGridWidth($('main').width());
});
