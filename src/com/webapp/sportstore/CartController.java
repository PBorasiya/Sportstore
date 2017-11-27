package com.webapp.sportstore;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/cart")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/ShoppingCart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		final String DB_URL = "jdbc:mysql://localhost/storeitems";
		
		String itemID = request.getParameter("param1");
		int quantity = Integer.parseInt(request.getParameter("qty"));
		String action = request.getParameter("action");
		
	   //  Database credentials
		final String USER = "root";
		final String PASS = "";
	   
		Connection conn = null;
		PreparedStatement stmt = null;
		String myString = null;
		
		ItemBean it = null;
		try{
		     
		      Class.forName(JDBC_DRIVER);
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);
		      System.out.println("database connected");
		      System.out.println("Creating statement...");
		      stmt = conn.prepareStatement("SELECT * from itemtable where ProductID = " + itemID );
		      ResultSet rs = stmt.executeQuery();
		      
		      while(rs.next()){
		    	  System.out.println(rs);
		      }
		      
		      while(rs.next()){
		    	  //myString = rs.getString("name")+" "+rs.getString("orderItem")+" "+rs.getString("size");
		    	  it = new ItemBean(rs.getInt("ProductID"),rs.getDouble("productPrice"),rs.getString("productName"),rs.getString("ProductDisc"),rs.getString("ImagePath"));
		    	  
		    	  
		      }
		      System.out.println("objects from database added to arraylist");
		      //System.out.println(item.size());
		     // protected void addToCart(HttpServletRequest request) {
		    	//  HttpSession session = request.getSession();
		    	  //int prodCode = request.getParameter("param1");
		    	  //String strDescription = request.getParameter("description");
		    	 // String strPrice = request.getParameter("price");
		    	 // String strQuantity = request.getParameter("quantity");
		    	   
		    	  //CartBean cartBean = null;
		    	   
		    	  //Object objCartBean = session.getAttribute("cart");
		    	 
		    	//  if(objCartBean!=null) {
		    	  // cartBean = (CartBean) objCartBean ;
		    	  //} else {
		    	   //cartBean = new CartBean();
		    	   //session.setAttribute("cart", cartBean);
		    	  //}
		    	   
		    	 // cartBean.addCartItem(strModelNo, strDescription, strPrice, strQuantity);
		    	 //}
		     // request.setAttribute("item", it);
		*/      
		
		      //conn.close();
		      
		      
		}
	/*catch(Exception e){
			e.printStackTrace();
			
		}
*/
	//	doGet(request, response);
	}


