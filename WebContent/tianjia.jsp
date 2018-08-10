<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加待办事项</title>
<script type="text/javascript">
	function check(form){
		with(form){
			/*  if(Title.value == ""){
				alert("标题不能为空");
				return false;
			}
			if(Content.value == ""){
				alert("内容不能为空");
				return false;
			}
			if(Priority.value == ""){
				alert("优先级不能为空");
				return false;
			}  */
			return true;
		}
	}
</script>
</head>
<body>
   <%
    int myid = Integer.valueOf(request.getParameter("did"));
    out.print(myid);
    %> 
	<form action="tianjia2.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加待办事项</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">事项id：</td>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td align="right">用户id：</td>
				<td><input type="text" name="mid" /></td>
			</tr>
			<tr>
				<td align="right">待办事项标题：</td>
				<td><input type="text" name="Title" /></td>
			</tr>
			<tr>
				<td align="right">待办事项内容：</td>
				<td><input type="text" name="Content" /></td>
			</tr>
			<tr>
				<td align="right">优　先　级：</td>
				<td><input type="text" name="Priority" /></td>
			</tr>
			<tr>
				<td align="right">备　　注：</td>
				<td><input type="text" name="remarks" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="添　加">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>