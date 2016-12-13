<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head><%@include file="/WEB-INF/pages/common.jsp"%>
</head>
<body>

	<nav class="navbar navbar-inverse">
  <div class="container-fluid col">
    <div class="navbar-header ">
          <div class="row ">
              <h2> &nbsp; &nbsp; "...WELCOME TO WOMEN'S WORLD..."</h2>
	</div>
      </div>
      
     <ul class="nav navbar-nav navbar-right xyz">
     <ul class="nav navbar-nav">
   
         <span> HI,${pageContext.request.userPrincipal.name}</span>
    	<a href="CartTable?nam=${pageContext.request.userPrincipal.name}"> <button type="button" class="btn btn-success" aria-label="Left Align">
    	<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></button></a>
    	<a href="landing_page" class="btn btn-primary" role="button">SIGN OUT</a>
       
      
    </ul>
    </ul>
  </div>
</nav> 