<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><%@include file="/WEB-INF/pages/common.jsp"%>
<title>Insert title here</title>
</head>
<body>


<%@include file="/WEB-INF/pages/header(login&signup).jsp"%>

 <div class="container-fluid image">
  
  <div class="text-center">
  <h3 style="color: blue; class="text-center"><strong>SIGNUP...!!</strong></h3>
  </div>
<br>
<br>
<form:form modelAttribute="userd" cssClass="form-horizontal" action="insertuserd"  method="POST">

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label"> Name:</label>
		<div class="col-sm-8">
			<form:input path="name" value="${userd.name}"
				cssClass="form-control" title="Enter product name" required="true" />
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">ID:</label>
		<div class="col-sm-8">
			<form:input path="id" value="${userd.id}"
				cssClass="form-control" title="Enter product id" required="true" />
		</div>
	</div>
	
	<div class="form-group">
		<label for="pwd" class="col-sm-2 control-label"> Password:</label>
		<div class="col-sm-8">
			<form:input type="numbers" path="pwd" value="${userd.pwd}"
				cssClass="form-control" title="Enter price of the product" required="true"/>
		</div>
	</div>
	<div class="form-group">
		<label for="number" class="col-sm-2 control-label"> Number:</label>
		<div class="col-sm-8">
			<form:input path="number" type="numbers" value="${userd.number}"
				cssClass="form-control" title="Enter the number" required="true"/>
		</div>
	</div>
	<div class="form-group">
		<label for="remarks" class="col-sm-2 control-label"> Remarks:</label>
		<div class="col-sm-8">
			<form:input path="remarks" type="text" value="${userd.remarks}" cssClass="form-control"
				title="Enter remarks" required="true"/>
		</div>
       <div class="form-group"><center>
<br/>
<br/>
<br/>
		<input type="submit" value="SAVE" class="btn btn-success " /></center>
	</div>

</form:form>
<div class="text-center">
<a href="landing_page"  class="btn btn-primary" role="button">BACK</a>
</div>


