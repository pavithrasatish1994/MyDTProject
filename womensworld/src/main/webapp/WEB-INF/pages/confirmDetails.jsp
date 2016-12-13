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
	<%@include file="/WEB-INF/pages/headercart.jsp"%>

	<div class="container well" style="width:50%;">

		<h3 class="text-center">CONFIRM DETAILS</h3>

		<br>

		<div class="form-group">
			<form:form modelAttribute="shipping">
				<div class="form-group">
					<label for="name"> NAME:</label>
					
						<form:input path="name" value="${shipping.name}"
							cssClass="form-control" />
					
				</div>


				<div class="form-group">
					<label for="number"> Number:</label>
					
						<form:input path="number" value="${shipping.number}"
							cssClass="form-control" title="Enter number" />
					
				</div>

				<div class="form-group">
					<label for="address">Address:</label>
					
						<form:input path="address" value="${shipping.address}"
							cssClass="form-control" title="Enter the address" />
					
				</div>

				<div class="form-group">
					<label for="state"> State:</label>
					
						<form:input path="state" value="${shipping.state}"
							cssClass="form-control" title="Enter the state" />
					
				</div>

				<div class="form-group">
					<label for="country"> Country:</label>
					<form:input path="country" value="${shipping.country}"
							cssClass="form-control" title="Enter the country" />
					</div>





					<%-- 			<h4>	<form:label path="name"> Name:</form:label>${shipping.name} </h4> --%>

					<%-- 			<h4>	    <form:label path="number">Number:</form:label>${shipping.number}  </h4> --%>

					<%-- 			<h4>       <form:label path="country">Country:</form:label>${shipping.country}  </h4> --%>

					<%-- 			<h4>	<form:label name="state" path="state">State:</form:label>${shipping.state} </h4> --%>

					<%-- 			<h4>	<form:label path="address">Address :</form:label>${shipping.address}  </h4> --%>
					<!-- 					<br /> -->
                 
                 
                 <div class="text-center">
					<input name="_eventId_edit" class="btn btn-success" type="submit" value="Edit" />
					<input name="_eventId_submit" class="btn btn-primary" type="submit" value="Confirm Details" />
					</div>
			</form:form>
		</div>
		
	</div>
	
	<%@include file="/WEB-INF/pages/footer.jsp"%>
</body>