<!DOCTYPE html>
<html>
<head>
    <title>PNR Status</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

<header>
    <img src="../images/logo.png" height="50" style="float:left;">
    <h1>SRCTC</h1>
</header>

<nav>
    <a href="../index.jsp">Home</a>
    <a href="#">Train</a>
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
    <h2>Check PNR Status</h2>

    <form>
        <label>PNR Number:</label><br>
        <input type="text"><br><br>

        <button type="submit">Check Status</button>
    </form>
</section>

<footer>
    <p>© 2026 SRCTC</p>
</footer>

</body>
</html>