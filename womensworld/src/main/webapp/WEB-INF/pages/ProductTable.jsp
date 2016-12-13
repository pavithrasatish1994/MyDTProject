<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/pages/common.jsp"%>


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
<h3 style="text-align: center;">PRODUCT TABLE</h3>


<div class="container" ng-app="protab" ng-controller="mController">
<form class="form-group">
<input class="form-control" placeholder="Search the List" type="search" ng-model="searchPName" />
</form>
<div ng-init="getDataFromServer()">
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
	<th><a class="btn btn-success" href="edit.do?id={{p.id}}">Edit</a> <a class="btn btn-primary" href="sdel?val={{p.id}}">Delete</a></th>
	</tr>
</table>	
<br/>

<div  class="text-center" >
      <a href="returnback" class="btn btn-primary" role="button">BACK</a>
     </div>
</div>
</div>

<br>
<br>
<br>
  <%@include file="/WEB-INF/pages/footer.jsp"%>