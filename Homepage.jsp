<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*" %>
    <%@page import ="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<style>
        html,
        body {
            height: 100%;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: #13033a;
            color: white;
            padding: 10px;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        .trend {
            width: 150px;
            height: 50px;
            margin-right: 30px;
            margin-left: 50px;
        }
        .trend1 {
            width: 17px;
            height: 15px;
            margin-right: 20px;
            
        }
        .trend2{
            width: 17px;
            height: 15px;
            margin-right: 80px;
        }

        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
        }

        .navbar ul li {
            margin-right: 10px;
        }

        .navbar ul li:first-child {
            margin-right: 20px; /* Added spacing */
        }

        .navbar ul li:last-child {
            margin-left: auto; /* Aligned to the left */
        }

        .navbar ul li a {
            color: #b7b7b7;
            text-decoration: none;
            transition: color 0.3s ease; /* Added transition */
        }

        .navbar ul li a:hover {
            color: white; /* Changed color to blue on hover */
        }

        .container1 {
            max-width: 800px;
            padding: 40px;
            background-color: #f7f7f7;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-top: 80px;
        }

        .table-container {
            margin-top: 25px;
            display: none;
        }

        .table-container.active {
            display: block;
        }

        .button-container {
            margin-bottom: 40px;
            text-align: center;
        }

        .button-container h2 {
            margin-bottom: 50px;
            font-size: 24px;
        }

        .button-container button {
            margin-right: 10px;
            padding: 12px 20px;
            font-size: 18px;
            background-color: #cb1616;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button-container button:hover {
            background-color: #b30000;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            
        }

        th,
        td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #270d65;
            color: #ffffff;
            font-size: 18px;
        }

        .action-button {
            background-color:#e53637;
            color: #ffffff;
            border: none;
            padding: 8px 14px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .action-button:hover {
            background-color: maroon;
        }
    </style>
    <script>
        function toggleTable(tableId) {
            // Hide all table containers
            var tableContainers = document.getElementsByClassName('table-container');
            for (var i = 0; i < tableContainers.length; i++) {
                tableContainers[i].classList.remove('active');
            }

            // Show the selected table container
            var selectedTableContainer = document.getElementById(tableId);
            selectedTableContainer.classList.add('active');
        }
    </script>
</head>
<body>
    <div class="navbar">
        <img src="trend.png" class="trend">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="userinsert.jsp">Add User</a></li>
        </ul>
        <div>
        <a href="adminLog.jsp">
        <img src="newuser.png" class="trend1" >
        </a>
        <a href="index.jsp">
        <img src="logout.png" class="trend2" >
        
         </a>
        </div>
    </div>

    <div class="container1">
        <div class="button-container">
            <h2>VIEW</h2>
            <button onclick="toggleTable('table1')">Users</button>
            <button onclick="toggleTable('table2')">Videos</button>
        </div>

        <div id="table1" class="table-container active">
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Username</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Age</th>
                        <th></th>
                    </tr>
                </thead>						<!-- getting db connection  -->
                <tbody>
                <%
                Connection con =null;			
                Statement stm = null;
                ResultSet rs=null;
                
                try{
                	Class.forName("com.mysql.jdbc.Driver");
                	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/video","root","root");
                	stm =con.createStatement();
                	rs = stm.executeQuery("select * from user");
                	while(rs.next()){
              %>
                
            
                    <tr>
                        <td><%out.println(rs.getInt("ID")); %></td>						<!-- embeded java  -->
                        <td><%out.println(rs.getString("username")); %></td>
                        <td><%out.println(rs.getString("phone")); %></td>
                        <td><%out.println(rs.getString("email")); %></td>
                        <td><%out.println(rs.getString("name")); %></td>
                        <td><%out.println(rs.getString("address")); %></td>
                        <td><%out.println(rs.getString("age")); %></td>
                        <td><form action='delete?d=<%=rs.getInt("ID")%>' method="post"><input type ="submit" name="delete" id="<%= rs.getString("ID")%>"class="action-button" Value="Ban"></form></td>
                    </tr>
                    <%    }
                }catch(Exception e){
                	e.printStackTrace();
                }
                	%>
                   
                </tbody>
            </table>
        </div>

        <div id="table2" class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Video ID</th>
                        <th>Video Title</th>
                        <th>Video Type</th>
                        <th>Video Description</th>
                        <th>User ID</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>								<!-- getting db connection  -->
                 <%
                Connection conn =null;
                Statement stmt = null;
                ResultSet rss=null;
                
                try{
                	Class.forName("com.mysql.jdbc.Driver");
                	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/video","root","root");
                	stmt =conn.createStatement();
                	rss = stmt.executeQuery("select * from video");
                	while(rss.next()){
              %>
                    <tr>
                        <td><%out.println(rss.getInt("id")); %></td>		<!-- embed java in html  -->
                        <td><%out.println(rss.getString("title")); %></td>
                        <td><%out.println(rss.getString("type")); %></td>
                        <td><%out.println(rss.getString("des")); %></td>
                        <td><%out.println(rss.getInt("userID")); %></td>
                        <td><form action='deletevideo?v=<%=rss.getInt("id")%>' method="post"><input type ="submit" name="deletevideo" id="<%= rss.getString("id")%>"class="action-button" Value="Delete"></form></td>
                    </tr>
                       <%    }
                }catch(Exception ex){
                	ex.printStackTrace();
                }
                	%> 
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
