<%-- 
    Document   : addPost
    Created on : 15 Oct, 2018, 7:53:57 PM
    Author     : user
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Post</title>
    </head>
    <body>
        <%
        
        %>
        <h1>Add Post</h1>
        <form action="http://localhost:8080/wbHome/svPost" method="post">
            <input type="text" name="title" placeholder="Enter title here" style="width: 100%;"><br>
            <textarea name="text" rows="10" cols="190" placeholder="Enter text"> 
            </textarea><br>
            <input type="text" name="link" placeholder="Enter link here" style="width: 100%;"><br>
            <input type="text" name="branch" placeholder="Enter Branch" style="width: 100%;"><br>
            <input type="submit" value="Add">
        </form>
    </body>
</html>
