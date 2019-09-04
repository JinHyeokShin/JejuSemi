<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList, festival.model.vo.*, festival.model.service.FestivalService" %>

<%
    ArrayList<Festival> list = (ArrayList<Festival>)request.getAttribute("list");
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Project Test MainPage</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/animate.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/aos.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/fancybox.min.css">      
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/fonts/fontawesome/css/font-awesome.min.css">
<!-- Theme Style -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">

<style>
	.travel-menu-tabs .nav-tabs li a.active{
		color:white;
	}

</style>


</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">
	
<%-- 헤더,메뉴바 --%>
<%@ include file="../main/header.jsp" %>

<script>

	$(function(){
		$('html, body').animate( { scrollTop : 750 }, 400 );
	});
</script>

	<section class="section bg-image overlay" style="background-image: url(<%=request.getContextPath()%>/resources/images/recommand.png)">
	<div class="container">
		<div class="row justify-content-center text-center mb-5">
			<div class="col-md-7">
				<h2 class="heading text-white" data-aos="fade-up" style="padding:40px;">제주행사 소식</h2>
				<p data-aos="fade" data-aos-delay="100" class="text-white">
					제주, 얼마나 알아보셨나요? <br> 제주만의 보석 같은 축제가 여러분의 선택을 기다립니다.
				</p>
			</div>
		</div>

		<div class="travel-menu-tabs" data-aos="fade">
			<ul class="nav nav-tabs mb-5" id="myTab" role="tablist">
			
				<li class="nav-item"><a class="nav-link active letter-spacing-2 ll" id="m1-tab" 
					data-toggle="tab" href="#m1" role="tab" aria-controls="m1" aria-selected="true">Jan</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m2-tab" 
					data-toggle="tab" href="#m2" role="tab" aria-controls="m2" aria-selected="false">Feb</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m3-tab" 
					data-toggle="tab" href="#m3" role="tab" aria-controls="m3" aria-selected="false">Mar</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m4-tab" 
					data-toggle="tab" href="#m4" role="tab" aria-controls="m4" aria-selected="false">Apr</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m5-tab"
					 data-toggle="tab" href="#m5" role="tab" aria-controls="m5" aria-selected="false">May</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m6-tab" 
					data-toggle="tab" href="#m6" role="tab" aria-controls="m6" aria-selected="false">Jun</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m7-tab" 
					data-toggle="tab" href="#m7" role="tab" aria-controls="m7" aria-selected="false">Jul</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m8-tab" 
					data-toggle="tab" href="#m8" role="tab" aria-controls="m8" aria-selected="false">Aug</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m9-tab" 
					data-toggle="tab" href="#m9" role="tab" aria-controls="m9" aria-selected="false">Sep</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m10-tab" 
					data-toggle="tab" href="#m10" role="tab" aria-controls="m10" aria-selected="false">Oct</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m11-tab" 
					data-toggle="tab" href="#m11" role="tab" aria-controls="m11" aria-selected="false">Nov</a>
				</li>
				
				<li class="nav-item"><a class="nav-link letter-spacing-2 ll" id="m12-tab" 
					data-toggle="tab" href="#m12" role="tab" aria-controls="m12" aria-selected="false">Dec</a>
				</li>
			</ul>

			<div class="tab-content py-5" id="myTabContent">

				<!-- 1월 -->
				<div class="tab-pane fade show active text-left" id="m1" role="tabpanel" aria-labelledby="m1-tab">
					<div class="row">

						<%for(int i=0; i<3; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center;">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 2월 -->
				<div class="tab-pane fade text-left" id="m2" role="tabpanel" aria-labelledby="m2-tab">
					<div class="row">

						<%for(int i=3; i<6; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid"style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px">
									 	<%=list.get(i).getFestivalName()%>
									</span>
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 3월 -->
				<div class="tab-pane fade text-left" id="m3" role="tabpanel" aria-labelledby="m3-tab">
					<div class="row">

						<%for(int i=6; i<9; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 4월 -->
				<div class="tab-pane fade text-left" id="m4" role="tabpanel" aria-labelledby="m4-tab">
					<div class="row">

						<%for(int i=9; i<12; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 5월 -->
				<div class="tab-pane fade text-left" id="m5" role="tabpanel" aria-labelledby="m5-tab">
					<div class="row">

						<%for(int i=12; i<15; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 6월 -->
				<div class="tab-pane fade text-left" id="m6" role="tabpanel" aria-labelledby="m6-tab">
					<div class="row">

						<%for(int i=15; i<18; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 7월 -->
				<div class="tab-pane fade text-left" id="m7" role="tabpanel" aria-labelledby="m7-tab">
					<div class="row">

						<%for(int i=18; i<21; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 8월 -->
				<div class="tab-pane fade text-left" id="m8" role="tabpanel"
					aria-labelledby="m8-tab">
					<div class="row">

						<%for(int i=21; i<24; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 9월 -->
				<div class="tab-pane fade text-left" id="m9" role="tabpanel"
					aria-labelledby="m9-tab">
					<div class="row">

						<%for(int i=24; i<27; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 10월 -->
				<div class="tab-pane fade text-left" id="m10" role="tabpanel"
					aria-labelledby="m10-tab">
					<div class="row">

						<%for(int i=27; i<30; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 11월 -->
				<div class="tab-pane fade text-left" id="m11" role="tabpanel"
					aria-labelledby="m11-tab">
					<div class="row">

						<%for(int i=30; i<33; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>

					</div>
				</div>

				<!-- 12월 -->
				<div class="tab-pane fade text-left" id="m12" role="tabpanel"
					aria-labelledby="m12-tab">
					<div class="row">

						<%for(int i=33; i<36; i++) {%>
						<% FestivalImg img = new FestivalService().festivalImgView(list.get(i).getFestivalNum());%>

						<div class="col-md-4">
							<div class="travel-menu mb-5" style="height: 530px; background: black; opacity:0.8;">
								<img src="<%=img.getFestivalImgPath()%>" class="img-fluid" style="width: 100%; height: 320px;">
								
								<div style="opacity: 0.8; padding-top: 20px">
								
									<span class="d-block text-primary h4" style="text-align: center; padding: 15px"> 
										<%=list.get(i).getFestivalName()%>
									</span>
									
									<p class="text-white" style="text-align: center">
										<%=list.get(i).getFestivalDescript()%>
									</p>
									
									<p style="padding-top: 5px; text-align: center">
										행사 일정 :
										<%=list.get(i).getFestivalPlan()%>
									</p>
									
								</div>
							</div>
						</div>
						<%} %>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>       

<!-- 풋터  -->
<%@ include file="../main/footer.jsp" %>

<script src="<%=request.getContextPath()%>/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.stellar.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.fancybox.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.easing.1.3.js"></script>     
<script src="<%= request.getContextPath() %>/resources/js/aos.js"></script>      
<script src="<%= request.getContextPath() %>/resources/js/bootstrap-datepicker.js"></script> 
<script src="<%= request.getContextPath() %>/resources/js/jquery.timepicker.min.js"></script> 
<script src="<%= request.getContextPath() %>/resources/js/main.js"></script> 
      
</body>
</html>