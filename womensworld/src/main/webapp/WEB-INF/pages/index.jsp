   <%@include file="/WEB-INF/pages/landing_page.jsp"%>

<!--  <a href="getProduct">Get Product Table</a>  -->



</body>
<%-- <%@include file="/WEB-INF/views/includes1.jsp"%>   --%>
<spring:url value="/resources/js/jquery.js" var="jq" />
<script src="${jq}"></script>
<spring:url value="/resources/js/angular.min.js" var="a" />
<script src="${a}"></script>
<spring:url value="/resources/js/admincontroller.js" var="aa" />
<script src="${aa}"></script>

</html>
