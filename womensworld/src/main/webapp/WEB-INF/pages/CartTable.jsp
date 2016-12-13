<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/pages/common.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/pages/headercart.jsp"%>
<div class = "text-center">
<h3>CART LIST</h3>

	<table class="table table-bordered table-striped">
<tr><th>ID</th><th>NAME</th><th>PRICE</th></tr>
<c:forEach  var="cart" items="${items}" varStatus="status">
<tr>
<td>${cart.id}</td>
<td>${cart.pname}</td>
<td>${cart.price}</td>

<td><a href="shiping?nam=${pageContext.request.userPrincipal.name}&id=${cart.id}" class="btn btn-success"> Check out</a></td> 
	<td><a class="btn btn-primary" href="abc?id=${cart.id}&nam=${pageContext.request.userPrincipal.name}">Delete</a></td>
</tr>
</c:forEach>
</table>
</div>
<div class="text-center">
   <a href="userview" class="btn btn-primary" role="button">BACK</a>
</div>
</div>


