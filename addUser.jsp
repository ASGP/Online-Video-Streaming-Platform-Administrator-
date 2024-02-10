<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Add New User</title>
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
      input[type="tel"],
      input[type="email"],
      textarea {
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
        background-color: maroon;
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
      .success {
        background-color: #4CAF50;
        color: white;
        text-align: center;
        padding: 10px;
        margin-top: 20px;
        display: none;
      }
      .success a {
        color: white;
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <form id="user-form">
        <h1>Add New User</h1>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="4" required></textarea>
        <input type="submit" value="Add User">
      </form>
      <div class="success" id="success-message">
        User added successfully. Click <a href="#">here</a> to go back to Home.
      </div>
    </div>
    <script>
      const form = document.getElementById('user-form');
      const successMessage = document.getElementById('success-message');
      form.addEventListener('submit', (event) => {
        event.preventDefault();
        // Code to submit the form to a server goes here
        // Assuming the submission is successful, display the success message
        successMessage.style.display = 'block';
      });
    </script>
  </body>
</html>
