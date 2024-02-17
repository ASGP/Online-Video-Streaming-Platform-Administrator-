package com.admin;

import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class adminDB{	
	
	public static Connection con = null;
	public static Statement stmt=null;
	public static ResultSet rs = null;
	
	public static List<admin> validate(String username,String password) {
		
		
		
		ArrayList<admin> ad = new ArrayList<>();
		
		
		//validate
		try {			
			con = connectDB.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from admin where username='"+username+"' and password ='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name =rs.getString(2);
				String phone =rs.getString(3);
				String email=rs.getString(4);
				String userA =rs.getString(5);
				String passA = rs.getString(6);
				
				admin a =new admin(id,name,phone,email,userA,passA);
				ad.add(a);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
			
		return ad;
	}		
	
	//inseert user
		
	public static boolean insertuser(String username,String phone,String email,String password) {
		boolean isSuccess= false;
		
		
		try {
			con = connectDB.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into user values(0,'"+username+"','"+phone+"','"+email+"','"+password+"',null,null,null)";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
				
			}
			else {
				isSuccess=false;
			}
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return isSuccess;
		
	}
	//update user
	public static boolean updateadmin(String id,String n,String p,String e,String us,String pw) {
			boolean isSuccess =false;
		try {
			con = connectDB.getConnection();
			stmt = con.createStatement();
			String sql = "update admin set name ='"+n+"',email='"+e+"',phone='"+p+"',password='"+pw+"'" + "where ID='"+id+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess= true;
			}else {
				isSuccess=false;
			}
		
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		return isSuccess;
		
	}
}
	
//	public static List<users> getUsers(String n){
//		ArrayList<users> u = new ArrayList<>();
//		 try {
//			 con = connectDB.getConnection();
//			 stmt = con.createStatement();
//			 
//			 String query= "select * from user";
//			 rs = stmt.executeQuery(query);
//			 
//			 while(rs.next()){
//				 int id= rs.getInt(1);
//				 String uname =rs.getString(2);
//				 String phone =rs.getString(3);
//				 String email = rs.getString(4);
//				 String name= rs.getString(6);
//				 String add =rs.getString(7);
//				 String age=rs.getString(8);
//				 
//				 users use = new users(id,uname,phone,email,name,add,age);
//				 u.add(use);
//				 
//			 	} 
//			 }catch (Exception e){
//				 e.printStackTrace();
//				 
//			 }
//			 return u;
//		 }
	//}
	

