<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 4px 2px;
    cursor: pointer;
}
.button1 {border-radius: 0%;}
    
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
<!-- <div class="jumbotron"  style="background-image: url('./football-homepage-highdef.jpg'); background-size: 100%">
  <div class="container text-center">
      <h1><b>SportStore</b></h1>      
    <p>Sports, Adventure, Life</p>
  </div>
</div>
 -->

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
        <li class="active"><a href="home">Home</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="ShoppingCart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

  
<div class="container-fluid text-center">    
  <div class="row content">
    
    <div class="col-sm-2 sidenav">
     <p style="visibility: hidden;" id="prodcode"> ${item.productCode}</p>
    </div>
    <div class="col-sm-4 text-left" id="img"> 
      <img src="${item.imagePath}" class="img-responsive" style="width:100%" alt="Image" >
    </div>
    <div class="col-sm-3 sidenav">
      <h1 id="prodname">${item.productName}</h1>
      <br><br>
      <p><h2 id="price">$ ${item.productprice}</h2></p>
      <hr>
      <h3>Discription</h3>
      <p>${item.productDisc}</p>
    </div>
    <div class="col-sm-3 sidenav">
    <br><br>
      <h3>Quantity:</h3>
      <div>
    
      <input type="number"  value="1" id="qty" style="width:100%;">
      <br/>
      <Button onclick="myFunction()" class="btn btn-primary btn-block">ADD TO CART</Button>
      
      <br/>
      <br/>
       <a  href='ShoppingCart.jsp' id='checkout' class="btn btn-warning btn-block">Checkout</a>
       
       <a href='home' id='cntshopping' class="btn btn-success btn-block">Continue Shopping</a>
  
      </div><br>
      <div></div>
    </div>
  </div>     
</div>
<script type="text/javascript">

function myFunction(){
    var price =  document.getElementById("price").innerHTML;
    var qty = document.getElementById("qty").value;
    var prodname = document.getElementById("prodname").innerHTML;
    var prodcode= document.getElementById("prodcode").innerHTML;
    
    price= price.substring(2);
	console.log("qty"+qty)
	console.log("price"+price)
    
    obj ={'quantity':qty,'price':price,'prodname':prodname,'prodcode':prodcode}

    if (typeof(Storage) !== "undefined") {
        // Store
        var arr = [];
        if( localStorage.getItem("cart")!==null){
     		   arr = JSON.parse(localStorage.getItem("cart"));
        }
        arr.push(obj)
        localStorage.setItem("cart",JSON.stringify( arr ));
        alert('Item successfully added to cart. ')
        // Retrieve
        //document.getElementById("result").innerHTML = localStorage.getItem("cart");
    } else {
        document.getElementById("result").innerHTML = "Sorry, your browser does not support Web Storage...";
    }
	
	

}

</script>
<footer class="container-fluid text-center">
  <p>Online SportStore Copyright</p>  
</footer>

</body>
</html>

