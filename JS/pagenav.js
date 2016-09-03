var uri="showArticles?action=showAllArticles&page=";
var page=0;
var pageInfo=document.getElementById("currentAndMaxPage").innerText.split("/");
var curPage=pageInfo[0];
var maxPage=Number(pageInfo[1]);
var i=Number(curPage);
function getUrlNext(obj) {
    i++;
    if(i>maxPage) obj.href="javascript:void(0);";
    var nUri=uri+i;
    obj.href=nUri;
}
function getUrlPre(obj) {
    i--;
    if(i==0) obj.href="javascript:void(0);";
    var nUri=uri+i;
    obj.href=nUri;
}
function getUrlLast(obj) {
    var nUri=uri+maxPage;
    obj.href=nUri;
}
//go to special page
function getUrlDire(obj) {
    var inputPage=document.getElementById("setPage").value;
    if(Number(inputPage)>maxPage) inputPage=maxPage;
    if(Number(inputPage)<=0) inputPage=1;
    var nUri=uri+inputPage;
    window.location.href=nUri;
}
//input page,press enter go
function enterPage(event){
    if(event.keyCode==13)
    {
    	getUrlDire(event);                         
    }
}
window.onload=function showSetPage(obj)
{
    document.getElementById("setPage").value=curPage;
};