<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有图书信息</title>
<style type="text/css">
	td{font-size: 12px;}
	h2{margin: 0px}
</style>
</head>
<body>

	<table align="center" width="450" border="1" height="180"
		bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="8">
				<h2>所有待办事项</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1">
			<td><b>事件ID</b></td>
			<td><b>用户ID</b></td>
			<td><b>事件标题</b></td>
			<td><b>事件内容</b></td>
			<td><b>优先级</b></td>
			<td><b>创建时间</b></td>
			<td><b>修改时间</b></td>
			<td><b>备注</b></td>
		</tr>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1872");
			Statement stmt = connect.createStatement();//从数据库里面取东西对比
			String sql = "select  *  from CUX_TODO_ITEMS";
			ResultSet i = stmt.executeQuery(sql);
			// 遍历图书集合中的数据
			while (i.next()) {
		%>
		<tr align="center" bgcolor="white">
			<td><%=i.getString(1)%></td>
			<td><%=i.getString(2)%></td>
			<td><%=i.getString(3)%></td>
			<td><%=i.getString(4)%></td>
			<td><%=i.getString(5)%></td>
			<td><%=i.getString(6)%></td>
			<td><%=i.getString(7)%></td>
			<td><%=i.getString(8)%></td>
		</tr>
		<%
			}
			stmt.close();
			connect.close();
		%>
	</table>
</body>
</html>