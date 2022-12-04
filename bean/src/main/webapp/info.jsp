<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.javalec.bean.Student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:setProperty name="student" property="name" value="윤상혁" />
	<jsp:setProperty name="student" property="age" value="13" />
	<jsp:setProperty name="student" property="grade" value="6" />
	<jsp:setProperty name="student" property="studentNum" value="23" />
	
	<jsp:getProperty name="student" property="name" /><br/>
	<jsp:getProperty name="student" property="age" /><br/>
	<jsp:getProperty name="student" property="grade" /><br/>
	<jsp:getProperty name="student" property="studentNum" /><br/>
	
</body>
</html>