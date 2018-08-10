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
			<td align="center" colspan="6">
				<h2>所有图书信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1">
			<td><b>ID</b></td>
			<td><b>图书名称</b></td>
			<td><b>价格</b></td>
			<td><b>数量</b></td>
			<td><b>作者</b></td>
			<td><b>修 改</b></td>
		</tr>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1872");
			Statement stmt = connect.createStatement();//从数据库里面取东西对比
			String sql = "select  *  from tb_books";
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
			<td>
			<a href="xiugai2.jsp?id=<%=i.getString(1)%>">修改</a>
			
			</td>
		</tr>
		<%
			}
			stmt.close();
			connect.close();
		%>
	</table>
</body>
</html>