function showregister(obj){
    obj.style.border="1px white dotted";
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
	if(regiform.whitename.value==""){
		alert("姓名不能为空");
		regiform.whitename.focus();
		return;
	}
	if(regiform.cities.value){
		alert(regiform.cities.value);
	}
	document.getElementById("regi").style.display="none";
	document.getElementById("regimask").style.display="none";
	
}
function checkinfo(obj){	
}