<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  <title>Success Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    .container {
      width: 400px;
      margin: 100px auto;
      padding: 20px;
      background-color: #ffffff;
      border-radius: 5px;
      text-align: center;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
      color: #270d65;
    }

    p {
      margin-top: 10px;
      margin-bottom: 20px;
    }

    .back-link {
      display: inline-block;
      padding: 10px 20px;
      background-color: rgba(232, 44, 44, 0.984);
      color: #ffffff;
      text-decoration: none;
      border-radius: 3px;
      transition: background-color 0.3s ease;
    }

    .back-link:hover {
      background-color: rgb(147, 20, 20);
    } 
  </style>
</head>
<body>
  <div class="container">
    <h1>Success!</h1>
    <p>Your message has been sent successfully.</p>
    <a href="Homepage.jsp" class="back-link">Home</a>
  </div>


</body>
</html>