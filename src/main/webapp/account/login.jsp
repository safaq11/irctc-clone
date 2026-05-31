<%@ page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

try {
    String url = "jdbc:postgresql://localhost:5432/irctc";
    String username = "postgres";
    String dbPassword = "safaq1105";

    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection(url, username, dbPassword);

    String query = "SELECT * FROM users WHERE email=? AND password=?";
    PreparedStatement ps = con.prepareStatement(query);

    ps.setString(1, email);
    ps.setString(2, password);

    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
    	session.setAttribute("userEmail", email);
    	session.setAttribute("userName", rs.getString("name"));
    	
        String name = rs.getString("name");
        name = java.net.URLEncoder.encode(name, "UTF-8");

        response.sendRedirect("../index.jsp?name=" + name);
    } else {
        response.sendRedirect("login.html?msg=error");
    }

} catch (Exception e) {
    out.println("<h3 style='color:red'>" + e + "</h3>");
}
%>