<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin Details</title>
 
    <style>
      body {
        background-color: #f2f2f2;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
      }
      .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
      form {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        padding: 20px;
        width: 400px;
      }
      form h1 {
        font-size: 24px;
        margin: 0;
        padding: 0 0 10px 0;
        text-align: center;
      }
      input[type="text"],
      input[type="password"],
      input[type="email"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: none;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
        font-size: 16px;
        font-family: Arial, sans-serif;
      }
      input[type="submit"] {
        background-color: #e53637;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        font-family: Arial, sans-serif;
      }
      input[type="submit"]:hover {
        background-color: #b30000;
      }
    </style>
  </head>
  <body>
  
  <%
  String i =request.getParameter("id");
  String n =request.getParameter("name");
  String p =request.getParameter("phone");
  String e =request.getParameter("email");
  String user =request.getParameter("username");
  String pw =request.getParameter("password");
  
  
  %>
    <div class="container">
      <form action="update" method="post">
        <h1>Update Admin</h1>
         <label for="name">ID:</label>
        <input type="text" id="name" name="id" value="<%=i%>" readonly>		<!-- give value in db to form  -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%=n%>">
        <label for="email">Phone Number:</label>
        <input type="text"  name="phone" value="<%=p%>">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%=e%>" required>
        <label for="name">UserName:</label>
        <input type="text" id="name" name="username" value="<%=user%>" readonly>
        <label for="password">Password:</label>
        <input type="text" id="password" name="password" value="<%=pw%>" required>
        <input type="submit" value="Update admin" name="update">
      </form>
    </div>
  </body>
</html>

