<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
		Remove this if you use the .htaccess -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>index</title>
<meta name="description" content="">
<meta name="author" content="Cq-PC1">

<meta name="viewport" content="width=device-width; initial-scale=1.0">

<!-- Replace favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->
<link rel="shortcut icon" href="/favicon.ico">
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<script type="text/javascript" src="JS/urlparamEncode.js"></script>
<script type="text/javascript" src="JS/showorhidden.js"></script>
<script type="text/javascript" src="JS/AjaxRequest.js"></script>
<script type="text/javascript" src="JS/useajax.js"></script>
<script type="text/javascript">
	function controlTop() {//页面滚动式，调整导航栏透明度
		var dis = document.body.scrollTop;
		var topp = document.getElementById("top");
		if (dis > 200) {
			//for debug.
			//console.log(dis);
			//topp.style.backgroundColor = "rgb(40,40,40)";
		} else {
			//topp.style.backgroundColor = "rgba(16,16,16,0.15)";
		}
	}
</script>
</head>

<body class="bg">
	<div class="wrapper">
		<div id="topImg">
			<div id="regimask"></div>
			<div id="regi">
				<form id="regi-form" name="regiform" action="">
					<span class="promptInfo">注册信息</span> <label for="w-name"
						class="regiInfo">姓 名:</label> <input id="w-name" name="whitename"
						type="text" /> <label for="w-name" class="regiInfo mustinput">*</label>
					<div></div>
					<label for="w-city" class="regiInfo">城 市:</label> <select
						class="regi-address" id="provinces" name="provinces"
						onchange="getCity(this.value);"></select> <select
						class="regi-address" id="cities" name="cities"></select> <label
						for="w-name" class="regiInfo mustinput">*</label>
					<div></div>
					<input class="btn btn-regi" type="button" value="注册"
						onclick="register();" /> <input class="btn-reset" type="reset"
						value="取消" onclick="hiddenregi()" />
				</form>
			</div>
			<div id="top">
				<header>
					<em style="display: block;">cqnzb</em> <span
						style="font-size: 40%; color: #E0E0E0;"><em>始终坚持学习!</em></span>
				</header>
				<nav>
					<ul>
						<li class="nav-animation"><a href="/blogStation">首 页</a></li>
						<li class="nav-animation"><a href="javascript:void(0);">动 态</a></li>
						<li class="nav-animation"><a href="javascript:void(0);">随 笔</a></li>
						<li class="nav-animation"><a href="works.jsp">作 品</a></li>
						<li class="nav-animation"><a href="resource.jsp;">资 源</a></li>
						<li class="admini" onmouseover="showadmini(this);"
							onmouseout="hiddenmini(this);"><a href="writePage.jsp"
							class="admini-one">发 布</a> <span class="listitem" id="tri-prompt"></span>
							<a href="javascript:void(0);" id="link-regi" class="admini-two"
							onclick="showregister(this);">注 册</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<section id="contentBox">
			<article class="articlelist">
				<p id="specialtitle" class="articleTitle">
					${requestScope.articleDetail.title} <label class="articleStamp">${requestScope.articleDetail.userId}
						<span style="color: #b4b4b4;">发表于<em>${requestScope.articleDetail.timeStamp}</em></span>
						<!--display category of article --> <span class="articategory">标签:
							<c:if test="${requestScope.articleDetail.artiCategory=='1'}">动态</c:if>
							<c:if test="${requestScope.articleDetail.artiCategory=='2'}">随笔</c:if>
					</span>
					</label>
				</p>
				${requestScope.articleDetail.content}
			</article>
		</section>
		<footer>
			<p>&copy; Copyright by Cq-PC1</p>
			<p class="contact-info">管理员:fcaiqing(at)163.com</p>
		</footer>
	</div>
</body>
</html>