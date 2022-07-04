package com.customer;

import jakarta.servlet.RequestDispatcher; 
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class StockInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Itemcode = request.getParameter("itemCode");
		String Name = request.getParameter("name");
		String Quantity = request.getParameter("quantity");
		String Description = request.getParameter("description");
		String Price = request.getParameter("price");
		
		boolean isTrue;
		
		isTrue = StockDBUtil.insertstock(Itemcode, Name, Quantity, Description, Price);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("sucess.jsp"); //redirect "sucess.jsp" 
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsucess.jsp"); //redirect "unsucess.jsp" 
			dis2.forward(request, response);
		}
	}
}
