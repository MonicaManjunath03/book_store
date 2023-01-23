<%@page import="com.js.dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lavender">
<h1 style="color:purple">LIST OF ALL THE BOOKS FROM THE STORE</h1>
<table border="2px solid black"> 
<tr>
<th>Book_ID</th>
<th>Book_NAME</th>
<th>Author_NAME</th>
<th>NO_OF_PAGES</th>
<th>PRICE</th>
<th>DELETE</th>
<th>UPDATE</th>
</tr>
<% ArrayList<Book> books=(ArrayList)request.getAttribute("viewbook"); 
for(Book b:books){
%>
<tr>
<td><%=b.getBook_id() %> </td>
<td><%=b.getBname() %> </td>
<td><%=b.getAuthor_name() %> </td>
<td><%=b.getNo_of_pages() %> </td>
<td><%=b.getPrice() %></td>
<td><a href="deleted?id=<%=b.getBook_id()%>">delete</a> </td>
<td><a href="update1?id=<%=b.getBook_id()%>">EDIT</a> </td>

 </tr>

<%} %>
</table>
<br>
<a href="welcome.html">HOME</a>
</body>
</html>