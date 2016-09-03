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
		<script type="text/javascript">
			function controlTop() {//页面滚动式，调整导航栏透明度
				var dis = document.body.scrollTop;
				var topp = document.getElementById("top");
				if (dis > 200) {
					//for debug.
					//console.log(dis);
					topp.style.backgroundColor = "rgb(40,40,40)";
				} else
					topp.style.backgroundColor = "rgba(16,16,16,0.15)";
			}
		</script>
	</head>

	<body onscroll="controlTop();">
		<div id="topImg">
			<div id="top">
				<header>
					<em style="display:block;">之行</em>
					<span style="font-size:40%;color:#E0E0E0;">没有什么比辜负自己更让人遗憾的了.</span>
				</header>
				<nav>
					<ul>
						<li>
							<a>首 页</a>
						</li>
						<li>
							<a>动 态</a>
						</li>
						<li>
							<a>随 笔</a>
						</li>
						<li>
							<a>作 品</a>
						</li>
						<li>
							<a>分 享</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<section id="contentBox">
			<article class="articlelist">
				<p id="specialtitle" class="articleTitle">
				${requestScope.articleDetail.title}
				<label class="articleStamp">${requestScope.articleDetail.userId}
					<span style="color: #b4b4b4;">发表于<em>${requestScope.articleDetail.timeStamp}</em></span> <!--display category of article -->
						<span class="articategory">标签: 
						<c:if test="${requestScope.articleDetail.artiCategory=='1'}">动态</c:if>
						<c:if test="${requestScope.articleDetail.artiCategory=='2'}">随笔</c:if>
						</span>
					</label>
				</p>
				${requestScope.articleDetail.content}
			</article>
		</section>
		<footer>
			<p>
				&copy; Copyright  by Cq-PC1
			</p>
		</footer>
	</body>
</html>