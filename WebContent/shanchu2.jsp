<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除</title>
</head>
<body>
  <%
	int id = Integer.valueOf(request.getParameter("id"));
    out.print(id);
  
    Class.forName("com.mysql.jdbc.Driver");
	Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1872");
	Statement stmt = connect.createStatement();//从数据库里面取东西对比
	String sql = "delete from CUX_TODO_ITEMS where TODO_ITEM_ID=?";
	PreparedStatement ps = connect.prepareStatement(sql);
	// 对SQL语句中的第一个占位符赋值
	ps.setInt(1, id);
	// 执行更新操作
	ps.executeUpdate();
	// 关闭PreparedStatement
	ps.close();
	// 关闭Connection
	connect.close();
    out.print("删除成功");
    response.setHeader("refresh","1;url = chaxun.jsp");
  
  %>
</body>
</html>