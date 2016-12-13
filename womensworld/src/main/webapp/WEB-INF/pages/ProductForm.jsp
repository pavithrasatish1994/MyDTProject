<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/pages/common.jsp"%>
</head>

<body>
<!--------------------------------------------------------start of header  --------------------------------------------------------------------->
<nav class="navbar navbar-inverse">
  <div class="container-fluid col">
    <div class="navbar-header ">
          <div class="row ">
              <h2> &nbsp; &nbsp; "...WELCOME TO WOMEN'S WORLD..."</h2>
	</div>
      </div>
      
     <ul class="nav navbar-nav navbar-right button">
     <ul class="nav navbar-nav">
       
      <h5> HI,${pageContext.request.userPrincipal.name}</h5>
    
        <a href="landing_page" class="btn btn-primary" role="button">SIGN OUT</a>
       
      
    </ul>
    </ul>
  </div>
</nav> 


<!----------------------------------------------------------end of header  ------------------------------------------------------------------->
<h1 class="text-center">Add Products</h1>

<form:form modelAttribute="product" cssClass="form-horizontal"
	action="insertprod?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="POST">

	

	<div class="form-group">
		<label for="id" class="col-sm-2 control-label"> ID:</label>
		<div class="col-sm-8">
			<form:input path="id" value="${product.id}" 
			cssClass="form-control" title="Enter the product ID" required="true" />
		</div>
	</div>
	

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label"> Name:</label>
		<div class="col-sm-8">
			<form:input path="name" value="${product.name}"
				cssClass="form-control" title="Enter product name" required="true" />
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="category_id" class="col-sm-2 control-label"> Category_id:</label>
		<div class="col-sm-8">
			<form:input path="category_id" value="${product.category_id}"
				cssClass="form-control" title="Enter product category_id" required="true" />
		</div>
	</div>
	
	<div class="form-group">
		<label for="price" class="col-sm-2 control-label"> Price:</label>
		<div class="col-sm-8">
			<form:input type="numbers" path="price" value="${product.price}"
				cssClass="form-control" title="Enter price of the product" required="true"/>
		</div>
	</div>
	<div class="form-group">
		<label for="status" class="col-sm-2 control-label"> Status:</label>
		<div class="col-sm-8">
			<form:input path="status" type="numbers" value="${product.status}"
				cssClass="form-control" title="Enter the status" required="true"/>
		</div>
	</div>
	<div class="form-group">
		<label for="offer" class="col-sm-2 control-label"> Offer:</label>
		<div class="col-sm-8">
			<form:input path="offer" type="text" value="${product.offer}" cssClass="form-control"
				title="Enter offer" required="true"/>
		</div>
	</div>
	
	<div class="form-group">
		<label for="supplier_id" class="col-sm-2 control-label"> Supplier_id:</label>
		<div class="col-sm-8">
			<form:input path="supplier_id" type="text" value="${product.supplier_id}" cssClass="form-control"
				title="Enter the supplier_id" required="true"/>
		</div>
	</div>
	 <div class="form-group">
		<label for="img" class="col-sm-2 control-label">Upload Image:</label>
		<div class="col-sm-8">
			<form:input path="img" value="${product.img}" type="file" cssClass="form-control"/>
		</div>
	</div>
	<div class="form-group text-center">
		<input type="submit" value="SAVE" class="btn btn-primary " />
	</div>

</form:form>
<div class="text-center">
<a href="123" class="btn btn-primary" role="button">BACK</a>
</div>

<h1>${successMessage }</h1>
