<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Users List</h3>
<table border="1">
<tr><th>Users Id</th><th>Password</th><th>Role</th></tr>
<c:forEach var="usr" items="${users}" varStatus="status">
<tr>
<td>${usr.id}</td>
<td>${usr.pwd}</td>
<td>${usr.role}</td>
<td><a href="#">EDIT</a></td>
<td><a href="delUsr?id=${usr.id}">DELETE</a></td>
</tr>
</c:forEach>
</table>

