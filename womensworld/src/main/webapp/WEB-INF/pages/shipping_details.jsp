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

	<%@include file="/WEB-INF/pages/header1.jsp"%>
	<div class="colbody">


		<div class="form-group">
			<h3 style="color: blue; text-align: center;">
				<U>Enter the delivery address.</U>
			</h3>

			<br> <br>



			<form:form class="form-horizontal abcdcart" modelAttribute="shipping">

				<div class="form-group">
					<label for="name" class="col-sm-2 control-label"> NAME:</label>
					<div class="col-sm-8">
						<form:input path="name" value="${shipping.name}"
							cssClass="form-control" title="Enter the name" />
					</div>
				</div>

				<div class="form-group">
					<label for="number" class="col-sm-2 control-label"> Number:</label>
					<div class="col-sm-8">
						<form:input path="number" value="${shipping.number}"
							cssClass="form-control" title="Enter number" />
					</div>
				</div>

				<div class="form-group">
					<label for="address" class="col-sm-2 control-label">Address:</label>
					<div class="col-sm-8">
						<form:input path="address" value="${shipping.address}"
							cssClass="form-control" title="Enter the address" />
					</div>
				</div>

				<div class="form-group">
					<label for="state" class="col-sm-2 control-label"> State:</label>
					<div class="col-sm-8">
						<form:input path="state" value="${shipping.state}"
							cssClass="form-control" title="Enter the state" />
					</div>
				</div>

				<div class="form-group">
					<label for="country" class="col-sm-2 control-label">
						Country:</label>
					<div class="col-sm-8">
						<form:input path="country" value="${shipping.country}"
							cssClass="form-control" title="Enter the country" />
					</div>
				</div>
				<div class="text-center">
					<input type="hidden" name="_flowExecutionKey" value="a" /> <input
						class="btn btn-success" type="submit" name="_eventId_Proceed"
						value="Submit" />
				</div>
			</form:form>
		</div>
	</div>
	<%@include file="/WEB-INF/pages/footer.jsp"%>