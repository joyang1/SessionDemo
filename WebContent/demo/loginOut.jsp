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
	
	ByeBye: <%= session.getAttribute("username") %>
	<br/><br/>
	
	<%
		//注销session
		session.invalidate();
	%>
	
	<a href="login.jsp">重新登录</a>
</body>
</html>