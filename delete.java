package com.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class delete
 */
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   Connection con;
   Statement stat;
   PreparedStatement pst;
   ResultSet rs;
   int row;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get parameter d from Homepage.jsp
		String sid=request.getParameter("d");
		Integer st=Integer.parseInt(sid);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/video","root","root");
			Statement stat=con.createStatement();
			stat.executeUpdate("delete from user where ID='"+st+"'");
			response.sendRedirect("Homepage.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
