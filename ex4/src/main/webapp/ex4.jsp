<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		int i=10;
		String str="ABCDEF";
	%>
	
	<%
		out.println(i + "<br/>");
		out.println(str+ "<br/>") ;
	%>
	
	i = <%= i %><br/>
	str = <%= str %><br/>
</body>
</html>