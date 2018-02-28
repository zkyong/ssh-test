<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第3章 Draggable(拖动)组件</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-03</h1>
	<div id="box" style="width:400px;height:200px;background:orange;">
		<span id="pox">内容部分</span>
	</div>
	<script type="text/javascript">
		$('#box').draggable({
			revert : true,
			cursor : 'text',
			handle : '#pox',
			disabled : false,
			edge : 5,
			proxy: 'clone',
			deltaX : 10,
			deltaY : 10,
			proxy: function(source){
				var p = $('<div style="border:1px solid #ccc;width:400px;height:200px;"></div>');
				p.html($(source).html()).appendTo('body');
				return p;
			},
			onBeforeDrag : function (e) {
				console.log('拖动之前触发！');
			//return false;
			},
			onStartDrag : function (e) {
				console.log('拖动时触发！');
			},
			onDrag : function (e) {
				console.log('拖动过程中触发！');
			},
			onStopDrag : function (e) {
				console.log('在拖动停止时触发！');
			},
		});
	</script>
</body>
</html>