
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>

<html>

<head>
<!-- Mobile Specific Meta -->

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css1/bootstrap.min.css">
  <script src="js1/jquery.min.js"></script>
  <script src="js1/bootstrap.min.js"></script>
  
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Favicon -->
<link rel="shortcut icon" href="img/fav.png" />
<!-- Author Meta -->
<meta name="author" content="colorlib" />
<!-- Meta Description -->
<meta name="description" content="" />
<!-- Meta Keyword -->
<meta name="keywords" content="" />
<!-- meta character set -->
<meta charset="UTF-8" />
<!-- Site Title -->
<title>Knowledge Graphs</title>

<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700"
	rel="stylesheet" />
<!--
      CSS
      =============================================
    -->
<link rel="stylesheet" href="css/linearicons.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/magnific-popup.css" />
<link rel="stylesheet" href="css/owl.carousel.css" />
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/hexagons.min.css" />
<link rel="stylesheet" href="css/themify-icons.css" />
<link rel="stylesheet" href="css/main.css" />

<style>
.navbar {
	margin-bottom: 0;
	border-radius: 0;
	background-color: #03a9f4e6;
}
body {
	margin: 0;
	padding: 0;
	background: url(img\\bg1.jpg); 
	background-size: cover;
	font-family: sans-serif;
}

.loginBox {
	position: absolute;
	top: 49%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 800px;
	height: 516px;
	padding: 45px 40px;
	box-sizing: border-box;
	background: rgba(0, 0, 0, .5);
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	overflow: hidden;
	position: absolute;
	top: calc(-100px/ 2);
	left: calc(50% - 50px);
}

h2 {
	margin: 0;
	padding: 0 0 20px;
	color: #efed40;
	text-align: center;
}

.loginBox p {
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}

.loginBox input {
	width: 100%;
	margin-bottom: 20px;
}

.loginBox input[type="text"], .loginBox select[name="role"], .loginBox input[type="password"]
	{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

::placeholder {
	color: rgba(255, 255, 255, .5);
}

.loginBox input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
	background: #ff267e;
	cursor: pointer;
	border-radius: 20px;
	    text-align: center;
}

.loginBox input[type="submit"]:hover {
	background: #efed40;
	color: #262626;
}

.loginBox input[type="submit"] {
	color: #fff;
	text-decoration: none;
	border: none;
	outline: none;
	height: 40px;
	font-size: 16px;
	background: #ff267e;
	cursor: pointer;
	border-radius: 20px;
	width: 100%;
	margin-bottom: 20px;
}

.loginBox a:hover {
	background: #efed40;
	color: #262626;
}

/* 		footer {
	background-color: #1cb1f5;
	color: white;
	padding: 15px;
} */
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
				<li><a href="#"><p>Home</p></a></li>
				<li class="active"><a href="ContentUpload.jsp"><p>Upload Text</p></a></li>
				<li><a href="ImageUpload.jsp"><p>Upload Image </p></a></li>
				<li><a href="PLogin.jsp"><p>Logout</p></a></li>

			</ul>
		</div>
	</nav>


	<div class="loginBox">

		<form action="pupload.jsp">
			<%
				try {

					String user = (String) session.getAttribute("user");
					/* String user= request.getParameter("user"); */
					DbConnection db = new DbConnection();
					Connection con = db.getConnection();
					Statement st = con.createStatement();
					ResultSet rs;
					String sql = "select * from preg where name='" + user + "'";
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>


			<h2>Content Upload</h2>
	<div class="container-fluid">
 <div class="row">		

 <div class="col-sm-6">
			<p>Name:</p>
			<input type="text" value=<%=rs.getString("name")%> name="name">

			<p>Email Id:</p>
			<input type="text" value=<%=rs.getString("email")%> name="email">

			<p>Object:</p>
			<input type="text" name="entity">

			<p>Type Of Object:</p>
			<input type="text" name="entity_type">
			
</div>
<div class="col-sm-6">
			<p>Concept:</p>
			<input type="text" name="concept">

			<p>Instances:</p>
			<input type="text" name="instances">

			<p>Site Link:</p>
			<input type="text" name="site_link"> 
			
			
				

			<%
				}
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
			</div>
			
			<input type="submit" value="Upload">
			<center><div>
				<a href="PHome.jsp" onclick="login">Go Back</a>
			</div></center>
				</div>
				</div>

		</form>
		
			</div>
		
				
</body>
</html>