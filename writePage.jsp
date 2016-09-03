<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
	<head>
		<meta charset="utf-8">

		<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
		Remove this if you use the .htaccess -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title>writepage</title>
		<meta name="description" content="">
		<meta name="author" content="Cq-PC1">

		<meta name="viewport" content="width=device-width; initial-scale=1.0">

		<!-- Replace favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->
		<link rel="shortcut icon" href="/favicon.ico">
		<link rel="apple-touch-icon" href="/apple-touch-icon.png">
		<link rel="stylesheet" type="text/css" href="css/main.css">
		<link rel="stylesheet" type="text/css" href="css/index.css">
	</head>

	<body>
		<div id="outter-w">
			<header id="pub">文章发布</header>
			<section id="writeArti">
				<form  action="writeArticle?action=w" method="post">
				<label class="textlabel-w" for="usrId">用户ID:</label>
				<input id="uerId" class="field-w" name="userId" />
				<label class="textlabel-w" for="title">题目:</label>
				<input id="title" class="field-w" name="title" />
				<span class="textlabel-wc">
					<label  for="category1">动态</label>
					<input id="category1" type="radio" name="category" value="1" />
					<label for="category2">随笔</label>
					<input id="category2" type="radio" name="category" value="2" />
				</span>
				<label class="textlabel-w" for="w-text">正文:</label>
				<textarea id="text-w" name="content"></textarea>
				<input class="btn" type="submit" value="发布"/>
				<input class="btn cancel" type="reset" value="取消" />
				</form>
			</section>
			<footer>
				<p>
					&copy; Copyright  by Cq-PC1
				</p>
			</footer>
		</div>
	</body>
</html>