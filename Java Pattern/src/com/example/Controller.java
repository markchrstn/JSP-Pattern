package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		String pattern = request.getParameter("pattern");
		String btnClick = request.getParameter("action");
		String number = request.getParameter("number");
		String SymbolPattern = request.getParameter("pat");
		response.setContentType("text/html");
		 
		ControllerSelect cs = new ControllerSelect();
		Object[][] result = null; 
		
		int numberRes = Integer.valueOf(number);
		
		 if(btnClick.equals("Submit")){
			 
			 switch(pattern){
			 case "diamond" :  
				 result = cs.getDiamond(numberRes, SymbolPattern);
				 break;
			 case "square" :  
				 result = cs.getSquare(numberRes, SymbolPattern);
				 break;
			 case "cross" :
				 result = cs.getCross(numberRes, SymbolPattern);
				 break;
			 case "hourglass" :
				 result = cs.getHourGlass(numberRes, SymbolPattern);
			 }
			 request.setAttribute("result", result);
			 RequestDispatcher rd = request.getRequestDispatcher("AllPattern.jsp");
			 rd.forward(request, response);
			 

		 }	
		 
	}
}





