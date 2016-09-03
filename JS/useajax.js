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
	var loader=new net.AjaxRequest("registerServlet?action=checkinfo&name="+obj1+"&address="+obj2+"&nocache="+new Date().getTime(),deal_checkinfo,onerror,"GET");
}
function deal_checkinfo(){
	var result=this.req.responseText;
	var flag=result.search(/true/i);
	if(flag ===-1)
	{
		alert('no access, please contact administrator.');
	}
	else
	{
		result=result.substring(5);
		alert('register successfully. YOUR ID: '+result);
		document.getElementById("regi").style.display="none";
		document.getElementById("regimask").style.display="none";
	}
}
function onerror(){		//错误处理函数
	alert("出错了");
}