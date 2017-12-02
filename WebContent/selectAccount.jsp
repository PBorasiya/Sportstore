<!DOCTYPE html>
<html lang="en">
<head>
  <title>SportStore</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
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
      background-color: #555;
      color: white;
      padding: 25px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home">Home</a></li>
        <li><a href="ShoppingCart.jsp">Cart</a></li>
        
      </ul>
      <!-- <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span></a></li>
      </ul> -->
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
<div class="col-sm-2 sidenav">
    </div>
    <div class="col-sm-4 text-left"> 
    <br/><br/>
    <div class="panel panel-default">
      <div class="panel-heading"><h4>Customer Sign-in</h4></div>
      	<div class="panel-body">
    		<form action="/action_page.php">
    			<div class="form-group">
      				<label for="email">Email:</label>
      				<input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required="required">
    			</div>
    			<div class="form-group">
      				<label for="pwd">Password:</label>
      				<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required="required">
   				 </div>
    		    <button type="submit" class="btn btn-warning btn-block">Sign-in</button>
  			</form>
  		</div>
  	</div>
  </div>
    <div class="col-sm-4 text-left"> 
    <br/><br/>
    <div class="panel panel-default">
      <div class="panel-heading"><h4>Guest Checkout</h4></div>
      	<div class="panel-body">
      	<br/>
    		<p>You can create your account after the payment.</p><br/><br/>	
			<p>To begin sign-up, simply click below.</p><br/>
			<p></p>
    		
    		<a href="Fillupform.jsp" type="submit" class="btn btn-warning btn-block" >Guest Checkout</a>
  			</form>
  		</div>
  	</div>
  </div>
    <div class="col-sm-2 sidenav">
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Online SportStore Copyright</p>  
</footer>

</body>
</html>
