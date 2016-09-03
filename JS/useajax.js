function getProvince(){
	var loader=new net.AjaxRequest("registerServlet?action=p&nocache="+new Date().getTime(),deal_getProvince,onerror,"GET");
}
function deal_getProvince(){
	var provinceArr=this.req.responseText.split(",");//provinces array
	for(var i=0;i<provinceArr.length;i++){//add options
		document.getElementById("provinces").options[i]=new Option(provinceArr[i],provinceArr[i]);
	}
	if(provinceArr[0]!=""){
		getCity(provinceArr[0]);	//get relative cities
	}
}
//
function getCity(selProvince){
	var loader=new net.AjaxRequest("registerServlet?action=c&province="+selProvince+"&nocache="+new Date().getTime(),deal_getCity,onerror,"GET");
}
function deal_getCity(){
	var cityArr=this.req.responseText.split(",");//cities array
	document.getElementById("cities").length=0;	//清空下拉列表
	for(var i=0;i<cityArr.length;i++){//设置下拉列表框的列表项
		document.getElementById("cities").options[i]=new Option(cityArr[i],cityArr[i]);
	}
}
//
function checkinfo(obj1, obj2){
	var loader=new net.AjaxRequest("registerServlet?action=checkinfo+"&nocache="+new Date().getTime(),deal_getCity,onerror,"GET");
}
function onerror(){		//错误处理函数
	alert("出错了");
}