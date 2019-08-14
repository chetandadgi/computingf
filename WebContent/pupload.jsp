<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String entity = request.getParameter("entity");
	String entity_type = request.getParameter("entity_type");
	//    int pass = Integer.parseInt(request.getParameter("pass"));

	String concept = request.getParameter("concept");

	String instances = request.getParameter("instances");

	String site_link = request.getParameter("site_link");

	/*     String image = request.getParameter("image"); */

	System.out.println("print value :" + name + email + entity
			+ entity_type + concept + instances + site_link);
	Connection conn = DbConnection.getConnection();
	Statement sto = conn.createStatement();

	try {
		int i = sto
				.executeUpdate("insert into content_upload(name,email, entity, entity_type,concept,instances,site_link)values('"
						+ name
						+ "','"
						+ email
						+ "','"
						+ entity
						+ "','"
						+ entity_type
						+ "','"
						+ concept
						+ "','"
						+ instances + "','" + site_link + "')");
		if (i != 0) {

			response.sendRedirect("ContentUpload.jsp?msg=succesfully uploaded content");
		} else {
			System.out.println("failed");
		}

	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>
