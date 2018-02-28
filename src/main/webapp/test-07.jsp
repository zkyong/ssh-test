<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第7章 LinkButton(按钮)组件</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-07</h1>

	<div id="box">提示框</div>
	<script>
		$(function() {
			$('#box').linkbutton({
				id : 'box',
				disabled : false,
				toggle : true,
				selected : false,
				group : 'sex',
				plain : true,
				text : '文字',
				iconCls : 'icon-add',
				iconAlign : 'right',
			});
		});
	</script>
</body>
</html>