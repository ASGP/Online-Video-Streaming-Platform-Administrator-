package com.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.RequestDispatcher;


@WebServlet("/adminlogin")
//servlet

public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("name");
		String password = request.getParameter("pass");
		
		try {
			
		List<admin> adDetails = adminDB.validate(username,password);
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if (adDetails != null && !adDetails.isEmpty()) {
            // Valid login
            request.setAttribute("adDetails", adDetails);
            request.getRequestDispatcher("admindetails.jsp").forward(request, response);
        } else {
            // Invalid login
            out.println("<html><body>");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Invalid username or password');");
            out.println("window.location.href='adminLog.jsp';");
            out.println("</script>");
            out.println("</body></html>");
            //validate by getting parameters 
		request.setAttribute("adDetails", adDetails);
		}
		}
		
		
		catch(Exception e){
			e.printStackTrace();
		}
		
//		RequestDispatcher dis = request.getRequestDispatcher("admindetails.jsp");			//goto admin details page
//		dis.forward(request, response);
		
	}
}