package com.webapp.sportstore.dao;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.sportstore.ItemBean;

/**
 * Servlet implementation class UserAdderServlet
 */
@WebServlet("/user")
public class UserAdderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAdderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		final String DB_URL = "jdbc:mysql://localhost/storeitems";
		
		//String  = request.getParameter("param");
		
		String firstName=request.getParameter("fname");
		String lastName= request.getParameter("lname");
		String addLine1= request.getParameter("saddress1");
		String addline2= request.getParameter("saddress2");
		String city= request.getParameter("city");
		String state= request.getParameter("state");
		String zipcode= request.getParameter("zipcode");
		String phoneNo= request.getParameter("phone");
		String email= request.getParameter("email");
		String cardNo= request.getParameter("cardnum");
		//Date date= request.getParameter("validtill");
		String cvv= request.getParameter("cvv");
		String date = request.getParameter("validtill");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		
		java.util.Date dateStr=null;
		try {
			dateStr = sdf.parse(date);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//surround below line with try catch block as below code throws checked exception
		java.sql.Date validtill = new java.sql.Date(dateStr.getTime());
		
		

		/*System.out.println(firstName +" "+  lastName +" "+ addLine1 +" "+ addline2 +" "+ city +" "+ state +" "+ zipcode +" "+ phoneNo +" "+ email);
		System.out.println(cardNo +" "+ cvv +" ");
		*/
		System.out.println((sdf.format(validtill)));
		
		
		
	   //  Database credentials
		final String USER = "root";
		final String PASS = "";
		//String qry = "SELECT * from itemtable where ProductID = " + itemID;
		Connection conn = null;
		
		String myString = null;
		
		
		try{
		     
		      Class.forName(JDBC_DRIVER);
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);
		      System.out.println("database connected");
		      System.out.println("Creating statement...");
		      //(fname, lname , saddress1 , saddress2 , city, state, zipcode, phone, email, cardnum , cvv , validtill)
		      String qry = "INSERT INTO usertable1(fname, lname , saddress1 , saddress2 , city, state, zipcode, phone, email, cardnum , cvv , validtilldate)"
		    		  + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		      PreparedStatement ps = conn.prepareStatement(qry);
		      ps.setString(1,firstName);
		      ps.setString(2,lastName);
		      ps.setString(3,addLine1);
		      ps.setString(4,addline2);
		      ps.setString(5,city);
		      ps.setString(6,state);
		      ps.setString(7,zipcode);
		      ps.setString(8,phoneNo);
		      ps.setString(9,email);
		      ps.setString(10,cardNo);
		      ps.setString(11,cvv);
		      ps.setString(12,(sdf.format(validtill)));
		      ps.executeUpdate();
		      //stmt = conn.prepareStatement("SELECT * from itemtable where ProductID = " + itemID );
		      //ResultSet rs = stmt.executeQuery();
		      
		     /* while(rs.next()){
		    	  System.out.println(rs);
		      }
		      
		      while(rs.next()){
		    	  //myString = rs.getString("name")+" "+rs.getString("orderItem")+" "+rs.getString("size");
		    	  it = new ItemBean(rs.getInt("ProductID"),rs.getDouble("productPrice"),rs.getString("productName"),rs.getString("ProductDisc"),rs.getString("ImagePath"));
		    	  
		    	  
		      }*/
		      System.out.println("objects from form added to usertable");
		      //System.out.println(item.size());
		    //  request.setAttribute("item", it);
		      
		      /*ArrayList<ItemBean> list = new ArrayList<ItemBean>();
 		      Object obj=request.getParameter("cart");
 		      
		      System.out.println(request.getParameter("cart"));
		      */
		     
		     /* String jsonString = new String(); // this is your data sent from client
		      try {
		        String line = "";
		        BufferedReader reader = request.getReader();
		        System.out.println(reader);
		        while ((line = reader.readLine()) != null)
		          jsonString += line;
		      } catch (Exception e) { 
		        e.printStackTrace();
		      }
		      
		      System.out.println(jsonString);
		      */
		      request.getRequestDispatcher("/ThankYou.jsp").forward(request, response);
		      conn.close();
		      
		      
		}catch(Exception e){
			e.printStackTrace();
			
		}
	
		
		
	//doGet(request, response);
		
	}

}
