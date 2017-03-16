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
	
	<%
		Object username = session.getAttribute("username");
		if(username == null){
			username = "";
		}
	%>
	<form action="<%= response.encodeURL("loginSuccess.jsp") %>" method="post">
		username: <input type="text" name="username" value="<%= username%>"/><br/>
		<input type="submit" value="登录"/>
	</form>
</body>
</html>