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
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html lang="en">
<head>


<title>Knowledge Graphs</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
	background-color: #03a9f4e6;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

p {
	color: black;
}
</style>

<link rel="stylesheet" type="text/css"
	href="css/jquery.dataTables.min.css">
<script type="text/javascript" src="jquery-3.3.1.js">
	
</script>
<script type="text/javascript" src="js/jquery.dataTables.min.js">
	
</script>






</head>
<body>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"><p>Computing Semantic
						Similarity of Concepts in Knowledge Graphs</p></a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="AHome.jsp"><p>Home</p></a></li>
				<li><a href="UserDetails.jsp"><p>View All Users</p></a></li>
				<li><a href="PublisherDetails.jsp"><p>View All
							Publishers</p></a></li>
				<li><a href="TextDetails.jsp"><p>Text Details</p></a></li>
				<li class="active"><a href="PContentImageTable.jsp"><p>Image
							Details</p></a></li>
				<li><a href="KGraph.jsp"><p>Knowledge Graph</p></a></li>
				<li><a href="Graph.jsp"><p>Graph</p></a></li>
				<li><a href="AdminLogin.jsp"><p>Logout</p></a></li>
			</ul>
		</div>
	</nav>

	<table id="example" class="display" style="width: 100%">

		<thead>
			<tr>





			</tr>
		</thead>
		<tbody>

			<%
				try {

					String user = (String) session.getAttribute("pub_name");
					/* String user= request.getParameter("user"); */
					DbConnection db = new DbConnection();
					Connection con = db.getConnection();
					Statement st = con.createStatement();
					ResultSet rs;
					String sql = "select * from publisher where id= '" + id + "'"; /* where pub_name= '"+pub_name+"'  */
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>

			<tr>
				<td><img src="single_view_img.jsp?id=<%=rs.getInt("id")%>"
					class="rounded-circle" height="100" width="100"></td>
			</tr>


			<tr>
				<td class="labelName">Publisher Name</td>
				<td>: <%=rs.getString("pub_name")%></td>
			</tr>
			<tr>
				<td class="labelName">Email</td>
				<td>: <%=rs.getString("email")%></td>
			</tr>
			<tr>
				<td class="labelName">Object</td>
				<td>: <%=rs.getString("entity")%></td>
			</tr>
			<tr>
				<td class="labelName">Object Type</td>
				<td>: <%=rs.getString("entity_type")%></td>
			</tr>
			<tr>
				<td class="labelName">Concept</td>
				<td>: <%=rs.getString("concept")%></td>
			</tr>
			<tr>
				<td class="labelName">Instances</td>
				<td>: <%=rs.getString("instances")%></td>
			</tr>
			<tr>
				<td class="labelName">Site Link</td>
				<%-- <td><%=rs.getString("site_link")%></td>   --%>
				<td>: <a href="<%=rs.getString("site_link")%>"><%=rs.getString("site_link")%></a></td>
			</tr>
			<tr>
				<td class="labelName">Action</td>
				<%-- <td><%=rs.getString("site_link")%></td>   --%>

				<td>: <a href="SingleContentLike.jsp?id=<%=rs.getInt("id")%> ">Like</a></td>
			</tr>


			<%
				}
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</tbody>
	</table>
	<!-- </div></div></div> -->

	<script type="text/javascript" language="javascript"
		src="js/jquery-1.12.4.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script type="text/javascript" language="javascript"
		src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.flash.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/jszip.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.print.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable({
				dom : 'Bfrtip',
				"order" : [],
				buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
			});
		});
	</script>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>


</body>
</html>