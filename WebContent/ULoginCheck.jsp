<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<body>
	<%
		String name = request.getParameter("name"); 
		String password = request.getParameter("password");

		DbConnection db = new DbConnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from user where name='" + name
				+ "' and password='" + password + "'");
		if (rs.next()) {
			session.setAttribute("user", name);
			//out.println("welcome " + userid);
			response.sendRedirect("UserDetailsByKeyword.jsp");

		} else {
			out.println("Invalid password <a href='ULogin.jsp'>try again</a>");
		}
	%>

</body>
</html>