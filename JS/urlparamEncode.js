
function getEncodeUrl(obj, id, time, cate) {
    var params=obj.innerText;
    /*encode twice,browser'll decoder content of between %and %
     */
    params=encodeURI(params);	//not in url,decode once
    params=id+"/"+params+"/"+time+"/"+cate;
    document.getElementById('params').value=params;
    document.getElementById('form1').submit();
}