package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StockDBUtil {
	
	
	//instance variables
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//create static method to insert details
	public static boolean insertstock(String itemcode, String name,  String quantity, String description, String  price) {
	
	try {
		con = DBConnect.getConnection();//calling DBconnect class
		stmt = con.createStatement();//  used to sending a SQL query to the database 
		String sql = "insert into stockitems values('"+itemcode+"','"+name+"','"+quantity+"','"+description+"','"+price+"')"  ; 
		int rs = stmt.executeUpdate(sql);//execute SQL DDL statement.
		if(rs >0) {
			isSuccess = true;
		}
		else {
			isSuccess =false;
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return isSuccess;
  }
////////////////////////////////////////////UPDATE//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////UPDATE//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////UPDATE//////////////////////////////////////////////////////////////////////////////////
   public static boolean updatestock(String itemcode, String name,  String quantity,String  price, String description) {
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update stockitems set name='"+name+"',quantity='"+quantity+"',description='"+description+"',price='"+price+"'" + "where itemcode='"+itemcode+"'"; 	   
		int rs = stmt.executeUpdate(sql);
		   
		if(rs >0){
			isSuccess  = true;
		  }
		else {
			isSuccess = false;
		  }
	   }
	catch(Exception e){
		e.printStackTrace();
	   }
	return isSuccess;
   }
   ////////////////////////////////////////////VALIDATE//////////////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////VALIDATE//////////////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////VALIDATE//////////////////////////////////////////////////////////////////////////////////
   public static List<Stock> validate (String itemcode){ //List store multiple items in a single variable.
		ArrayList<Stock> stk = new ArrayList<>();
		
		//db connection
		String url = "jdbc:mysql://localhost:3306/stock";
		String user = "root" ;
		String pswd = "abc12345@";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pswd);
			Statement stmt = con.createStatement();
			String sql = "select * from stockitems where itemcode = '"+itemcode+"'"; 
			ResultSet rs = stmt.executeQuery(sql);
		
			if( rs.next() ) {
				String itemcode1 = rs.getString(1) ;
				String name = rs.getString(2) ;
				String quantity = rs.getString(3) ;
				String description = rs.getString(4) ;
				String price = rs.getString(5) ;
				
				Stock s = new Stock( itemcode1,name,quantity,description,price) ;
				stk.add(s);	// add data to stk
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return stk;
	}
   ////////////////////////////////////////////DELETE//////////////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////DELETE//////////////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////DELETE//////////////////////////////////////////////////////////////////////////////////
   public static boolean deleteStock(String itemcode) {
	   //int conv  =Integer.parseInt(itemconde);
	  
	  
	   try {
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   String sql = "delete from stockitems where itemcode = '"+itemcode+"'";
		   int x = stmt.executeUpdate(sql);
		   if(x>0) {
			    isSuccess = true;
		   }
		   else {
			   isSuccess = false;
		   }
	   }
	   catch(Exception e){
		   e.printStackTrace();
	   }
	   return isSuccess;
   }
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public static List<Stock> getStockDetails(String itemcode) {
		ArrayList<Stock> stk = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = " select * from stockitems where itemcode='"+itemcode+"' ";
			rs = stmt.executeQuery(sql);
		
			while(rs.next()) {
				String itemcode1 = rs.getString(1) ;
				String name = rs.getString(2) ;
				String quantity = rs.getString(3) ;
				String description = rs.getString(4) ;
				String price = rs.getString(5) ;
				
				Stock s = new Stock(itemcode1, name, quantity, description, price);
				stk.add(s);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return stk;
	}
}














