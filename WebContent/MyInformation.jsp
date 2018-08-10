<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的个人信息</title>
</head>
<body>
   
    <%
    int myid = Integer.valueOf(request.getParameter("dengluid"));
    
    Class.forName("com.mysql.jdbc.Driver");
	Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1872");
	Statement stmt = connect.createStatement();//从数据库里面取东西对比
	String sql = "select  *  from CUX_USERS where user_id='"+myid+"'";
	ResultSet i = stmt.executeQuery(sql);
	// 遍历图书集合中的数据
	if(i.next()) {
	 %>
	<tr>
		<td text-align:right>欢迎您！<%=i.getString(2)%>！
		<td>
	</tr>
	<br>
	<br>
	<br>
	<br>
	<tr>基本信息</tr>
	<table border="1">
		<br>
		<tr>
			<td>姓名：</td>
			<td><%=i.getString(2)%></td>
			<td>性别：</td>
			<td><%=i.getString(4)%></td>
		</tr>
		<tr>
			<td>年龄:</td>
			<td><%=i.getString(5)%></td>
			<td>电话号码:</td>
			<td><%=i.getString(6)%></td>
		</tr>
	</table>
	<br>
	<tr>其他信息</tr>
	<table border="1">
		<tr>
			<td>创建日期:</td>
			<td><%=i.getString(7)%></td>
			<td>修改日期:</td>
			<td><%=i.getString(8)%></td>
		</tr>
		<tr>
			<td>备注</td>
			<td colspan="3"><%=i.getString(9)%></td>
		</tr>
	</table>
	<br>
	<a href="UpdateMyInformation.jsp?pid=<%=i.getString(1)%>">修改我的个人信息</a>
	<br>
	<br>
	<a href="chaxun.jsp">查询代办事项</a>
	<br>
	<br>
	<a href="tianjia.jsp?did=<%=myid%>">添加代办事项</a>
	<br>
	<br>
	<a href="shanchu.jsp">删除代办事项</a>
	<br>
	<br>
	<a href="xiugai.jsp">修改代办事项</a>
	<%
	}
	
	
	%>
    
    
    
</body>
</html>