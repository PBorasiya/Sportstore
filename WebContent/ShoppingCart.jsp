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
      
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    </div>
 
    
    <div class="col-sm-8 text-left"> 
      <h1>Your Cart:</h1>
     	<div><table class="table" id="myTable">
     	<thead>
     		<th>Index</th>
     		<th>Name</th>
     		<th>Price</th>
     		<th>Quantity</th>
     		<th></th>
     		
     	</thead>
     	
     	<tbody>
     		
     	</tbody>
     	</table>
     
     </div>
     
    </div>
    <div class="col-sm-2 sidenav">
    <h2>Total </h2>
      <div>
        <h2><p id="total"></p></h2>
      </div>
      <div><a class="btn btn-primary btn-block"  href="selectAccount.jsp"  value="add" value="ADD" name="action">CHECKOUT</a></div>
    </div>
    
  </div>
</div>


   <script type="text/javascript">
   

   if (typeof(Storage) !== "undefined") {
       
	      
       var cart = JSON.parse( localStorage.getItem("cart"));
       console.log('cart'+cart)
       console.log('cart'+cart.length)
       
       function remove(id) {
    	   var total=0;
    	   console.log(id)
    	   cart.splice(id, 1);
    	   console.log('cart'+cart.length)
    	   localStorage.setItem("cart",JSON.stringify(cart))
    	   var table = document.getElementById("myTable");
    		 // clear table
    		 while(table.rows.length > 1) {
  					table.deleteRow(1);
			}
           for (i = 0; i < cart.length; i++) { 
        	   
        	    var row = table.insertRow();
        	    var cell1 = row.insertCell(0);
        	    var cell2 = row.insertCell(1);
        	    var cell3 = row.insertCell(2);
        	    var cell4 = row.insertCell(3);
        	    var cell5 = row.insertCell(4);
        	   
        	    cell1.innerHTML = i+1;
        	    cell2.innerHTML = cart[i].prodname;
        	    cell3.innerHTML = "$&nbsp" + cart[i].price;
        	    cell4.innerHTML = cart[i].quantity;
        	    cell5.innerHTML = "<Button class='btn btn-danger' onclick='remove("+i+")'>Remove</Button>"
        	    total = total +(  cart[i].price * cart[i].quantity)
        	}
           document.getElementById("total").innerHTML = total.toPrecision(5);
      
   		}
       
       var table = document.getElementById("myTable");
       var total=0;
       for (i = 0; i < cart.length; i++) { 
    	   
    	    var row = table.insertRow();
    	    var cell1 = row.insertCell(0);
    	    var cell2 = row.insertCell(1);
    	    var cell3 = row.insertCell(2);
    	    var cell4 = row.insertCell(3);
    	    var cell5 = row.insertCell(4);
    	   
    	    cell1.innerHTML = i+1;
    	    cell2.innerHTML = cart[i].prodname;
    	    cell3.innerHTML = "$&nbsp" + cart[i].price;
    	    cell4.innerHTML = cart[i].quantity;
    	    cell5.innerHTML = "<Button class='btn btn-danger' onclick='remove("+i+")'>Remove</Button>"
    	    
    	    total = total +(  cart[i].price * cart[i].quantity)
    		
    	}
      
       document.getElementById("total").innerHTML = "$&nbsp" +total.toPrecision(5);
   } else {
       document.getElementById("result").innerHTML = "Sorry, your browser does not support Web Storage...";
   }

   
</script>
<footer class="container-fluid text-center">
  <p>Online SportStore Copyright</p>  
</footer>

</body>
</html>
