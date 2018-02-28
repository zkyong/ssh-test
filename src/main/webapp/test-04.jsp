<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第4章 Droppable(放置)组件</title>
<meta charset="UTF-8" />
</head>
<body>
	<h1>hello test-04</h1>

	<div id="pox"  style="width: 200px; height: 100px; left: 100px; background: cyan">放置区</div>
	<div id="box1" style="width: 100px; height: 50px; left: 100px; background: lightcoral">物品1</div>
	<div id="box2" style="width: 100px; height: 50px; left: 100px; background: darkseagreen">物品2</div>
	<script>
		$(function() {
			$("#box1").draggable();
			$("#box2").draggable();
			$("#pox").droppable({
				accept : "#box1,#box2",
				onDragEnter : function(e, source) {
					console.log("在被拖拽元素到放置区内的时候触发--到"),
					console.log($(source).html());
				},
				
				onDragOver : function(e, source) {
					console.log("在被拖拽元素经过放置区的时候触发--经过"),
					console.log($(source).html());
				},
				
				onDragLeave : function(e, source) {
					console.log("在被拖拽元素离开放置区的时候触发--离开"),
					console.log($(source).html());
					
				},
				
				onDrop : function(e, source) {
					console.log("在被拖拽元素放入到放置区的时候触发--放入"),
					console.log($(source).html());
				},
			});
		});
	</script>
</body>
</html>