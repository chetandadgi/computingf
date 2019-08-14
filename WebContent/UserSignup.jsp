<html>

<head>
  <!-- Mobile Specific Meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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

  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700" rel="stylesheet" />
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



body
{
	margin: 0;
	padding: 0;
	background: url(img\\bg4.jpeg);
	background-size: cover;
	font-family: sans-serif;
}
.loginBox
{
	position: absolute;
	top: 52%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 400px;
	height: 600px;
	padding: 80px 40px;
	box-sizing: border-box;
background:rgba(156, 156, 154, 0.51);
}
.avatar
{
	width: 100px;
	height: 100px;
	border-radius: 50%;
	overflow: hidden;
	position: absolute;
	top: calc(-100px/2);
	left: calc(50% - 50px);
}
h2
{
	margin: 0;
	padding: 0 0 20px;
	color: #efed40;
	text-align: center;
}
.loginBox p
{
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}
.loginBox input
{
	width: 100%;
	margin-bottom: 20px;
}
.loginBox input[type="text"],
.loginBox select[name="role"],
.loginBox input[type="password"]
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}
::placeholder
{
	color: rgba(255,255,255,.5);
}
.loginBox input[type="submit"]
{
	border: none;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
	background: #ff267e;
	cursor: pointer;
	border-radius: 20px;
}
.loginBox input[type="submit"]:hover
{
	background: #efed40;
	color: #262626;
}
.loginBox input[type="submit"]
{
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

.loginBox a:hover
{
	background: #efed40;
	color: #262626;
}

</style>


</head>

<body>


 
<div class="loginBox">

<form action="Ureg1.jsp">

<h2>User Form</h2>


<p>Name:</p>
<input type="text" name="name" >
 

<p>Password:</p>
<input type="password" name="password">

<p>Email Id:</p>
<input type="text" name="email">

<p>Mobile No:</p>
<input type="text" name="mobile">



<p>Address:</p>
<input type="text" name="address" >


<input type="submit" value="Sign Up">
 <div>
<a href="ULogin.jsp" onclick="login">Login</a>
</div>

</form>
</div>




</body></html>




