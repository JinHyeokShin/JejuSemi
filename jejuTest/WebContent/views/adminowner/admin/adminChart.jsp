<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "org.json.simple.*" %>
<%
	JSONArray arr = (JSONArray)request.getAttribute("arr");
%>
<!DOCTYPE html>
<html>
<head>
    	<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery/jquery.min.js"></script>
<script class="include" type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%= request.getContextPath() %>/resources/adminowner/lib/raphael/raphael.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/adminowner/lib/morris/morris.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/adminowner/lib/morris-conf.js"></script>
<style>
  ul.sidebar-menu li a.active8, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
    background: #fd7e14;
    color: #fff;
    display: block;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
    cursor: pointer;
}
/* ul.sidebar-menu li ul.sub li.active a {
    color: #fd7e14;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
    display: block;
    cursor: pointer;
} */
  </style>
</head>
<body>

<section id="main-content">
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 통계 조회</h3>
        <!-- page start-->
        
        <div id="morris">
          <div class="row mt">
          
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 최근 4개월간 수익</h4>
                <div class="panel-body">
                  <div id="morrisChart"></div>
                </div>
              </div>
            </div>
            
<!--             <div class="col-lg-6"> -->
<!--               <div class="content-panel"> -->
<!--                 <h4><i class="fa fa-angle-right"></i> Chart Example 2</h4> -->
<!--                 <div class="panel-body"> -->
<!--                   <div id="hero-bar" class="graph"></div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
          </div>
<!--           <div class="row mt"> -->
<!--             <div class="col-lg-6"> -->
<!--               <div class="content-panel"> -->
<!--                 <h4><i class="fa fa-angle-right"></i> Chart Example 3</h4> -->
<!--                 <div class="panel-body"> -->
<!--                   <div id="hero-area" class="graph"></div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="col-lg-6"> -->
<!--               <div class="content-panel"> -->
<!--                 <h4><i class="fa fa-angle-right"></i> Chart Example 4</h4> -->
<!--                 <div class="panel-body"> -->
<!--                   <div id="hero-donut" class="graph"></div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
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
        <%@ include file="../../../views/adminowner/common/footer.jsp" %>
      
 </body>
</html>