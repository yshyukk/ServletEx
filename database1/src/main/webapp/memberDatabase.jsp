<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection connection;
	Statement statement;
	ResultSet resultSet;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "hr";
	String upw = "hr";
	String query = "select first_name, last_name from employees";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			Class.forName(driver);//oracle.jdbc.driver.OracleDriver
			connection = DriverManager.getConnection(url, uid, upw); //jdbc:oracle:thin:@localhost:1521:xe
			statement = connection.createStatement();
			resultSet = statement.executeQuery(query); //select
			
			while(resultSet.next()){
				String firstName = resultSet.getString("first_name");
				String lastName = resultSet.getString("last_name");
				
				out.println("이름 :" + firstName + " " + lastName + "<br/>");
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{ //자원해제 finally는 무조건 실행됨.
			try{
				if(resultSet != null) resultSet.close();
				if(resultSet != null) statement.close();
				if(resultSet != null) connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	
	%>
</body>
</html>