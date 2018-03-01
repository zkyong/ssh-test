<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第10章 Tabs(选项卡)组件</title>
<meta charset="UTF-8" />
<style type="text/css">
	.allCls{
		border : 2px solid red;
	}
	.headerCls{
		border : 2px solid green;
	}
	.bodyCls{
		border : 2px solid blue;
	}
</style>
</head>
<body>
	<h1>hello test-10</h1>
	<div id="box">
		<div title="Tab1标题" data-options="iconCls:'icon-reload',closable:true">Tab1内容</div>
		<div title="Tab2标题" data-options="iconCls:'icon-reload',closable:true">Tab2内容</div>
		<div title="Tab3标题" data-options="iconCls:'icon-reload',closable:true">Tab3内容</div>
		<div title="Tab4标题" data-options="iconCls:'icon-reload',closable:true">Tab4内容</div>
	</div>
	<script>
		$(function() {
			$('#box').tabs({
				width : 500,
				height : 200,
				plain : false,
				fit : false,
				scrollIncrement : 1,
				scrollDuration : 1000,
				tools : [{
					iconCls : 'icon-add',
					handler : function () {
						alert('添加!');
					},
				},{}],
				toolPosition : 'right',
				tabPosition : 'top',
				selected: 1,
			});
		});
	</script>
</body>
</html>