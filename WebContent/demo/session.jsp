<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% 
		//HttpSession session = request.getSession(false);
		//HttpSession session = request.getSession(); //<=>request.getSession(true)
	    HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(5);//设置session的过期时间
		out.print(session.getId());
		out.print("<br/>");
		out.print(session.getMaxInactiveInterval());
		
	%>
</body>
</html>