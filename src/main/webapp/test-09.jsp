<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base-easyui.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>第9章 Panel(面板)组件</title>
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
	<h1>hello test-09</h1>

	<div id="box">面板内容</div>
	<script>
		$(function() {
			$('#box').panel({
				width : 500,
				height : 150,
				title : '面板标题',
				iconCls : 'icon-edit',
				cls : 'allCls',
				headerCls : 'headerCls',
				bodyCls : 'bodyCls',
				style : {
					'border' : '5px solid yellow',//覆盖了前面的allCls
				},
				fit : false, // 为true时自适应父容器
				border : false,
				doSize : true,
				noheader: false, // 为true时无header
				content : "面板内容,将覆盖div标签中的原内容",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				collapsed : false,
				minimized : false,
				maximized : false,
				closed : false,
				tools : [
					{
						iconCls : 'icon-help',
						handler : function () {
							alert('help！');
						}
					},
					{
						iconCls : 'icon-add',
						handler : function () {
							alert('add！');
						},
					},
					{
						iconCls : 'icon-cancel',
						handler : function () {
							alert('cancel！');
						},
					}
				],
				href : 'test-08.jsp', // 将会替换面板中原来的内容
				loadingMessage : '加载中...',
				extractor : function (data) {
					alert(data);
					return data.substring(0,3);
				},
				
				// 事件
				onBeforeLoad : function() {
					alert('加载远程数据之前触发！');
				},
				onLoad : function() {
					alert('加载远程数据时触发！');
				},
				onBeforeOpen : function() {
					alert('打开面板之前触发！');
					//return false;
				},
				onOpen : function() {
					alert('打开面板之后触发！');
				},
				onBeforeClose : function() {
					alert('关闭面板之前触发！');
					//return false;
				},
				onClose : function() {
					alert('关闭面板之后触发！');
				},
				onBeforeDestroy : function() {
					alert('销毁面板之前触发！');
					return false;
				},
				onDestroy : function() {
					alert('销毁面板之后触发！');
				},
				onBeforeCollapse : function() {
					alert('面板折叠之前触发！');
					return false;
				},
				onCollapse : function() {
					alert('面板折叠之后触发！');
				},
				onBeforeExpand : function() {
					alert('面板展开之前触发！');
					return false;
				},
				onExpand : function() {
					alert('面板展开之后触发！');
				},
				onMaximize : function() {
					alert('窗口最大化之后触发！');
				},
				onRestore : function() {
					alert('窗口回复到原始大小后触发！');
				},
				onMinimize : function() {
					alert('窗口最小化之后触发！');
				},
				onResize : function(width, height) {
					alert('面板改变大小之后触发！' + width + '|' + height);
				},
				onMove : function(left, top) {
					alert('面板移动之后触发！' + left + '|' + top);
				},
			});
		});
	</script>
</body>
</html>