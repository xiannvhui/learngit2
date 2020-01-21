<%@ page language="java"  import="java.util.*,java.net.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cookie应用</title>
</head>
<body>

	
		<img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579007853488&di=e60e4295cabeae119e5811f33727cad2&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fmobile%2F7%2F55a5b6fad5e7b_130_170.jpg">
	<hr>
	<H1 align="center" >用户登录</H1>
	<%
		request.setCharacterEncoding("utf-8");
		String username="";
		String password="";
		Cookie[] cookies =request.getCookies();
		if(cookies !=null&&cookies.length>0)
		{
			for(Cookie c:cookies)
			{
				if(c.getName().equals("username"))
				{
						username=URLDecoder.decode(c.getValue(),"utf-8");
				}
				if(c.getName().equals("password"))
				{
						password=URLDecoder.decode(c.getValue(),"utf-8");
				}
			}
		}
	%>
	<form action="dologin.jsp" name="loginForm" method="post"><!--  get是明文方式-->
			<table align="center" >
				<tr>
					<td>用户名：</td>
					<td><input type="text" name="username"value="<%=username%>"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="password"value="<%=password%>"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox" name="isUseCookie" checked="checked">十天之内记住我的登录状态</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="登录">&nbsp;&nbsp;<input type="reset" value="取消"></td>
				</tr>
			</table>
		</form>
</body>
</html>