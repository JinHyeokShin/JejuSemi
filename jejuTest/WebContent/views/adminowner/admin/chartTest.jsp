<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import = "org.json.simple.*" %>
<%
	JSONArray arr = (JSONArray)request.getAttribute("arr");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script class="include" type="text/javascript"
	src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<script
	src="<%= request.getContextPath() %>/resources/adminowner/lib/morris-conf.js"></script>
</head>
<body>


	<section id="main-content">
		<section class="wrapper site-min-height">
			<h3>
				<i class="fa fa-angle-right"></i> Morris Charts
			</h3>
			<!-- page start-->

			<div id="morris">
				<div class="row mt">

					<div class="col-lg-6">
						<div class="content-panel">
							<h4>
								<i class="fa fa-angle-right"></i> Chart Example 1
							</h4>
							<div class="panel-body">

								<!--                   <div id="hero-graph" class="graph"></div> -->
								<div id="morrisChart"></div>
								
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page end-->
		</section>
	</section>
	<script>
		new Morris.Line({
		  // ID of the element in which to draw the chart.
		  element: 'morrisChart',
		  // Chart data records -- each entry in this array corresponds to a point on
		  // the chart.
		  data: <%=arr%>,
		  // The name of the data record attribute that contains x-values.
		  xkey: 'month',
		  // A list of names of data record attributes that contain y-values.
		  ykeys: ['price'],
		  // Labels for the ykeys -- will be displayed when you hover over the
		  // chart.
		  labels: ['price']
		});

</script>


</body>
</html>