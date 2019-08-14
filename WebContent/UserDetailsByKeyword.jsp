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
 p{
color: white;
	    font-weight: bold;
	
}
/*   body
{
	margin: 0;
	padding: 0;
	background: url(img\\publisher.jpg);
	background-size: cover;
	font-family: sans-serif;
} */
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color:#03a9f4e6;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: white;
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
     /*  .sidenav {
      
        height: auto;
        padding: 15px;
      } */
      .row.content {height:auto;} 
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
      <li class="active"><a href="UserDetailsByKeyword.jsp"><p>User Home</p></a></li>
    <!--   <li><a href="AdminLogin.jsp">Admin</a></li> -->
      <li><a href="UserDetailsByKeyword.jsp"><p>Keyword
							Search Results</p></a></li>
      <li><a href="ULogin.jsp"><p>Logout</p></a></li>
    </ul>
  </div>
</nav>
  
  
<div class="container-fluid text-center">    
  <div class="row content">
  
    <div class="col-sm-4 sidenav">
    <img src="img\\key2.jpg" class="image" height="100%" width="90%">
      <!-- <p><a href="#">Admin</a></p>
      <p><a href="UserLogin.jsp">User Login</a></p>
      <p><a href="PLogin.jsp">Publisher</a></p> -->
    </div>
    <div class="col-sm-8 text-left"> 
    
<center><h2>Enter Keyword</h2></center>
      
      
<form action="keywordSearch.jsp" method="get" enctype="multipart/form-data">
<!-- <form name="Form" action="" onsubmit="return validateForm()"> -->
<center>
<div class="form-group">
      <label for="keyword">Search Keyword:</label>
      <input type="keyword" class="form-control" id="keyword" placeholder="Enter keyword here" name="keyword">
    </div>


<!-- 

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
</script> -->

 <br>
  <!-- placeholder -->
  <span id="errorMsg" style="color:red"></span>
  <br>
 <button type="submit" class="btn btn-default">Submit</button>

</form>

  </center>    
  <!-- <center> <img src="img\\keyword.jpg" class="image" height="50%" width="60%"></center> -->
    </div>
  
  </div>
</div>
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
