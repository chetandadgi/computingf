<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
	String keyword = request.getParameter("keyword");
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
	background-color: #1cb1f5;
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
	color: white;
	    font-weight: bold;
	
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
				<li><a href="UserDetailsByKeyword.jsp"><p>User Home</p></a></li>
				<!--   <li><a href="AdminLogin.jsp">Admin</a></li> -->
				<li class="active"><a href="UserDetailsByKeyword.jsp"><p>Keyword
							Search Results</p></a></li>
				<li><a href="ULogin.jsp"><p>Logout</p></a></li>
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

					String user = (String) session.getAttribute("user");
					/* String user= request.getParameter("user"); */

					// date and Time
					DateFormat dateFormat = new SimpleDateFormat(
							"yyyy.MM.dd G 'at' HH:mm:ss ");
					Date date = new Date();
					String time = dateFormat.format(date);
					System.out.println("current Date " + time);

					DbConnection db1 = new DbConnection();
					Connection con1 = db1.getConnection();
					String sql1 = "insert into searchhistory (user,keyword,dt) values ('"
							+ user + "','" + keyword + "','" + time + "')";
					PreparedStatement st1 = con1.prepareStatement(sql1);
					st1.executeUpdate();

					DbConnection db = new DbConnection();
					Connection con = db.getConnection();
					Statement st = con.createStatement();
					ResultSet rs;
					String sql = "select * from publisher where match (instances) against ('"
							+ keyword + "')";
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

			<td class="labelName">Action</td>

			<td>: <a href="like.jsp?id=<%=rs.getInt("id")%> ">Like</a></td>
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

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>


</body>
</html>