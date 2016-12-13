<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<spring:url value="/resources/js/jquery-2.2.4.min.js" var="jq" />
<script src="${jq}"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<spring:url value="/resources/js/angular.min.js" var="aa"/><script src="${aa}"></script>

<spring:url value="/resources/css/bootstrap.min.css" var="boot" />
<link rel="stylesheet" href="${boot}">
<spring:url value="/resources/css/style.css" var="style" />
<link rel="stylesheet" href="${style}">