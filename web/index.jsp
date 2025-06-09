<%-- 
    Document   : index
    Created on : 29 May 2025, 09.16.56
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Perpustakaan Online</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        a {
            display: block;
            margin: 10px 0;
            text-decoration: none;
            color: #007BFF;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Selamat Datang di Perpustakaan Online</h1>
    <h2>Fitur Utama</h2>
    <a href="daftarBuku.jsp">Manajemen Buku</a>
    <a href="login.jsp">Login</a>
    <a href="register.jsp">Register</a>
    <h2>Fitur Tambahan</h2>
    <a href="wishlist.jsp">Wishlist</a>
    <a href="review.jsp">Ulasan Buku</a>
</body>
</html>