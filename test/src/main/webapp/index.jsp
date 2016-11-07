<%@ page import="java.sql.*"%>
<html>
<head>
    <title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
    String db = request.getParameter("db");
    String user = db; // assumes database name is the same as username
    try {
        java.sql.Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://db/test", "root", "");
        out.println (db+ "database successfully opened.");
    }
    catch(SQLException e) {
        out.println("SQLException caught: " +e.getMessage());
    }
%>

</body>
</html>
