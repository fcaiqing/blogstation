function showadmini(obj){
	obj.style.height="70px";
	document.getElementById("tri-prompt").style.display="none";
	document.getElementById("link-regi").style.display="block";
}
function hiddenmini(obj){
	obj.style.height="46px";
	var tri=document.getElementById("tri-prompt");
	tri.style.left="8px";
	tri.style.display="block";
	//document.getElementById("tri-prompt").style.display="block";
	document.getElementById("link-regi").style.display="none";
}
function showregister(obj){
    //obj.style.border="1px white dotted";
    document.getElementById("regimask").style.display="block";
    document.getElementById("regi").style.display="block";
    getProvince();
    //var bgcolor="rgba(0,0,0,.6)";
    //document.getElementsByTagName("div")[0].style.backgroundColor=bgcolor;
    //document.getElementById("contentBox").style.backgroundColor=bgcolor;
}
function hiddenregi(){
	document.getElementById("regi").style.display="none";
	document.getElementById("regimask").style.display="none";
}
function register(){
	var val1=regiform.whitename;
	var val2=regiform.cities;
	if(val1.value==""){
		alert("姓名不能为空");
		val1.focus();
		return;
	}
	checkinfo(val1.value, val2.value);
}