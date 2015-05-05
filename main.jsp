<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><lol>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="datauser" class="data.DataUsers" scope="session"></jsp:useBean>
<h2>List of books:</h2>
<ul>
<c:forEach var="listElement" items="${requestScope.list}">
<li><a href="MainController?user=<jsp:getProperty name="datauser" property="userID"/>&mode=edit&id=${listElement.getId()}">${listElement.getName()} - ${listElement.getAuthor()} - ${listElement.getDate()}</a>
</li>
</c:forEach>
</ul>
<br>
<a href="MainController?user=<jsp:getProperty name="datauser" property="userID"/>&mode=add">Create new book</a>
</body>
</html>
<!--changes from Roma-->
