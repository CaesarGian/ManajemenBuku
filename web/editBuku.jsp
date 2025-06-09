<%-- 
    Document   : editBuku
    Created on : 29 May 2025, 09.23.35
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="classes.JDBC"%>
<%
    String bookID = request.getParameter("bookID");
    String judul = "";
    String penulis = "";
    String penerbit = "";
    int tahunTerbit = 0;

    try {
        Connection conn = DBConnection.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM books WHERE bookID = ?");
        pstmt.setString(1, bookID);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            judul = rs.getString("judul");
            penulis = rs.getString("penulis");
            penerbit = rs.getString("penerbit");
            tahunTerbit = rs.getInt("tahunTerbit");
        }
        rs.close();
        pstmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Buku</title>
</head>
<body>
    <h1>Edit Buku</h1>
    <form action="prosesEditBuku.jsp" method="post">
        <input type="hidden" name="bookID" value="<%= bookID %>">
        <label>Judul:</label><br>
        <input type="text" name="judul" value="<%= judul %>" required><br>
        <label>Penulis:</label><br>
        <input type="text" name="penulis" value="<%= penulis %>"><br>
        <label>Penerbit:</label><br>
        <input type="text" name="penerbit" value="<%= penerbit %>"><br>
        <label>Tahun Terbit:</label><br>
        <input type="number" name="tahunTerbit" value="<%= tahunTerbit %>" required><br>
        <input type="submit" value="Update Buku">
    </form>
    <a href="daftarBuku.jsp">Kembali</a>
</body>
</html>