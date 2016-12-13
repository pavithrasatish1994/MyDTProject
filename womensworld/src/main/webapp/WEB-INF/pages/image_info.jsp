<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/pages/common.jsp"%>	
</head>
<body>
	<%@include file="/WEB-INF/pages/header1.jsp"%>
<div>
	<!---------------------------------   IMAGE  ----------------------------------------------------->


	<div class="col-sm-6 col-md-6 col-lg-6 col-xs-6">
		
		<spring:url value="/resources/img/${product.id}.jpg" var="imgs" /><img height="350vh" width="350" src="${imgs}"/>
	</div>
<!-- --------------------------------DESCRIPTION ----------------------------------------------->
<div class="container-fluid colbody ">

	<div class=" col-md-6 col-md-6 col-lg-6 col-xs-6" style="text-align: left">

		<h3> 
		<p> ID:${product.id}</p>
		<p>	Name:${product.name}</p>
        <p> Price:${product.price}</p> 
		</h3>
		<h4><u>Cash on delivery eligible</u></h3>
		
	
		 <ul class="nav navbar-nav navbar-left button">
        <a href="addtocart?nam=${pageContext.request.userPrincipal.name}&id=${product.id}" class="btn btn-primary" role="button"> ADD TO CART</a>
        <a href="xyz" class="btn btn-primary" role="button"> BACK</a>
      
    </ul>

	</div>
</div>
</div>

<!-- ---------------------------------end of description ------------------------------------------------------------->



<%@include file="/WEB-INF/pages/footer.jsp"%>


