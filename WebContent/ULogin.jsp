<html>

<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css" />
  <link rel="stylesheet" href="css/main.css" />

<style>
input[type=checkbox], input[type=radio] {
    margin: -15px 0 0;
    margin-top: 1px\9;
    line-height: normal;
}
.navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color:#03a9f4e6;
    }


body
{
	margin: 0;
	padding: 0;
	background: url(img\\users.jpg);
	background-size: cover;
	font-family: sans-serif;
}
.loginBox
{
	position: absolute;
	top: 55%;
	left: 50%;
	
	transform: translate(-50%,-50%);
	width: 350px;
	height: 460px;
	padding: 80px 40px;
	box-sizing: border-box;
	background:rgba(0,0,0,.5);
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
      <a class="navbar-brand" href="#"><p>Computing Semantic Similarity of Concepts  Knowledge Graphs</p></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.jsp"><p>Home<p></a></li>
      <li ><a href="AdminLogin.jsp"><p>Admin</p></a></li>
      <li class="active"><a href="ULogin.jsp"><p>User Login</p></a></li>
      <li><a href="PLogin.jsp"><p>Publisher</p></a></li>
    </ul>
  </div>
</nav>
 
<div class="loginBox">

<img src="img\\avatar5.png" class="avatar" height="10px" width="10px">
<h2>User Login</h2>

<form action="ULoginCheck.jsp" method="get" enctype="multipart/form-data">
<!-- <form name="Form" action="" onsubmit="return validateForm()"> -->

<p>Name:</p>
<input type="text" name="name" placeholder="Enter Username" required>
<p>Password:</p>
<input type="password" name="password" id="myInput" placeholder="Enter Password" required>

<p>Show Password:</p><input type="checkbox" onclick="myFunction()">

<script>
function validateForm() {
    var x = document.forms["Form"]["password"].value;
	alert("Validate " +x);
    if (x == null || x == "") {
        // fill out the placeholder with a message
		alert("Validate " +x);
        document.getElementById("errorMsg").innerHTML = "*Name must be filled out";
        return false;
		
    }
}
</script>
<script>
function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>

 <br>
  <!-- placeholder -->
  <span id="errorMsg" style="color:red"></span>
  <br>
 <input type="submit" value="Login">
 
<!--  <input type="submit"  value="Sign Up"> -->
 

 <div>
<a href="UserSignup.jsp" onclick="Signup"><p>New User? <u>Sign Up</u></p></a>
</div>

</form>
</div>
</body></html>