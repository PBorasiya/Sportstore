package com.webapp.sportstore.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.sportstore.ItemBean;

/**
 * Servlet implementation class Sqlservlet
 */
@WebServlet("/home")
public class Sqlservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sqlservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		ArrayList<ItemBean> item = new ArrayList<ItemBean>();
 		final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		final String DB_URL = "jdbc:mysql://localhost/storeitems";

	   //  Database credentials
		final String USER = "root";
		final String PASS = "";
		
		String qry = "SELECT * from itemtable";
	   
		Connection conn = null;
		//PreparedStatement stmt = null;
		String myString = null;
		
		
		try{
		     
		      Class.forName(JDBC_DRIVER);
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);
		      System.out.println("database connected");
		      System.out.println("Creating statement...");
		      PreparedStatement preparedStatement = conn.prepareStatement(qry);
		      ResultSet rs = preparedStatement.executeQuery();
		      //stmt = conn.prepareStatement("SELECT * from itemtable");
		     // ResultSet rs = stmt.executeQuery();
		      
		   /*   while(rs.next()){
		    	  System.out.println(rs);
		      }
		      */
		      while(rs.next()){
		    	  //myString = rs.getString("name")+" "+rs.getString("orderItem")+" "+rs.getString("size");
		    	  ItemBean it = new ItemBean(rs.getInt("ProductID"),rs.getDouble("productPrice"),rs.getString("productName"),rs.getString("ProductDisc"),rs.getString("ImagePath"));
		    	  item.add(it);
		    	  
		      }
		      System.out.println("objects from database added to arraylist");
		      System.out.println(item.size());
		      request.setAttribute("item", item);
		      request.getRequestDispatcher("/index.jsp").forward(request, response);
		      conn.close();
		      
		      
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		doGet(request, response);
	}

}
