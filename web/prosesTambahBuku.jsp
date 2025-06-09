<%-- 
    Document   : prosesTambahBuku
    Created on : 29 May 2025, 09.29.33
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="your.packagename.DBConnection" %>
<%@page import="classes.JDBC"%>
<%
    try {
        int tahunTerbit = Integer.parseInt(request.getParameter("tahunTerbit"));
        String bookID = request.getParameter("bookID");
        String judul = request.getParameter("judul");
        String penulis = request.getParameter("penulis");
        String penerbit = request.getParameter("penerbit");
        
        Connection conn = DBConnection.getConnection();
        String sql = "INSERT INTO books (bookID, judul, penulis, penerbit, tahunTerbit) VALUES (?, ?, ?, ?, ?)";
        
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, bookID);
        pstmt.setString(2, judul);
        pstmt.setString(3, penulis);
        pstmt.setString(4, penerbit);
        pstmt.setInt(5, tahunTerbit);

        pstmt.executeUpdate();
        pstmt.close();
        conn.close();
        
        out.println("Buku berhasil ditambahkan.");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    }
%>