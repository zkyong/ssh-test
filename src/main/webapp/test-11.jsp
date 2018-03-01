<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第11章 Accordion(分类)组件</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-11</h1>
	<div id="box">
		<div title="分类0标题" data-options="closable : true">分类0内容</div>
		<div title="分类1标题">分类1内容</div>
		<div title="分类2标题">分类2内容</div>
	</div>
	<script>
 		$(function() {
 			$('#box').accordion({
 				width : 300,
 				height : 200,
 				fit : false,
 				border : false,
 				animate : true,
 				multiple : false,
 				selected : 1,
				onSelect : function(title, index) {
					console.log("onSelect|" + title + '|' + index);
				},
				onUnselect : function(title, index) {
					console.log("onUnselect|" + title + '|' + index);
				},
				onAdd : function(title, index) {
					console.log("onAdd|" + title + '|' + index);
				},
				onBeforeRemove : function(title, index) {
					console.log("onBeforeRemove|" + title + '|' + index);
				},
				onRemove : function(title, index) {
					console.log("onRemove|" + title + '|' + index);
				},
			});
		});
	</script>
</body>
</html>