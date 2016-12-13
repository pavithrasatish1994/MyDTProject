<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head><%@include file="/WEB-INF/pages/common.jsp"%>
<title>ADMIN PAGE</title>
</head>
<body>
<%@include file="/WEB-INF/pages/header(sup&admin).jsp"%>
<div class="admin">

<div class="text-center">
<a href="getSupllier" class="btn btn-info">LIST OF SUPPLIERS</a>   
<a href="getCategory" class="btn btn-info">ADD CATEGORY</a> 
<a href="getUser" class="btn btn-info">LIST OF USERS </a> 
<a href="getProduct" class="btn btn-info">LIST OF PRODUCTS</a>   

</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 
<%@include file="/WEB-INF/pages/footer.jsp"%>