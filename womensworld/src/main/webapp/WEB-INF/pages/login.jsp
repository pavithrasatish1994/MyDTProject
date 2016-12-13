<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><%@include file="/WEB-INF/pages/common.jsp"%>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid col">
		<div class="navbar-header ">
			<div class="row ">
				<h2>&nbsp; &nbsp; "...WELCOME TO WOMEN'S WORLD..."</h2>
			</div>
		</div>


	</div>
	</nav>

        <div class="container-fluid image ">
		
		
		
			<form class="form-horizontal abcd" name='loginForm'
				action="<c:url value='/j_spring_security_check' />" method='POST'>

               <h3 style="color: blue; text-align: center;"><strong>LOGIN...!!</strong></h3>
               
               
               <br> <br>
				
				<div class="form-group">	
					 <label for="inputEmail3"
						class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="username"
							name="username" placeholder="Email "><br>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input type="Password" class="form-control" id="password"
							name="password" placeholder="Password"><br>
					</div>
				</div>

				<div class="form-group">
					<div class="text-center">
						  <input type="submit" class = "btn btn-success" id="button2" value="SUBMIT"> 
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

			<div class="text-center">
           <a href="landing_page"  class="btn btn-primary" role="button">BACK</a>
            </div>
            </form>
	</div>
<%@include file="/WEB-INF/pages/footer.jsp"%>

</body>
</html>