<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
if(session.getAttribute("userEmail") == null){
    response.sendRedirect("login.html");
    return;
}
%>

<%
String userEmail = (String) session.getAttribute("userEmail");

if (userEmail == null) {
    response.sendRedirect("login.html");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Train History</title>

<link rel="stylesheet" href="../css/style.css?v=20">

</head>
<body>

<header>
    <h1>SRCTC</h1>
    <img src="../images/logo.png" height="50">
</header>

<nav>
    <a href="../index.jsp">Home</a>
    <a href="../train/book-ticket.jsp">Train</a>
    <a href="#">Hotels</a>
    <a href="#">Meals</a>
    <a href="#">Holidays</a>
    <a href="login.html">My Account</a>
    <a href="logout.jsp">Logout</a>
    <%
String user = (String) session.getAttribute("userName");
if(user != null){
%>
    <span style="color:white;">Welcome, <%= user %></span>
    <a href="../account/logout.jsp">Logout</a>
<%
}else{
%>
    <a href="../account/login.html">Login</a>
<%
}
%>
</nav>

<section class="main">

    <h2 style="text-align:center;">My Train Booking History</h2>

    <h3 style="text-align:center; color:#0a3d62;">
        Welcome, <%= session.getAttribute("userName") %>
    </h3>
 
    <table class="history-table">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>From</th>
            <th>To</th>
            <th>Date</th>
        </tr>

<%
try {
    String url = "jdbc:postgresql://localhost:5432/irctc";
    String username = "postgres";
    String dbPassword = "safaq1105";

    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection(url, username, dbPassword);

    String query = "SELECT * FROM bookings WHERE email=? ORDER BY id DESC";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setString(1, userEmail);

    ResultSet rs = ps.executeQuery();

    while(rs.next()) {
%>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("source") %></td>
            <td><%= rs.getString("destination") %></td>
            <td><%= rs.getDate("travel_date") %></td>
        </tr>
<%
    }

} catch(Exception e) {
    out.println("<h3 style='color:red'>" + e + "</h3>");
}
%>

    </table>
 <div class="card">
    <a href="../train/train/book-ticket.jsp">
    <button>Book New Ticket</button>
    </a>
   </div>
</section>

<footer>
    <p>2026 SRCTC</p>
</footer>

</body>
</html>