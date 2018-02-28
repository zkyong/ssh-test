<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第2章 使用EasyUI</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-02</h1>
	<!-- 1、使用class 方式加载 -->
	<div class="easyui-dialog" id="box1" title="标题1" style="width: 400px; height: 200px; top:0px ">box1内容部分</div>
	
	<!-- 2、使用JS 调用加载 -->
	<div id="box2">box2内容部分</div>
	<script type="text/javascript">
		$('#box2').dialog({
			title : "标题2",
			width : "400px",
			height: "200px",
			top   : "200px" 
		});
	</script>
	
	<!-- 3、使用easyload.js 智能加载 -->
	<div id="box3">box3内容部分</div>
	<script type="text/javascript" src="easyui/easyloader.js"></script>
	<script type="text/javascript">
		easyloader.load('dialog', function () { 
			$('#box3').dialog({
				title : "标题3",
				width : "400px",
				height: "200px",
				top   : "400px"
			}); 
		});
	</script>
</body>
</html>