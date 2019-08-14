<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript" src="js/fusioncharts.js"></script>
<script type="text/javascript" src="js/fusioncharts.charts.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<title>Insert title here</title>

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
	height: 120%;
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
			<!-- <li><a href="KGraph.jsp"><p>Knowledge Graph</p></a></li>
			<li><a href="Graph.jsp"><p>Graph</p></a></li> -->
			<!-- <li><a href="AdminLogin.jsp"><p>Logout</p></a></li> -->
		</ul>
	</div>
	</nav>
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="AHome.jsp">Admin</a>
				</p>

				<p>
					<a href="KGraph.jsp">Knowledge Graph</a>
				</p>
				<p>
					<a href="Graph.jsp">Graph</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">


				<!---Graph Body --->
				<div class="content">
					<div class="content_resize">
						<div class="mainbar">
							<div class="article">
								
								<h2>Keyword Search Count of Users</h2>
								<br>
								<div class="clr"></div>
								<!---Start Body --->
								<div id="chart"></div>
								<%@page import="network.FusionCharts"%>

								<%
									Gson gson = new Gson();

									// Form the SQL query that returns the top 10 most populous countries
									String sql = "select count(keyword), keyword from searchhistory group by keyword;";

									// Execute the query
									DbConnection db = new DbConnection();
									Connection con = db.getConnection();
									PreparedStatement pt = con.prepareStatement(sql);
									ResultSet rs = pt.executeQuery();

									// The 'chartobj' map object holds the chart attributes and data.
									Map<String, String> chartobj = new HashMap<String, String>();

									chartobj.put("caption", "Top k Search result");
									chartobj.put("showValues", "0");
									chartobj.put("theme", "zune");

									// Push the data into the array using map object.
									ArrayList arrData = new ArrayList();
									while (rs.next()) {
										Map<String, String> lv = new HashMap<String, String>();
										lv.put("label", rs.getString("keyword"));
										lv.put("value", rs.getString("count(keyword)"));
										arrData.add(lv);
									}

									//close the connection.
									rs.close();

									//create 'dataMap' map object to make a complete FC datasource.
									Map<String, String> dataMap = new LinkedHashMap<String, String>();
									/*
									    gson.toJson() the data to retrieve the string containing the
									    JSON representation of the data in the array.
									 */
									dataMap.put("chart", gson.toJson(chartobj));
									dataMap.put("data", gson.toJson(arrData));

									FusionCharts columnChart = new FusionCharts(
									//type of chart
											"column2d",
											//unique chart ID
											"chart1",
											//width and height of the chart
											"700", "400",
											//div ID of the chart container
											"chart",
											//data format
											"json",
											//data source
											gson.toJson(dataMap));
								%>

								<!--    Step 5: Render the chart    -->
								<%=columnChart.render()%>




								<!---End Body --->
								<br>
								<br>
								<br>
								<br>
							</div>
						</div>

						<div class="clr"></div>
					</div>
				</div>



			</div>
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>
						<a href="ChartGraph.jsp"><p>Keyword Graph</p>
					</p>
				</div>
				<div class="well">
					<p>
						<a href="AdminLogin.jsp"><p>Logout</p></a>
					</p>
				</div>

			</div>
		</div>
	</div>

	
	
	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>
</body>
</html>