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
<title>Insert title here</title>

<script>
 // app.js
   // var apps = angular.module('sortApps', []);
var control = angular.module('protab', []);

control.controller('mController', function($scope, $http){

	      
               $http.get('GsonCon').success(function(data, status, headers, config) {
            	   console.log(data);
                        $scope.list = data;
                });
        });
        </script>
</head>
<body>

<%@include file="/WEB-INF/pages/header(sup&admin).jsp"%>

<div class="text-center">
<h2>Products</h2>
</div>
<div class="container"  ng-app="protab" ng-controller="mController">
<c:if test="${message == 'true' }">
<div class="alert alert-success">
  <strong>Success!</strong> Edited Successfully !
</div>
</c:if>
<a class="btn btn-primary" href="addform">ADD PRODUCTS</a>
<a class="btn btn-primary" href="landing_page">BACK</a>

<br>
<br>
<form class="form-group">
<input class="form-control" placeholder="Search the List" type="search" ng-model="searchPName" />
</form>
	<table class="table table-bordered table-striped">
	<tr>
		<th>Id</th>
		<th>Category_ID</th>
		<th>Name</th>
		<th>Offer</th>
		<th>Price</th>
		<th>Status</th>
		<th>Supplier_ID</th>
		
	</tr>
	
<tr ng-repeat="p in list | orderBy:sortType:sortReverse | filter:searchPName ">
	<td>{{p.id}}</td>
	<td>{{p.category_id}}</td>
	<td>{{p.name}}</td>
	<td>{{p.offer}}</td>
	<td>{{p.price}}</td>
	<td>{{p.status}}</td>
	<td>{{p.supplier_id}}</td>
	
	<th><a  class="btn btn-success" href="edit.do?id={{p.id}}" >Edit</a> <a class="btn btn-primary" href="sdel?val={{p.id}}">Delete</a></th>
	</tr>
</table>	
<br/>
${msg}
</div>


<%@include file="/WEB-INF/pages/footer.jsp"%>


