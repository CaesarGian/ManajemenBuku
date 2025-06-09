<%-- 
    Document   : tambahBuku
    Created on : 29 May 2025, 09.22.32
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tambah Buku</title>
</head>
<body>
    <h1>Tambah Buku</h1>
    <form action="prosesTambahBuku.jsp" method="post">
        <label>Book ID:</label><br>
        <input type="text" name="bookID" required><br>
        <label>Judul:</label><br>
        <input type="text" name="judul" required><br>
        <label>Penulis:</label><br>
        <input type="text" name="penulis"><br>
        <label>Penerbit:</label><br>
        <input type="text" name="penerbit"><br>
        <label>Tahun Terbit:</label><br>
        <input type="number" name="tahunTerbit" required><br>
        <input type="submit" value="Tambah Buku">
    </form>
    <a href="daftarBuku.jsp">Kembali</a>
</body>
</html>