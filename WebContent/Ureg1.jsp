

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	//    int pass = Integer.parseInt(request.getParameter("pass"));

	String mobile = request.getParameter("mobile");

	String address = request.getParameter("address");

	System.out.println("print value :" + name + email + password
			+ mobile + address);
	Connection conn = DbConnection.getConnection();
	Statement sto = conn.createStatement();

	try {
		int i = sto
				.executeUpdate("insert into user(name, email, password,mobile,address)values('"
						+ name
						+ "','"
						+ email
						+ "','"
						+ password
						+ "','" + mobile + "','" + address + "')");
		if (i != 0) {

			response.sendRedirect("ULogin.jsp");
		} else {
			System.out.println("failed");
		}

	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>
