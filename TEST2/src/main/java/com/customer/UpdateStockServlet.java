package com.customer;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateStockServlet")
public class UpdateStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	//call to dbutil function
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String itemcode = request.getParameter("itemcode");
		String name = request.getParameter("name");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = StockDBUtil.updatestock(itemcode, name, quantity, price, description);
		
		if(isTrue == true) {
			
		//	List<Stock> stkDetails = StockDBUtil.getStockDetails(itemcode);
		//	request.setAttribute("stkDetails", stkDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("sucess.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsucess.jsp");
			dis.forward(request,response);
		}
	}
}
