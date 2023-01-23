<%@page import="com.js.dto.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="beige">
<h1 style="color:purple ">UPDATE THE BOOK DETAILS</h1>
<%Book b=(Book)request.getAttribute("book"); %>
<form action="update2">
BOOK ID:     <input type="number" name="id" value="<%=b.getBook_id()%>" readonly="readonly"> <br> <br>
BOOK NAME:   <input type="text" name="bname" value="<%=b.getBname()%>"> <br> <br>
AUTHOR NAME: <input type="text" name="aname" value="<%=b.getAuthor_name()%>"> <br> <br>
NO OF PAGES: <input type="number" name="nop" value="<%=b.getNo_of_pages()%>"> <br> <br>
PRICE:       <input type="text" name="price" value="<%=b.getPrice()%>"> <br> <br>
             <input type="submit" value="update"> <br> <br>

</form>

</body>
</html>