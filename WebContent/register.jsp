<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
function checkUsername(){
	$.post("CheckUsernameServlet",{name:$("#name").val()},function(data,stauts){
		$("#span01").html(data);
	});
}

</script>
<body>
<table border="1" width="500">
		<tr>
			<td>用户名：</td>
			<!-- 测试表格，只要光标移走，便知道数据库是否有数据 -->
			<td><input type="text" id="name" onblur="checkUsername()"></td>
			<td width="200"><span id="span01"></span></td>

		</tr>
		<td>密码：</td>
		<td><input type="text"></td>
		<td></td>

		</tr>
		<td>邮箱：</td>
		<td><input type="text"></td>
		<td></td>

		</tr>

	</table>
</body>
</html>