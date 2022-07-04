package com.customer;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteStockServlet extends HttpServlet { // HttpServlet = handling HTTP-specific services.
	private static final long serialVersionUID = 1L;
	//auto generate when create a servlet class
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String itemcode = request.getParameter("itemcode"); //retrieve form data from client side.
		boolean istrue;
		istrue = StockDBUtil.deleteStock(itemcode);
		 
		
		if(istrue == true) {//redirect stockinsert
			RequestDispatcher dispatcher = request.getRequestDispatcher("sucess.jsp"); //Dispatching the request to "sucess.jsp"
			dispatcher.forward(request, response);
		}
		else {
			//List<Stock> stkDetails = StockDBUtil.getStockDetails(itemcode);
			//request.setAttribute("stkDetails", stkDetails);
			//redirect show
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsucess.jsp");
			dispatcher.forward(request, response);
		}
	}
}


