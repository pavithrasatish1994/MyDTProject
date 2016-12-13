<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" text="text/css" href="css/style.css">

<spring:url value="/resources/js/jquery.js" var="jq" />
<script src="${jq}"></script>

<spring:url value="/resources/css/bootstrap.css" var="boot" />
<link rel="stylesheet" href="${boot}">
<spring:url value="/resources/css/style.css" var="style" />
<link rel="stylesheet" href="${style}">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>

	<!-- <a href="#" class="btn btn-primary" role="button">SIGN-UP </a> --->
	<!-- <spring:url value="/resources/img/image4.jpg" var="imgs" /><img height="400vh" width="50%" src="${imgs}"/> ---->



	<!------------------------------START OF NAVBAR --------------------------------------------------->


	<nav class="navbar navbar-inverse">
  <div class="container-fluid col">
    <div class="navbar-header ">
          <div class="row ">
              <h2> &nbsp; &nbsp; "...WELCOME TO WOMEN'S WORLD..."</h2>
	</div>
      </div>
      
     
    
<!--     <ul class="nav navbar-nav navbar-left drop"> -->
<!--      <ul class="nav navbar-nav"> -->
     
<!--        <div class="dropdown"> -->
<!--     <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">SEARCH -->
<!--     <span class="caret"></span></button> -->
<!--     <ul class="dropdown-menu"> -->
<!--       <li><a href="#">FROCK</a></li> -->
<!--             <li><a href="#">GOWN</a></li> -->
<!--             <li><a href="#">TOPS</a></li> -->
<!--             <li><a href="#">SAREE</a></li> -->
<!--             <li><a href="#">KURTHA</a></li> -->
<!--             <li><a href="#">BRIDAL COLLECTIONS</a></li> -->
<!--     </ul> -->
<!--   </div>   -->
<!--   </ul> -->
<!--   </ul> -->
  
  <ul class="nav navbar-nav navbar-right xyz">
     <ul class="nav navbar-nav">
       
     
    
        <a href="signup" class="btn btn-primary" role="button">SIGNUP</a>
        <a href="logins" class="btn btn-primary" role="button">LOGIN</a>
      
    </ul>
    </ul>
  </div>
</nav>
<!-------------------------- END OF NAVBAR---------------------------------------------------->

  