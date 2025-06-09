<%-- 
    Document   : hapusBuku
    Created on : 29 May 2025, 09.24.23
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String bookID = request.getParameter("bookID");

    try {
        Connection conn = DBConnection.getConnection();
        String sql = "DELETE FROM books WHERE bookID = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, bookID);
        pstmt.executeUpdate();
        pstmt.close();
        conn.close();
        response.sendRedirect("daftarBuku.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>