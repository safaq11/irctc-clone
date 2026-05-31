<%
String userEmail = (String) session.getAttribute("userEmail");

if (userEmail == null) {
    response.sendRedirect("../account/login.html");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Ticket</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

<header>
    <h1>SRCTC</h1>
    <img src="../images/logo.png" height="50" style="float:left">
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
    <h2>Book Train Ticket</h2>

        <form action="book.jsp" method="post" onsubmit="return confirm('Confirm booking?')" class="modern-form">
        <label>Name:</label><br> 
        <input type="text" name="name"><br><br>
        <label>Email:</label><br> 
        <input type="text" name="email"><br><br>
         <label>From:</label><br> 
         <input type="text" name="source"><br><br>
          <label>To:</label><br>
          <input type="text" name="destination"><br><br>
           <label>Date:</label><br> 
           <input type="date" name="travel_date"><br><br> 
           <button type="submit">Book Ticket</button>

</form>
<%
String msg = request.getParameter("msg");

if ("success".equals(msg)) {
%>
    <p style="color:green; text-align:center; font-weight:bold;">
        Booking Successful!
    </p>
<%
} else if ("error".equals(msg)) {
%>
    <p style="color:red; text-align:center; font-weight:bold;">
        Booking Failed!
    </p>
<%
}
%>
</section>
<footer>
    <p>© 2026 SRCTC</p>
</footer>

</body>
</html>