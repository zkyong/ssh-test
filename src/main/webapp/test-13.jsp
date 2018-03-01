<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第12章 Layout(布局)组件</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-13</h1>
	<div id="box">

	</div>
	<script>
 		$(function() {
 			$('#box').window({
 				width : 600,
 				height : 400,
 				modal : true,
 				collapsible : true,
 				minimizable : true,
 				maximizable : true,
 				closable : true,
 				closed : false,
 				zIndex : 9999,
 				draggable : true,
 				resizable : true,
 				shadow : false,
 				inline : false,
 			});
		});
	</script>
</body>
</html>