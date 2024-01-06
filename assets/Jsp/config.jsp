<%@ page import="java.sql.*" %>

<%
    String url = "jdbc:mysql://localhost:3306/bookstore?serverTimezone=UTC";
    String user = "root";
    String password = "1234";

    Connection con = DriverManager.getConnection(url, user, password);
    String sql = "USE `bookstore`";
    con.createStatement().execute(sql);
%>