<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IRCTC CLONE</title>
<link rel="stylesheet" href="css/style.css?v=5">
</head>
<body>
    
    <header>
        <img src="images/logo.png" height="50" style="float:left;" class="logo">
        <h1>SRCTC</h1>
        
    </header>

    
<nav>
<%
String user = (String) session.getAttribute("userName");

if(user != null){
%>
    <a href="train/book-ticket.jsp">Train</a>
    <a href="#">Hotels</a>
    <a href="#">Meals</a>
    <a href="#">Holidays</a>
    <a href="account/history.jsp">My Train History</a>
    <a href="account/logout.jsp">Logout</a>
<%
} else {
%>
    <a href="#">Hotels</a>
    <a href="#">Meals</a>
    <a href="#">Holidays</a>
    <a href="account/login.html">Login</a>
<%
}
%>
</nav>
    <p id="welcomeUser" style="color: green; text-align:center; font-weight: bold;"></p>
   
   <section class="hero">
    <h2>Welcome to SRCTC</h2>
    <p>Fast, easy and secure ticket booking</p>
    <a href="train/book-ticket.jsp">
    <button>Book Now</button>
    </a>
    </section>

<section class="features">
    <div class="card">
    <h3>Book Ticket</h3>
    <p>Reserve your train seat</p>
    <a href="train/book-ticket.jsp">
    <button>Book now</button>
    </a>
   </div>

    <div class="card">
    <h3>PNR Status</h3>
    <p>Check your ticket status instantly</p>
    <a href="https://www.indianrail.gov.in/enquiry/PNR/PnrEnquiry.html?locale=en">
    <button>Check Status</button>
    </a>
    
    </div>
    

    <div class="card">
    <h3>Seat Availability</h3>
    <p>Find available seats easily</p>
    <a href="train/seat-availability.jsp">
    <button>Check Availability</button>
    </a>
    
   </div>
</section>

    <footer>
        <p>© 2026 SRCTC</p>
    </footer>
    <script src="js/script.js"></script>
<script>
const params = new URLSearchParams(window.location.search);
const name = params.get("name");

if (name) {
    document.getElementById("welcomeUser").innerText = "Welcome, " + name + "!";
}
</script>
</body>
</html>