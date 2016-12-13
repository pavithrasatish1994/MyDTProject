<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><%@include file="/WEB-INF/pages/common.jsp"%>
<title>Insert title here</title>

<script>
 // app.js
   // var apps = angular.module('sortApps', []);
var control = angular.module('protab', []);

control.controller('mController', function($scope, $http){

	      
               $http.get('GsonConS').success(function(data, status, headers, config) {
            	   console.log(data);
                        $scope.list = data;
                });
          });
    </script>
</head>
<body>
<%@include file="/WEB-INF/pages/header(sup&admin).jsp"%>
<h3 style="text-align: center;">SUPPLIER TABLE</h3>


<div class="container" ng-app="protab" ng-controller="mController">
<form class="form-group">
<input class="form-control" placeholder="Search the List" type="search" ng-model="searchPName" />
</form>
<div ng-init="getDataFromServer()">
	<table class="table table-bordered table-striped">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>ADDRESS</th>
		
	</tr>
	
	<tr ng-repeat="s in list | orderBy:sortType:sortReverse | filter:searchPName ">
	<td>{{s.id}}</td>
	<td>{{s.name}}</td>
	<td>{{s.address}}</td>
	
	<th> <a class="btn btn-primary" href="sdelS?val={{s.id}}">Delete</a></th>
	</tr>
</table>	
<br/>
</div>
 <div  class="text-center" >
      <a href="returnback" class="btn btn-primary" role="button">BACK</a>
     </div>
</div>
