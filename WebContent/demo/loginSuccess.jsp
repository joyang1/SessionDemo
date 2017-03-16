<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session 示例</title>
</head>
<body>

	SessionId: <%= session.getId() %>
	<br/><br/>
	
	isCreateNew:<%= session.isNew() %>
	<br/><br/>
	
	maxInActiveInterval:<%= session.getMaxInactiveInterval() %>
	<br/><br/>
	
	CreatedTime:<%= session.getCreationTime() %>
	<br/><br/>
	
	lastAccessedTime: <%= session.getLastAccessedTime() %>
	<br/><br/>
	
	Hello: <%= request.getParameter("username") %>
	<br/><br/>
	
	<%
		//将username存储于session之中,便于在整个会话过程中记住当前user;
		// 当然服务器端可以找到session还是通过cookie(URL重写)在客户端和服务器端传递JSESSIONID
		session.setAttribute("username", request.getParameter("username"));
	%>
	

		<!-- 
		
			cookie被禁用的情况下使用url重写的方式传递JSSESSIONID;
			重写使用：response.encodeURL或response.encodeRedirectURL()都行
		-->
		

	<a href="<%= response.encodeURL("login.jsp") %>">重新登录</a>
	<a href="<%= response.encodeURL("loginOut.jsp") %>">注销</a>
</body>
</html>