<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第8章 ProgressBar(进度条)组件</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-08</h1>

	<div id="box" onclick="changeValue(1);">进度条</div>
	<script>
		$(function() {
			$('#box').progressbar({
				width  : 220,
				height : 30,
				value  : 10,
				text   : '正在加载中,请稍候...{value}%',
				onChange : function (newValue, oldValue) {
					console.log('新:' + newValue + ',旧:' + oldValue);
				},
			});
		});
		
		// 修改value的函数
		function changeValue(addValue) {
			var value = $('#box').progressbar('getValue');
			if (value == 100) value = 0;
			$('#box').progressbar('setValue', value + addValue);
		};
		
		// 在指定的延迟时间后执行
		setTimeout(function () {
			$('#box').progressbar('setValue', 0);
		}, 10000);
		// 按指定的时间循环执行
		setInterval(function() {
			$('#box').progressbar('setValue', $('#box').progressbar('getValue') + 5);
		}, 200);
	</script>
</body>
</html>