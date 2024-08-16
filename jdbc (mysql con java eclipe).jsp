<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		String url = "jdbc:mysql://localhost:3306/rough";
		String user = "root";
		String password = "123456";
		String sql = "SELECT * FROM TEACHER WHERE T_ID=7";
	
		Connection con = DriverManager.getConnection(url, user, password);
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		rs.next();
	%>
	
	T_ID = <%= rs.getString(1) %><br>
	Name = <%= rs.getString(2) %><br>
	Age = <%= rs.getString(3) %><br>
	Department = <%= rs.getString(4) %><br>
	Date_of_join = <%= rs.getString(5) %><br>
	Salary = <%= rs.getString(6) %><br>
	Gender = <%= rs.getString(7) %><br>
	
</body>
</html>
