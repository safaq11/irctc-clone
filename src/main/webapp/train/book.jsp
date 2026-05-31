<%@ page import="java.sql.*" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String source = request.getParameter("source");
String destination = request.getParameter("destination");
String travelDate = request.getParameter("travel_date");

try {
    String url = "jdbc:postgresql://localhost:5432/irctc";
    String username = "postgres";
    String dbPassword = "safaq1105";

    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection(url, username, dbPassword);

    String query = "INSERT INTO bookings (name, email, source, destination, travel_date) VALUES (?, ?, ?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(query);

    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, source);
    ps.setString(4, destination);
    ps.setDate(5, java.sql.Date.valueOf(travelDate));

    int i = ps.executeUpdate();

    if (i > 0) {
    	response.sendRedirect("booking-success.jsp");
    } else {
    	response.sendRedirect("booking-success.jsp");    }

} catch (Exception e) {
    out.println(e);
}
%>