<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第5章 Resizable(调整大小)组件</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-05</h1>

	<div id="box" style="width: 200px; height: 100px; left: 100px; background: cyan">调整大小</div>
	<script>
		$(function() {
			$('#box').resizable({
				maxWidth : 400,
				maxHeight : 200,
				onStartResize : function (e) {
					console.log('开始改变大小时！');
				},
				onResize : function (e) {
					console.log('调整大小时期触发！');
				},
				onStopResize : function (e) {
					console.log('停止调整大小时触发！');
				},
			});
		});
	</script>
</body>
</html>