<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JQuery GET REQUEST</title>
</head>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function get(){
		// JQ get 请求的语法格式：
		// 匿名函数中data 是回来的数据，status 是回来的状态
		$.get("JQGetServlet?name=zhangsan",function(data,status){
			//我们把回来的数据，记录到蓝色的框子里
			$("#div01").text(data);
			
		});
	}
</script>
<body>
	<input type="button" value="点击发送GET请求" onClick="get()">
	<div id="div01"
		style="width: 100px; height: 100px;border=1px solid blue;"></div>
</body>
</html>