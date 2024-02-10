<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Profile</title>
  <style>
    html, body {
      height: 100%;
      margin: 0;
      padding: 0;
    }

    body {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
    }

    h1 {
      color: #333;
    }

    table {
      width: 50%;
      height: 300px; /* Set the height of the table */
      margin-top: 40px;
      border-collapse: collapse;
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #270d65; /* Dark blue */
      color: #fff;
    }

    td {
      background-color: white; /* Dark blue */
      color: black;
    }

    .button-container {
      margin-top: 20px;
      display: flex;
      justify-content: center;
    }

    .button-container button {
      margin: 0 10px;
      padding: 12px 24px;
      font-size: 16px;
      background-color: #e53637; /* Maroon */
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .button-container button:hover {
      background-color: #b30000; /* Darker maroon */
    }
  </style>
</head>
<body>
  <h1>Admin Profile</h1>

  <table>											<!-- set admin details variable in db to display in page  -->
  <c:forEach var = "ad" items = "${adDetails}">		
  <c:set var="id" value="${ad.id}"/>
      <c:set var="name" value="${ad.name}"/>
      <c:set var="phone" value="${ad.phone}"/>
      <c:set var="email" value="${ad.email}"/>
      <c:set var="uname" value="${ad.username}"/>
      <c:set var="pass" value="${ad.password}"/>
    <tr>
      <th>Id</th>
      <td id="name">${ad.id}</td>
    </tr>
    <tr>
      <th>Name</th>
      <td id="email">${ad.name}</td>
    </tr>
    <tr>
      <th>Phone</th>
      <td id="phone">${ad.phone}</td>
    </tr>
    <tr>
      <th>Email</th>
      <td id="address">${ad.email}</td>
    </tr>
     <tr>
      <th>UserName</th>
      <td id="address">${ad.username}</td>
    </tr>
    <tr>
      <th>Password</th>
      <td id="address">${ad.password}</td>
    </tr>
    </c:forEach>
  </table>
	 <c:url value="updateAdmin.jsp" var="adupdate">			<!-- assign to parameters -->
            <c:param name="id" value="${id}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="phone" value="${phone}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="username" value="${uname}"/>
            <c:param name="password" value="${pass}"/>
            </c:url>
  <div class="button-container">
    <button onclick="window.location.href = '${adupdate}'">Edit Details</button>
    <button onclick="window.location.href = 'Homepage.jsp'">Admin Dashboard</button>
  </div>
</body>
</html>
