<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JQ POST REQUEST</title>
</head>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
function post(){
	//alert($("#input01").val());
	//参数1：请求URL, 参数2：发送请求的数据name:（取框中的数据）,参数3：回调函数，有数据返回，写到框里面
	$.post("JQGetServlet",{name:$("#input01").val()},function(data,stauts){
		$("#input01").val(data);
	});
}

</script>
<body>
<input type="button" onClick="post()" value="点击发送POST 请求">
<input type="text" value="ABC" id="input01">
</body>
</html>