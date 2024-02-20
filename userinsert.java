package com.admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Servlet implementation class userinsert
 */
public class userinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		boolean isTrue;
																	//take as boolean value and insert user from that value
		isTrue=adminDB.insertuser(name, phone, email, password);
		
		if(isTrue == true) {
			
			;
			RequestDispatcher dis= request.getRequestDispatcher("success.jsp");
			dis.forward(request,response);
			
		}else {
			RequestDispatcher ndis= request.getRequestDispatcher("notsuccess.jsp");
			ndis.forward(request, response);
		}
	}

}
