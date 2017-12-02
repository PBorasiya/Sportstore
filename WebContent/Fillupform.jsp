<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
      padding: 15px;
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
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav"><input type="hidden" id="cart"  name="cart">
    </div>
    <div class="col-sm-8 text-left"> 
       
      <form action="user" method="POST">
			<h2>Address Details</h2> 
    			<div class="col-xs-6">
      				<label for="fname">First Name:</label>
      				<input type="text" class="form-control" id="fname" placeholder="First Name" name="fname" required="required">	
    			</div>
    			<div class="col-xs-6">
      				<label for="lname">Last Name:</label>
      				<input type="text" class="form-control" id="lname" placeholder="Last Name" name="lname" required="required">	
    			</div>
    			<div class="col-xs-6">
      				<label for="saddress1">Street Address Line 1:</label>
      				<input type="text" class="form-control" id="saddress1" placeholder="Address Line 1" name="saddress1" required="required">	
    			</div>
    			<div class="col-xs-6">
      				<label for="saddress2">Street Address Line 2:</label>
      				<input type="text" class="form-control" id="saddress2" placeholder="Address Line 2" name="saddress2" required="required">	
    			</div>
    			<div class="col-xs-3">
      				<label for="city">City:</label>
      				<input type="text" class="form-control" id="city" placeholder="city" name="city" required="required">	
    			</div>
    			<div class="col-xs-6">
      				<label for="state">State:</label>
      				<select class="form-control" id="state" name="state" placeholder="state" required="required">
							<option value="">N/A</option>
							<option value="AK">Alaska</option>
							<option value="AL">Alabama</option>
							<option value="AR">Arkansas</option>
							<option value="AZ">Arizona</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DC">District of Columbia</option>
							<option value="DE">Delaware</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="IA">Iowa</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="MA">Massachusetts</option>
							<option value="MD">Maryland</option>
							<option value="ME">Maine</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MO">Missouri</option>
							<option value="MS">Mississippi</option>
							<option value="MT">Montana</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="NE">Nebraska</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NV">Nevada</option>
							<option value="NY">New York</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="PR">Puerto Rico</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VA">Virginia</option>
							<option value="VT">Vermont</option>
							<option value="WA">Washington</option>
							<option value="WI">Wisconsin</option>
							<option value="WV">West Virginia</option>
							<option value="WY">Wyoming</option>
						</select>
    			</div>
    			<div class="col-xs-3">
      				<label for="zipcode">Zipcode:</label>
      				<input type="text" class="form-control" id="zipcode" placeholder="zipcode" name="zipcode" required="required">	
    			</div>
    			<div class="col-xs-6">
      				<label for="phone">Phone(e.g. 333-345-6789):</label>
      				<input type="text" class="form-control" id="phone" placeholder="phone" name="phone" required="required">	
    			</div>
    			<div class="col-xs-6">
      				<label for="email">Email Address:</label>
      				<input type="email" class="form-control" id="email" placeholder="email" name="email" required="required">	
    			</div>
    		<div>
    		&nbsp
    		</div>
    		
    		<h2>Payment Details</h2>
    		<div class="col-xs-6">
      				<label for="cardnum">16-Digit Card Number:</label>
      				<input type="text" class="form-control" id="cardnum" placeholder="xxxx-xxxx-xxxx-xxxx" name="cardnum" required="required" maxlength="16">	
    		</div>
    		
    		
    		<div class="col-xs-3">
      				<label for="validtill">Valid till</label>
      				<input class="form-control" type="month" id="validtill" placeholder="2017/11" name="validtill" required="required"/ >
     		</div>
     		
     		<div class="col-xs-3">
      				<label for="cvv">CVV</label>
      				<input class="form-control" type="text" id="cvv" placeholder="***" name="cvv" required="required"/  maxlength="3">
     		</div>
     			
    		<div>
    		&nbsp
    		</div>	
    		
    		<button type="submit" class="btn btn-warning btn-block" onclick="clearorder()">Check-out</button>	
    		
    		<div>
    		&nbsp
    		</div>    	
	    	
    	 </form>
   		</div><!-- main div -->
    			
    			
	 </div>
  </div>
 <script type="text/javascript">
   	function  clearorder() {
  		localStorage.clear();
		
	}
  </script>

<script type="text/javascript">
if (typeof(Storage) !== "undefined") {
    
    
    var cart = JSON.parse( localStorage.getItem("cart"));
    document.getElementById("cart").value = cart;
    
}

/* var cartobj = cart;
$.post("/UserAdderServlet.java", JSON.stringify(cartobj), function(response) {
    // handle response from your servlet.
}); */
    
    
</script>

<footer class="container-fluid text-center">
  <p>Online SportStore Copyright</p>  
</footer>
</body>
</html>
