

<!--------------------------START OF CAROUSEL --------------------------------------------------->

<div id="carousel-example-generic" class="carousel slide space"
	data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#carousel-example-generic" data-slide-to="0"
			class="active"></li>
		<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		<li data-target="#carousel-example-generic" data-slide-to="3"></li>

	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<spring:url value="/resources/img/c1.jpg" var="imgs" />
			<img height="100px!important" width="100%" background-size="cover"
				src="${imgs}" />
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<spring:url value="/resources/img/c2.jpg" var="imgs" />
			<img height="100px!important" width="100%" background-size="cover"
				src="${imgs}" />

			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<spring:url value="/resources/img/c3.jpg" var="imgs" />
			<img height="100px!important" width="100%" background-size="cover"
				src="${imgs}" />

			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<spring:url value="/resources/img/c4.jpg" var="imgs" />
			<img height="100px!important" width="100%" background-size="cover"
				src="${imgs}" />

			<div class="carousel-caption"></div>
		</div>
	</div>


	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic"
		role="button" data-slide="prev"> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#carousel-example-generic"
		role="button" data-slide="next"> <span class="sr-only">Next</span>
	</a>
</div>

<!----------------------------END OF CAROUSEL ---------------------------------------------->
