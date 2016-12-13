<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

<%@include file="/WEB-INF/pages/header1.jsp"%>

<div class="container-fluid text-center colbody" style="padding: 20px">
	
   <c:if test="${message == true}">
  <div class="alert alert-danger fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
     Product is out of stock!! 
  </div>
  </c:if>
   <div class="row">
   <c:forEach var="product" items="${itemlist}" varStatus="status">
    <div class="col-sm-4 col-md-4 col-lg-4" style="padding-bottom: 40px">
   <div>
   
      <spring:url value="/resources/img/${product.id}.jpg" var="imgs" /><img height="250vh" width="250" src="${imgs}"/> 
  <br>
   <div class="text-center caption">     
     <h3> <span>${product.name}</span> </h3>
     <h3> <span>Rs.${product.price}</span> </h3>
	<a class="btn btn-primary" href="shoProduct?id=${product.id}">SEE DETAILS</a>
	
      </div>
   </div>
   </div>
   </c:forEach> 
   </div>
   </div>

<%@include file="/WEB-INF/pages/footer.jsp"%>
