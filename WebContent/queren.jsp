<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆验证</title>
</head>
<body>
     <%
        String name = request.getParameter("name");
        String mima = request.getParameter("password");
        
        
        Class.forName("com.mysql.jdbc.Driver");
		Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1872");
		Statement stmt = connect.createStatement();//从数据库里面取东西对比
		String sql = "select  *  from CUX_USERS where user_name='"+name+"'and password='"+mima+"'";
		ResultSet i = stmt.executeQuery(sql);
		// 遍历图书集合中的数据
		if(i.next()) {
			out.print("登陆成功"+"<br>");
			out.print(i.getString(2)+"<br>");
			out.print(i.getString(3)+"<br>");
		}else{
			out.print("登陆失败，没有账号信息");
		}
		int dengluid =i.getInt(1);
		out.print(dengluid);
		stmt.close();
		connect.close();  
		 response.setHeader("refresh","1;url = MyInformation.jsp?dengluid="+dengluid);
     %>
   
	
</body>
</html>