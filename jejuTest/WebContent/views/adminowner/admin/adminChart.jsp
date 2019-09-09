<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "org.json.simple.*, adminowner.admin.model.vo.*, java.util.*"%>
<%
	JSONArray arr1 = (JSONArray)request.getAttribute("arr1");
	JSONArray arr2 = (JSONArray)request.getAttribute("arr2");
	AdminIndex ai = (AdminIndex)request.getAttribute("ai");
	int uCount =ai.getuCount();
	int oCount =ai.getoCount();
	int pTotal =ai.getpTotal();
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet"	href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
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
        <div class="row mt">
				<div class="col-lg-12">
					<div class="row content-panel">
						<div class="col-md-4 profile-text mt mb centered">
							<div class="right-divider hidden-sm hidden-xs">
								<h4><%=uCount %></h4>
								<h6>유저 수</h6>
								<h4><%=oCount %></h4>
								<h6>숙소 수</h6>
								<h4>
									￦<%=pTotal %></h4>
								<h6>누적 수입</h6>
							</div>
						</div>
						<!-- /col-md-4 -->
						<div class="col-md-4 profile-text">
							<h3><%= loginUser.getMemName() %></h3>
							<h6>Main Administrator</h6>
							<p>Welcome to jeju.</p>
							<br>
							<p>
<!-- 								<button class="btn btn-theme" onclick="acmApproval();"> -->
<!-- 									<i class="fa fa-envelope"></i> 문의 확인 -->
<!-- 								</button> -->
							</p>
						</div>
						<!-- /col-md-4 -->
						<div class="col-md-4 centered">
							<div class="profile-pic">
								<p>
									<img
										src="<%=request.getContextPath()%>/resources/adminowner/img/jejuMain.png"
										class="img-circle">
								</p>
							</div>
						</div>
						<!-- /col-md-4 -->
					</div>
					<!-- /row -->
				</div>
				</div>
        <div id="morris">
          <div class="row mt">
          
            <div class="col-lg-6">
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
            
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 최근 4개월간 숙소유형별 매출</h4>
                <div class="panel-body">
                  <div id="morrisChart2" class="graph"></div>
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
		  element: 'morrisChart1',
		  data: <%=arr1%>,
		  xkey: 'jMonth',
		  ykeys: ['jPrice'],
		  labels: ['price'],
		  xLabels : "month",
		  lineColors:"fd7e14"
		});
		
		
		new Morris.Donut({
			element:'morrisChart2',
			data:<%=arr2%>,
			colors:['#fd7e14','#ffa254','#fcc351','#fad996','#d9ff00']
		});

		
</script>
        <%@ include file="../../../views/adminowner/common/footer.jsp" %>
      
 </body>
</html>