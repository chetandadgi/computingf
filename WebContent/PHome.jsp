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
	height: 110%;
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

 p{
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
						Similarity of Concepts Knowledge Graphs</p></a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#"><p>Home</p></a></li>
				<li><a href="ContentUpload.jsp"><p>Upload Text</p></a></li>
				<li><a href="ImageUpload.jsp"><p>Upload Image View</p></a></li>
				<li><a href="PLogin.jsp"><p>Logout</p></a></li>

			</ul>
		</div>
	</nav>


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="#">Admin</a>
				</p>
				<p>
					<a href="#">User Login</a>
				</p>
				<p>
					<a href="#">Publisher</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">


				<img src="img\upolad2.jpg" class="image" height="520px" width="1105px">


			</div>
			<!--   <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div> -->
		</div>
	</div>
	<br>
	
<br>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>