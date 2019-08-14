<!DOCTYPE html>

<%@page import="network.DbConnection"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
	String id = request.getParameter("id");
	int id1 = Integer.valueOf(id);

	String email = (String) session.getAttribute("user");
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
	try {

		String user = (String) session.getAttribute("pub_name");
		/* String user= request.getParameter("user"); */
		DbConnection db = new DbConnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();
		ResultSet rs;
		String sql = "select * from publisher where id= " + id1;
		rs = st.executeQuery(sql);
		while (rs.next()) {

			int rank = rs.getInt("rank");
			int updaterank = rank + 1;
			String strQuery2 = "update publisher set rank='"
					+ updaterank + "' where id=" + id1;
			con.createStatement().executeUpdate(strQuery2);
			response.sendRedirect("PContentImageTable.jsp?msg=Liked Successfully");

		}
		con.close();

	} catch (Exception e) {
		e.printStackTrace();
	}
%>

</body>
</html>