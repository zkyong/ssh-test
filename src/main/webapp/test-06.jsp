<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第6章 Tooltip(提示框)组件</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-06</h1>

	<div id="box" style="width: 200px; height: 100px; left: 100px; background: cyan">提示框</div>
	<script>
		$(function() {
			$('#box').tooltip({
				position : 'top',
				content : '这里可以输入提示内容',
				trackMouse : true,
				showEvent : 'click',
				hideEvent : 'dblclick',
				showDelay : 200,
				hideDelay : 300,
				onShow : function (e) {
					$('#box').tooltip('update', '更新为:'+ new Date());
					console.log($('#box').tooltip('options'));
					alert('显示提示框的触发');
				},
				onHide : function (e) {
					alert('隐藏提示框的触发');
				},
				onUpdate : function (content) {
					alert('内容更新为：' + content);
				},
				onPosition : function (left,top) {
					console.log('left:' + left + ',top:' + top);
				},
				onDestroy : function (none) {
					alert('提示框被销毁的时候触发');
				},
			});
		});
	</script>
</body>
</html>