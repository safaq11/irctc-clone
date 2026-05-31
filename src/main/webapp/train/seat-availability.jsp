<!DOCTYPE html>
<html>
<head>
    <title>Seat Availability</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

<header>
    <img src="../images/logo.png" height="50" style="float:left;">
    <h1>SRCTC</h1>
</header>

<nav>
    <a href="../index.jsp">Home</a>
    <a href="book-ticket.jsp">Train</a>
    <a href="#">Hotels</a>
    <a href="#">Meals</a>
    <a href="#">Holidays</a>
    <a href="../account/login.html">My Account</a>
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
    <h2>Check Seat Availability</h2>

    <form>
        <label>From:</label><br>
        <input type="text"><br><br>

        <label>To:</label><br>
        <input type="text"><br><br>

        <label>Date:</label><br>
        <input type="date"><br><br>

        <button type="submit">Check Availability</button>
    </form>
</section>

<footer>
    <p>© 2026 SRCTC</p>
</footer>

</body>
</html>