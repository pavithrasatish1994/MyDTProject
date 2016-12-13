<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="form"%>

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
      
     
      </div>
      </nav>

 
 <div class="container-fluid image">
 <form class="form-horizontal abcd1">
  <form:form commandName="userdet"  cssClass="form-horizontal" action="addinguser" method="POST">
  <div class="form-group">
      <h3 style="color:blue; text-align:center; " > SIGNUP...!!</h3> <br>
      <br>
    <label for="inputEmail3" class="col-sm-2 control-label">USER NAME </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="inputEmail3" placeholder="USER NAME">
    </div>
  </div>
    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">EMAIL </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="inputEmail3" placeholder="EMAIL">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">PASSWORD </label>
    <div class="col-sm-8">
      <input type="password" class="form-control" id="inputPassword3" placeholder="PASSWORD">
    </div>
  </div>
 
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">GENDER </label> &nbsp; &nbsp;&nbsp;
       <input type="radio" name="chooseone" value="HTML">&nbsp;<label for="MALE">MALE </label> &nbsp;
       <input type="radio" name="chooseone" value="CSS">&nbsp;<label for="FEMALE">FEMALE</label><br>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">DOB </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="inputEmail3" placeholder="DOB">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">CONTACT NO </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="inputEmail3" placeholder="CONTACT NUMBER">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">ADDRESS </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="inputEmail3" placeholder="ADDRESS">
    </div>
  </div>
     <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">PINCODE </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="inputEmail3" placeholder="PINCODE">
    </div>
  </div>
 
  <div class="form-group">
    <div class=" text-center">
        <input  class="btn btn-danger" type="submit" value="Register"/>
    </div>
  </div>
  </form:form>
</form>
</div>