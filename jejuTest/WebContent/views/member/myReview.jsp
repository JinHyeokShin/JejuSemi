<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.*, reservation.model.vo.*, reservation.model.service.*, accommodation.model.vo.*, 
    							 java.util.*, review.model.service.*, review.model.vo.*"%>
<%
	Member m = (Member)session.getAttribute("loginUser");
	ArrayList<Review> reviewList = (ArrayList<Review>)request.getAttribute("reviewList");
	ArrayList<AcmImg> acmThumbnailImgList = (ArrayList<AcmImg>)request.getAttribute("acmThumbnailImgList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	.myReservContainer{
		padding:50px;
		padding-top: 100px;
		padding-bottom: 100px;
	}
	.ckDate{
		width:50%
	}
	.cancel{
		disabled:ture;
	}
	.review1{
		height:25%;
	}
	.review2{
		height:65%;
	}
	.review3{
		height:10%;
	}
	.reviewWrap{
		padding-top:10px;
		padding-left:380px;
		display:none;
	}
	.review1_1{
		width:70%;
	}
	.review1_2{
		width:30%;
		height: 44px;
		float: right;
		padding-top:4px;
		padding-left:25px;
	}
	.review2{
		padding-top:3px;
	}
	.review3{
		padding-top:4px;
	}
	.starR{
	  background: url('<%= request.getContextPath() %>/resources/images/ico_review.png') no-repeat right 0;
	  background-size: auto 100%;
	  width: 30px;
	  height: 30px;
	  display: inline-block;
	  text-indent: -9999px;
	}
	.starR.on{background-position:0 0;}
	
	#acmImg{
		cursor:pointer;
	}
	

</style>
</head>
<body>
<script>
	$(function(){
		$('html, body').animate( { scrollTop : 750 }, 400 );
	});
</script>
	<%-- 헤더,메뉴바 --%>
	<%@ include file="../main/header.jsp" %>



<div class="test aa">
		<div class="myReservContainer aa container">
		
		<div style="font-size:30px; padding-bottom:8px;">
			<span style="color:#fd7e14; font-weight:bold;"><%=m.getMemName()%></span>님의 리뷰 목록
		</div>
		
		<%for(Review r : reviewList){ %>
		
			<%Acm acm = new ReservationService().reservAcmView(r.getReservNum()); %>
		
				<div class="myReservWrap test aa">
					<div class="ui items">
						<div class="item" style="height: 260px">
							<div class="image" style="width: 370px; padding:10px;">
							<%for(AcmImg img : acmThumbnailImgList) {%>
								
								<%if(acm.getAcmNum() == img.getAcmNum()) {%>
									<input type="hidden" id="acmNum" value="<%=img.getAcmNum() %>">
									<img src="<%=img.getImgPath()%>" id="acmImg" style="height:100%">
								<%} %>								
							<%} %>
							
							</div>
							<div class="content ui input" style="padding-right: 1.5em; padding-top: 13px;">
								<div class="aa">
									<span>예약번호 : <%=r.getReservNum() %></span>
									<div class="aa review1_2 starRev" style="height: 25px;">
										<span class="starR" id="star1">1</span>
									    <span class="starR" id="star2">2</span>
									    <span class="starR" id="star3">3</span>
									    <span class="starR" id="star4">4</span>
									    <span class="starR" id="star5">5</span>
									</div>
									
									<script>
										/* 리뷰에 저장된 별점 만큼 별점 보이게 해주는 메소드 */
										$(function() {
											
											for(var i=1; i <= <%=r.getReviewScore()%>; i++){
												$("#star"+i).addClass("on");
											}
										});
									
									</script>
									
									
								</div>
								<input type="text" id="reviewTitle" value="<%=r.getReviewTitle() %>" size="50" readonly>
								<span style="float: right; margin-top: 13px; margin-right: 10px; font-size: 18px;">작성일 : <span id="reviewDate"><%=r.getReviewDate()%></span></span>
								<br clean="both">
								<div class="ui form" style="margin-top:10px;">
									<textarea rows="6" cols="30" style="resize:none" readonly><%=r.getReviewContent() %></textarea>
								</div>
								
								
							</div>
																
							
						</div>
					</div>
				</div>
					
				<br>
			
			<%} %>
		</div>
	</div>

	<script>
	function getFormatDate(date){ 
		
		var year = date.getFullYear();
		var month = (1 + date.getMonth());
		month = month >= 10 ? month : '0' + month;
		var day = date.getDate();
		day = day >= 10 ? day : '0' + day;
		
		return year + '-' + month + '-' + day; 		
		}
	
	
	$(document).on('click','#acmImg',function(){
		
		var today = new Date();
		var today1 = getFormatDate(today);
		
		var tommorow = new Date();
		tommorow.setDate(today.getDate()+1);
		
		var tommorow1 = getFormatDate(tommorow);
				
		console.log(today1);
		console.log(tommorow1);
		
		location.href="<%=contextPath %>/detail.ac?acmNum="+$('#acmNum').val()+"&checkIn="+today1+"&checkOut="+tommorow1+"&adult=1&child=0";
		
	})

	
	</script>


	<%-- 풋터 --%>
    <%@ include file="../main/footer.jsp" %>

<script src="<%= request.getContextPath() %>/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/popper.min.js"></script>
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