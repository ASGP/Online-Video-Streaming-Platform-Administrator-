package com.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.servlet.RequestDispatcher;



/**
 * Servlet implementation class updateadmin
 */
public class updateadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String n = request.getParameter("name");
		String p = request.getParameter("phone");
		String e = request.getParameter("email");
		String u = request.getParameter("username");
		String pw = request.getParameter("password");
		
		boolean done;
		done = adminDB.updateadmin(id, n, p, e, u, pw);
		if(done==true) {
			RequestDispatcher d =request.getRequestDispatcher("success.jsp");
			d.forward(request, response);
		}else {
			RequestDispatcher d=request.getRequestDispatcher("unsuccess.jsp");
			d.forward(request, response);
		}
	}

}
