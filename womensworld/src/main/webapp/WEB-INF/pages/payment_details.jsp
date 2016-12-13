<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><%@include file="/WEB-INF/pages/common.jsp"%>
</head>

<body>
	<div class="colbody">
		<%@include file="/WEB-INF/pages/headercart.jsp"%>
		<form class="form-horizontal abcdpay">

			<div class="form-group">
				<h3 style="color: blue; text-align: center;">
					<U>Payment Details</U>
				</h3>
				<h5 style="color: black; text-align: center;">
					When finished, click the <u>"SUBMIT"</u> buttons.
				</h5>
				<br> <br>

				<div class="form-group">
					<input type="radio" name="card" value="debit card"> Credit
					Card <select>
						<option value="empty"></option>
						<option value="visa card">VISA Credit Card</option>
						<option value="sbi card">SBI Credit Card</option>
						<option value="citi card">CITI Credit Card</option>
						<option value="icici bank">ICICI Credit Card</option>
					</select>

				</div>
				<br> <br>
				<div class="form-group">
					<input type="radio" name="card" value="debit card"> Debit
					Card <select>&nbsp;
						<option value="empty"></option>
						<option value="visa card">VISA Debit Card</option>
						<option value="sbi card">SBI Debit Card</option>
						<option value="citi card">CITI Debit Card</option>
						<option value="icici bank">ICICI Debit Card</option>
					</select>

				</div>

				<br> <br>
				<div class="form-group">
					<input type="radio" name="card" value="net bank"> Net
					Banking <select>
						<option value="empty"></option>
						<option value="visa card">APEX BANK</option>
						<option value="sbi card">CANARA BANK</option>
						<option value="citi card">INDIAN BANK</option>
						<option value="icici bank">SBI BANK</option>
					</select>
				</div>

				<br> <br>
				<div class="form-group">
					<input type="radio" name="card" value="cash on delivery">
					Cash on Delivery<br>
				</div>

				<br> <br>
			<div class="text-center">
	
	       <a href="success_page" class="btn btn-success" role="button">SUBMIT</a>
			</div>
			
			</div>
		</form>
	</div>
	<%@include file="/WEB-INF/pages/footer.jsp"%>