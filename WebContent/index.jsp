<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">
<head>
  <title>SportStore</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;  
      color: white;
      font-family: Georgia, serif;
      font-weight: 100%;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #555;
      padding: 25px;
    }
  </style>
</head>
<body>

<div class="jumbotron"  style="background-image: url('./football-homepage-highdef.jpg'); background-size: 100%">
  <div class="container text-center">
      <h1><b>SportStore</b></h1>      
    <p>Sports, Adventure, Life</p>
  </div>
</div>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <!-- <a class="navbar-brand" href="#">Logo</a> -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="ShoppingCart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- <form action="Sqlservlet" method="get">
<input type="submit" value="button">
</form>
 -->
<div class="container">
<c:forEach items="${item}" var="item2">

    <div class="col-sm-3">
      <div class="panel">
        <div class="panel-heading">${item2.productName}<br>
        </div> 
        <div class="panel-body"><a href="product?param=${item2.productCode}"><img src="${item2.imagePath}" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer">$ ${item2.productprice}<!--  <form><input type="text" value="1" id="qty" style="width:50px;"></form> --></div>
        <!-- <div class="panel-footer"><a class="btn btn-primary btn-block"  href="#">ADD TO CART</a></div> -->
      </div>
    </div>
 
    </c:forEach>
</div>
<footer class="container-fluid text-center">
  <p>Online SportStore Copyright</p>  
</footer>

</body>
</html>
