<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<spring:url value="/resources/js/angular.min.js" var="aa"/><script src="${aa}"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
 // app.js
    var app = angular.module('sortApp', []);

function mainController($scope, $http) {
	 console.log('level 1');
	  $scope.sortType     = 'name'; // set the default sort type
	  $scope.sortReverse  = false;  // set the default sort order
	  $scope.searchPName   = '';     // set the default search/filter term
	  console.log('level 2');
        $scope.getDataFromServer = function() 
        {
        	 console.log('level 3');
               $http.get('GsonCon').success(function(data, status, headers, config) {
                        $scope.Product = data;
                }).error(function(data, status, headers, config) {
                        
                });

               
        };
};

    </script>
</head>
<body>


<div class="cotainer">
	<div class="heading">
	
	</div>
	<div class="tabs">
	<div class="container" ng-app="sortApp" ng-controller="mainController">
  <h3>Details Of AllProducts</h3>

				<div class="row">
					<div class="col-sm-4">
						<div >
							<p>Sort Type: {{ sortType }}</p>
							<p>Sort Reverse: {{ sortReverse }}</p>
							<p>Search Query: {{ searchpnm }}</p>
						</div>
					</div>
				<div class="col-sm-8">
						<div  style="float: right;" >

						</div>
					</div>
				
					
				</div>
				
  <form>
    <div class="form-group" >
      <div class="input-group">
        <div class="input-group-addon" ><i class="fa fa-search"></i></div>

        <input type="text" class="form-control"  placeholder="Search Product Name" ng-model="searchpnm">

      </div>      
    </div>
  </form>
  <div ng-init="getDataFromServer()">
  <table class="table table-bordered table-striped">
    
     <thead>
      <tr>
      <td>
          <a href="#" ng-click="sortType = 'id';">
            Product Name 
            <span ng-show="sortType == 'id' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'id' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        
        <td>
          <a href="#" ng-click="sortType = 'name';">
            Product Name 
            <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'offer'; ">
          Description 
            <span ng-show="sortType == 'offer' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'offer' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'price'; ">
          Price 
            <span ng-show="sortType == 'price' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        
      </tr>
    </thead>
   
    <tbody>
      <tr class="clickable-row" ng-repeat="roll in Product | orderBy:sortType:sortReverse | filter:searchpnm ">
        <td>{{ roll.id }}</td>
        <td>{{ roll.name }}</td>
        <td>{{ roll.offer }}</td>
        <td>{{ roll.price }}</td>
        <td>
             <!-- <button type="button" class="btn-success text-capitalize" data-toggle="modal" data-target="#myModal" style="float: right;">More Info</button> -->
         
        </td>
      </tr>
    </tbody>
    </table>
    </div>
   
  
</div>
	</div>
</div>


</body>
<!-- disp select itm on modal -->
<script>
$(".clickable-row").click(function(){
    if($(this).hasClass("highlight"))
        $(this).removeClass('highlight');
    else
        $(this).addClass('highlight').siblings().removeClass('highlight');
})
	</script>
<!-- disp select itm on modal -->


</body>
</html>