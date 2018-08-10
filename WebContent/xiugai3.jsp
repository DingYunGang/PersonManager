<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加图书信息</title>
<script type="text/javascript">
	function check(form){
		
		with(form){
			if(name.value == ""){
				alert("名字不能空");
				return false;
			}
			if(price.value == ""){
				alert("价格不能为空");
				return false;
			}
			if(author.value == ""){
				alert("作者不能为空");
				return false;
			}
			return true;
		}
	}
</script>
</head>
<body>
    <%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="book" class="com.lyq.bean.Book"></jsp:useBean>
	<form action="xiugai4.jsp" method="post" onsubmit="return check(this);">
	<input type="hidden" name="pid" value="<%=request.getParameter("id") %>">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>修改图书信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">图书名称：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">价　　格：</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td align="right">数　　量：</td>
				<td><input type="text" name="bookCount" /></td>
			</tr>
			<tr>
				<td align="right">作　　者：</td>
				<td><input type="text" name="author" /></td>
			</tr>
			<tr>
                 <td align="center" colspan="2">
					<input type="submit" value="修  改">
				</td>
				
			</tr>
			
		</table>
		​
	</form>
	<% int id = Integer.valueOf(request.getParameter("id"));
	out.print(id);
	%>
</body>
</html>