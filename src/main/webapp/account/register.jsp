<%@ page import="java.sql.*" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");

if(name == null || email == null || password == null ||
   name.trim().isEmpty() || email.trim().isEmpty() || password.trim().isEmpty()) {

    response.sendRedirect("register.html?msg=error");
    return;
}

try {
    String url = "jdbc:postgresql://localhost:5432/irctc";
    String username = "postgres";
    String dbPassword = "safaq1105";

    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection(url, username, dbPassword);

    
    String checkQuery = "SELECT * FROM users WHERE email=?";
    PreparedStatement checkPs = con.prepareStatement(checkQuery);
    checkPs.setString(1, email);

    ResultSet rs = checkPs.executeQuery();

    if (rs.next()) {
        // Email already exists
        response.sendRedirect("register.html?msg=exists");
        return;
    }
   
    String query = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(query);

    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, password);

    int i = ps.executeUpdate();

    if (i > 0) {
        response.sendRedirect("register.html?msg=success");
    }
    else {
        response.sendRedirect("register.html?msg=error");
    }
}

 catch (Exception e) {
    out.println(e);
}
%>