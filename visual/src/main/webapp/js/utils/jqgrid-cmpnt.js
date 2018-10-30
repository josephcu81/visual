/**
 * Jqgrid customize util 
 */

// get rowdata

// get rowdata Json

// get column Value 

// set column Value

// get column id

// create grid
function JqgridCmpnt(girdId, pagerId){
	console.log(girdId);
	console.log(pagerId);
	this._gridId = girdId || "#jqGrid"
	this._pagerId  = pagerId  
	//기본 그리드 생성
	this._option = {
			//url, colModle, height  는 생성 하는 쪽에서 전달
		    mtype: "GET",
			//styleUI : 'Bootstrap',
		    datatype: "json",
		    loadonce: true,
			//altRows : true,
			//rownumbers: true, // show row numbers
	        //rownumWidth: 35, // the width of the row numbers columns
			//multiselect : true,
	        width: 780,
	        height: 250,
			//colMenu : true,
			//menubar: true,
			viewrecords : true,
			hoverrows : true,
	        rowNum: 20,				
			sortable: true,				
		    pager: pagerId,
		    autowidth:true	
	}
}

JqgridCmpnt.prototype.getGridId = function(){
	return this._gridId;
}
JqgridCmpnt.prototype.getPagerId = function(){
	return this._gridId;
}

// 일반 그리드 생성
JqgridCmpnt.prototype.createGrid = function(recievedOption) {
	var option = Object.assign(this._option, recievedOption);
	console.log(option)
	$(this._gridId).jqGrid(option);
	
	$(this._gridId).on("jqGridSelectRow", function(event, id, orgEvent) {
		console.log(event);
		console.log(id);
		console.log(orgEvent);
		console.log($(this));
		//var rowData = $(this._gridId).getRowData(id);
		var rowData = $(this).jqGrid('getRowData',id);
		console.log(rowData);
		console.log(rowData.ShipName);
	});
	
}
// 페이징 포함 그리드 생성
JqgridCmpnt.prototype.createPagingGrid = function(recievedOption) {
	var option = Object.assign(this._option, recievedOption);
	console.log(option)
	$(this._gridId).jqGrid(option);
}

JqgridCmpnt.prototype.getRowData = function(id) {
	$(this._gridId).jqGrid('getRowData', id);
}




