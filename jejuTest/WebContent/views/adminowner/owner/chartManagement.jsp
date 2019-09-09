<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "org.json.simple.*" %>
<%
	JSONArray arr1 = (JSONArray)request.getAttribute("arr1");
	JSONArray arr2 = (JSONArray)request.getAttribute("arr2");
%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../../views/adminowner/common/ownerSidebar.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"	href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery/jquery.min.js"></script>

<script class="include" type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%= request.getContextPath() %>/resources/adminowner/lib/raphael/raphael.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/adminowner/lib/morris/morris.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/adminowner/lib/morris-conf.js"></script>

<style>
  ul.sidebar-menu li a.active4, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
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
       <div class="row mt">
              <div class="col-lg-12">
                <div class="row content-panel">
                  <div class="col-md-4 profile-text mt mb centered">
                    <div class="right-divider hidden-sm hidden-xs">
                      <h4><%= loginUser.getMemId() %></h4>
                      <h6>ID</h6>
                      <h4><%= loginUser.getMemName()%></h4>
                      <h6>NAME</h6>
                      <h4><%= acm.getAcmPhone() %></h4>
                      <h6>PHONE</h6>
                    </div>
                  </div>
                  <!-- /col-md-4 -->
                  <div class="col-md-4 profile-text">
                    <h3><%= acm.getAcmName() %></h3>
                    <h6><%= loginUser.getMemName() %>님 환영합니다</h6>
                    <p>COME TO JEJU를 이용해주셔서 감사합니다.<br>사용하시다가 불편한 점이나 개선할 점을<br> 문의해주시면 최대한 빠르게 조치하겠습니다.</p>
                    <br>
                    <p><button class="btn btn-theme" onclick="goInquiry();"><i class="fa fa-envelope"></i> 문의하기</button></p>
                  </div>
                  <!-- /col-md-4 -->
                  <div class="col-md-4 centered">
                    <div class="profile-pic">
                      <p><img src="<%= acmImgList.get(0).getImgPath()%>"></p>
                      <p>
<!--                         <button class="btn btn-theme"><i class="fa fa-check"></i> Follow</button>
                        <button class="btn btn-theme02">Add</button> -->
                      </p>
                    </div>
                  </div>
                  <!-- /col-md-4 -->
                </div>
                </div>
                </div>
        <h3><i class="fa fa-angle-right"></i> 통계 조회</h3>
        <!-- page start-->
        
        <div id="morris">
          <div class="row mt">
          
            <div class="col-lg-12">
              <div class="content-panel">
							<h4>
								<i class="fa fa-angle-right"></i> 최근 4개월간 매출
							</h4>
							<div class="panel-body">

								<!--                   <div id="hero-graph" class="graph"></div> -->
								<div id="morrisChart1" class="graph"></div>
								
								
							</div>
						</div>
            </div>
            
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
		  element: 'morrisChart1',
		  // Chart data records -- each entry in this array corresponds to a point on
		  // the chart.
		  data: <%=arr1%>,
		  // The name of the data record attribute that contains x-values.
		  xkey: 'jMonth',
		  // A list of names of data record attributes that contain y-values.
		  ykeys: ['jPrice'],
		  // Labels for the ykeys -- will be displayed when you hover over the
		  // chart.
		  labels: ['price'],
		  xLabels : "month",
		  lineColors:"fd7e14"
		});
		
		
		new Morris.Donut({
			element:'morrisChart2',
			data:<%=arr2%>
			
		});

// 		new Morris.Donut({
			  
// 			  element: 'members-tickets',
			  
// 			  data: [
// 			    { label: 'Nick', value: 2 },
// 			    { label: 'Justin', value: 5 },
// 			    { label: 'Amber', value: 3 },
// 			    { label: 'Dan', value: 3 },
// 			    { label: 'Rich', value: 4 }
// 			  ]
			  
// 			});
		
		
</script>
        <%@ include file="../../../views/adminowner/common/footer.jsp" %>
      <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery/jquery.min.js"></script>
	  <script class="include" type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.dcjqaccordion.2.7.js"></script>
	  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/raphael/raphael.min.js"></script>
	  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/morris/morris.min.js"></script>
	  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/morris-conf.js"></script>
 </body>
</html>