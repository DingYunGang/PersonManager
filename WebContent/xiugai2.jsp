<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*"%>
<%@page import= "com.lyq.bean.* "%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改数据</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="book" class="com.lyq.bean.Book"></jsp:useBean>
	<jsp:setProperty property="*" name="book"/>
	<%
	int id = Integer.valueOf(request.getParameter("id"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1872");
	Statement stmt = connect.createStatement();//从数据库里面取东西对比
	String sql = "select  *  from tb_books where id="+id;
	ResultSet i = stmt.executeQuery(sql);
	
	Book booksx = new Book();
	while (i.next()) {
	booksx.setId(Integer.valueOf(i.getString(1)));
	booksx.setName(i.getString(2));
	booksx.setPrice(Double.valueOf(i.getString(3)));
	booksx.setBookCount(Integer.valueOf(i.getString(4)));
	booksx.setAuthor(i.getString(5));
	
	 out.print("选中要修改的信息是："+"<br>");
	 out.print(i.getString(1)+"<br>");
	 out.print(i.getString(2)+"<br>");
	 out.print(i.getString(3)+"<br>");
	 out.print(i.getString(4)+"<br>");
	 out.print(i.getString(5)+"<br>");
 
	}
	request.setAttribute("books",booksx);
	
	%>
	<br>
	<jsp:forward page="xiugai3.jsp"></jsp:forward>
<!-- 	<a href="xiugai3.jsp">确定</a> -->
</body>
</html>