<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登陆</title>
</head>
<body>
	<form id="form1" name="form1" method="post" action="">
		<p align="center">
		    <strong>个人代办事项管理系统</strong>
		    <br>
		    <br>
			<strong>用户登录 </strong>
		</p>
	</form>
	<p></p>
	<form action="queren.jsp" method="post">
		<table width="252" border="1" align="center">
			<tr>
				<td width="72"><strong>用户名:</strong></td>
				<td width="164"><input name="name" type="text" /></td>
			</tr>
			<tr>
				<td><strong>密码:</strong></td>
				<td><input name="password" type="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><a href="index.jsp" onclick="link"><input
						type="submit" name="submit" value="登录"></a></td>
			</tr>
		</table>
	</form>
</body>
</html>