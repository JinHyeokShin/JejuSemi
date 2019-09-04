<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.*, reservation.model.vo.*, reservation.model.service.*, accommodation.model.vo.*, java.util.*"%>
    
<%
	Member m = (Member)session.getAttribute("loginUser");
	ArrayList<Reservation> rList = (ArrayList<Reservation>)request.getAttribute("rList");
	ArrayList<AcmImg> acmThumbnailImgList = (ArrayList<AcmImg>)request.getAttribute("acmThumbnailImgList");
%>
<!DOCTYPE html>
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
			<span style="color:#fd7e14; font-weight:bold;"><%=m.getMemName()%></span>님의 예약 내역
		</div>
		
		<%for(Reservation r : rList){ %>
		
			<%Acm acm = new ReservationService().reservAcmView(r.getReservNum()); %>
		
				<div class="myReservWrap test aa">
					<div class="ui items">
						<div class="item" style="height: 260px">
							<div class="image" style="width: 370px; padding:10px;">
							<%for(AcmImg img : acmThumbnailImgList) {%>
								
								<%if(acm.getAcmNum() == img.getAcmNum()) {%>
									<img src="<%=img.getImgPath()%>" style="height:100%">
								<%} %>
								
							<%} %>
							</div>
							<div class="content"
								style="padding-right: 1.5em; padding-top: 10px;">
								<b class="header" style="font-size: 1.5em; color: #fd7e14;"
									id="acmName"><%=acm.getAcmName() %></b>
								<div class="meta" style="margin-top: 0;">
									<span id="acmAdd"><%=acm.getAcmAddress() %></span>
								</div>
								<hr>
								<div class="ckDate dd">
									<b>체크인</b><br>
									<b id="ckIn"><%=r.getCheckInDate()%></b>
								</div>
								<div class="ckDate dd">
									<div class="ckDate dd">
										<b>체크아웃</b><br>
										<b id="ckOut"><%=r.getCheckOutDate()%></b>
									</div>
									<div class="ckDate dd" align="right" style="padding-top: 10px">
									
									
									
										
									</div>									
								</div>
								<br><br><hr>
								<div class="ckDate dd aa">
									<b>결제 가격</b><br>
									<b id="ckIn">&#8361;<%=r.getReservPrice()%></b>
								</div>
								<div class="ckDate dd aa">
									<div class="ckDate dd aa">
										<b>인원</b><br>
										<b><%=r.getReservPax()%>명</b>
									</div>
									<div class="ckDate dd aa" align="right" style="padding-top: 10px">
										
										<input type="hidden" id="reservNum" value="<%=r.getReservNum()%>">
										
									<%
										SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
										Date ckOutDate = sdf.parse(r.getCheckOutDate());
										Date today = new Date();
										
										if(today.getTime()>ckOutDate.getTime()){%>
											
											<button class="ui orange button" id="reviewBtn">리뷰작성</button>
										<%}else{ %>
											<button class="ui blue button" id="cancelBtn" onclick="">예약취소</button>
										<%} %>
										
										<input type="hidden" id="acmNum" value="<%=acm.getAcmNum() %>">
																		
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><br>
			
		<%} %>
		
		<script>
		
			$(document).on('click','#cancelBtn',function(){
				var yoso = $(this);
				alertify.confirm("예약을 취소 하시겠습니까?",function(){
					cancelReserv(yoso);
				  });				
			});
			
		
			function cancelReserv(yoso) {
				$.ajax({
					url:"cancel.re",
					type:"post",
					data:{reservNum:yoso.prev().val()},
					success:function(result){
						yoso.attr('disabled',true);
						yoso.text("취소된 예약");
						yoso.removeClass("blue");
						yoso.addClass("grey");
					}
				});
			}
		
		
		
		</script>

		</div>
	</div>

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