 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>Detector</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
 <style>
 
  .bg-dark {
    background-color: #ff9800!important;
}
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  .nav-pills .nav-link.active, .nav-pills .show>.nav-link {
    color: #fff;
    background-color: #FF9800;
} 
a {
    color: #FF9800;
    text-decoration: none;
    background-color: transparent;
}
/* .jumbotron {
    padding: 2rem 1rem;
    margin-bottom: 2rem;
    background-color: #ffc10700;
    border-radius: .3rem;
} */


.fakeimg {
    height: 200px;
    background: white;
}

.footer {
   position: center;
   left: 0;
   bottom: 0;
   height: fit-content;
   width: 100%;
   background-color: #ff9800!important;
   color: white;
   text-align: center;
}

  </style>
</head>
<body>
<div class="jumbotron jumbotron-fluid" style="text-align:center; background-image: url(Images/tweet2.png); background-size: cover; height: 30%;">
  <div class="container">
    <h1>A Comprehensive Study on Social Network Mental Disorders Detection via Online Social Media Mining</h1>      
   
  </div>
</div>



<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="Home.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Registration.jsp">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="UserLogin.jsp">User Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AdminLogin.jsp">Admin Login</a>
      </li>    
    </ul>
  </div>  
</nav>



<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-2" >
     
      <h3>Sidebar Menu</h3>
     
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Registration.jsp">Register</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="UserLogin.jsp">User Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AdminLogin.jsp">Admin Login</a>
        </li>
      </ul>
     <!--  <hr class="d-sm-none"> -->
    </div>
 <div class="col-sm-10">
      <h2>How It Works</h2>
      <h5>Mental Disorder Detection, Feb 5, 2019</h5>
      

      <div class="fakeimg">
      
      <img src="Images\SA.jpg" class="image" height="200px" width="700px">
      
      </div>
      
      <br>
      
      <!-- <div class="fakeimg">
      
      <img src="Images\Twitter2.jpg" class="image" height="200px" width="700px">
      
      </div> -->
       <br>
      </div>
  </div>
</div>

<br>
<br>

<!--  <div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer Text</p>
</div>  -->

<div class="footer">
 
  <p>Copyright &copy; 2019 Collage Name,Kalaburagi</p>
  <p>Designed & Developed by Department of Computer Science & Engineering</p>
</div>
  </body>
  </html>