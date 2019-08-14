<!DOCTYPE html>
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
	height: 125%;
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
				<li class="active"><a href="AHome.jsp"><p>Home</p></a></li>
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
				<center>
					<h2>How It Works</h2>
				</center>

				<img src="img\userpro.gif" class="image" height="500px"
					width="850px">


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
	<br>
	

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>