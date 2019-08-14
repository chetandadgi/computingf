<!DOCTYPE html>
<%@page import="network.DbConnection"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
	String email = (String) session.getAttribute("user");
%>

<html lang="en">
<head>


<title>Knowledge Graphs</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style>
p {
	color: white;
	    font-weight: bold;
}
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
						Similarity of Concepts  Knowledge Graphs</p></a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="AHome.jsp"><p>Home</p></a></li>
				<li><a href="UserDetails.jsp"><p>View All Users</p></a></li>
				<li><a href="PublisherDetails.jsp"><p>View All
							Publishers</p></a></li>
				<li><a href="TextDetails.jsp"><p>Text Details</p></a></li>
				<li><a href="PContentImageTable.jsp"><p>Image Details</p></a></li>
				<li><a href="KGraph.jsp"><p>Knowledge Graph</p></a></li>
				<li class="active"><a href="Graph.jsp"><p>Graph</p></a></li>
				<li><a href="ChartGraph.jsp"><p>Keyword Graph</p></a></li> 
				<li><a href="AdminLogin.jsp"><p>Logout</p></a></li>
			</ul>
		</div>
	</nav>



	<!-- 
  <div class="container-fluid text-center">

<div class="jumbotron">    
  <div class="row content"> 
   -->

	<table id="example" class="display" style="width: 50%">

		<thead>
			<tr>
				<!-- <th>ID</th> -->
				<th>Title</th>
				<th>Count</th>




			</tr>
		</thead>
		<tbody>

			<%
				try {
					String user = request.getParameter("user");
					DbConnection db = new DbConnection();
					Connection con = db.getConnection();
					Statement st = con.createStatement();
					ResultSet rs;
					String sql = "select * from publisher "; /* where username='"+user+"' */
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>

			<tr>
				<%-- <td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td> --%>
				<td><%=rs.getString(5)%></td>
				<td data-order="<%=rs.getInt(1)%>"><blink
						style="color: #FF0000;">
						<b>Maximum Count : <%=rs.getInt(10)%>
						</b>
					</blink></td>
				<%-- <blink><td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td></blink> --%>
				<%-- <td><%=rs.getString(3)%></td> --%>
				<%-- <td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td> --%>


				<%-- 		<td><img src="view_img.jsp?id=<%=rs.getInt("id")%>"
					class="rounded-circle" height="100" width="100"></td> --%>

				<%-- <td><a href='TweetAnalysis.jsp?id=<%=rs.getInt(1)%>'>Analysis</a></td>
 --%>
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

	<!-- blinking text code -->
	<script type="text/javascript">
		function blink() {
			var blinks = document.getElementsByTagName('blink');
			for (var i = blinks.length - 1; i >= 0; i--) {
				var s = blinks[i];
				s.style.visibility = (s.style.visibility === 'visible') ? 'hidden'
						: 'visible';
			}
			window.setTimeout(blink, 200);
		}
		if (document.addEventListener)
			document.addEventListener("DOMContentLoaded", blink, false);
		else if (window.addEventListener)
			window.addEventListener("load", blink, false);
		else if (window.attachEvent)
			window.attachEvent("onload", blink);
		else
			window.onload = blink;
	</script>
	<!--   <blink style="color: #FF0000;"><b>Top First Matching Files</b></blink> -->
	<!-- blinking text code -->


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