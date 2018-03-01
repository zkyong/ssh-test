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
	<div id="box" class="easyui-layout" data-options="fit:true" style="width: 600px; height: 400px;">
		<div data-options="
			region:'north',
			title:'North Title',
			split:true,
			border:false,
			iconCls:'icon-save',
			href:'test-01.jsp',
			collapsible:false,
			maxHeight:200"
			style="height: 100px;">North Content</div>
		<div data-options="region:'south',title:'South Title',split:true"
			style="height: 100px;">South Content</div>
		<div data-options="region:'east',title:'East',split:true"
			style="width: 100px;">East Content</div>
		<div data-options="region:'west',title:'West',split:false"
			style="width: 100px;">West Content</div>
		<div data-options="region:'center',title:'Center title'"
			style="padding: 5px; background: #eee;">Center Content</div>
	</div>
	<script>
 		$(function() {
/*  			$('#box').accordion({

			}); */
		});
	</script>
</body>
</html>