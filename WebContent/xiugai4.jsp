<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加结果</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="book" class="com.lyq.bean.Book"></jsp:useBean>
	<jsp:setProperty property="*" name="book"/>
	
	<%
	int pid = Integer.valueOf( request.getParameter("pid")); 

		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/test";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "1872";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 添加图书信息的SQL语句
			String sql = "update tb_books set name=?,price=?, bookCount=?,author=?  where id=?";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1, book.getName());
			
			// 对SQL语句中的第2个参数赋值
			ps.setDouble(2, book.getPrice());
			// 对SQL语句中的第3个参数赋值
			ps.setInt(3,book.getBookCount());
			// 对SQL语句中的第4个参数赋值
			ps.setString(4, book.getAuthor());
		  
			ps.setInt(5,pid);
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("成功修改了 " + row + "条数据！");
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("图书信息添加失败！");
			e.printStackTrace();
		}
		 response.setHeader("refresh","1;url = chaxun.jsp");
	%>
	<br>
	
</body>
</html>