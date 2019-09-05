<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.*, accommodation.model.vo.*, 
    							 java.util.*, review.model.service.*, review.model.vo.*"%>
<%
	Member m = (Member)session.getAttribute("loginUser");
	ArrayList<WishList> wishList = (ArrayList<WishList>)request.getAttribute("wishList");
	ArrayList<AcmImg> acmThumbnailImgList = (ArrayList<AcmImg>)request.getAttribute("acmThumbnailImgList");
	ArrayList<Acm> acmList = (ArrayList<Acm>)request.getAttribute("acmList");	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	.likeContainer{
		padding-top: 100px;
    	padding-bottom: 100px;    	
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
	
	<div class="aa">
		<div class="likeContainer container aa" style="padding-left:110px; padding-right:110px;">
			<div style="font-size:30px; padding-bottom:8px;">
				<span style="color:#fd7e14; font-weight:bold;"><%=m.getMemName()%></span>님의 찜 목록
			</div>
			
			<div class="ui link cards likecards">
			<!--  -->
			
			<%for(WishList wish : wishList) {%>			
			
			
			  <div class="card">
			    <div class="image">
			    <%for(AcmImg acmImg : acmThumbnailImgList){ %>
			    	<%if(wish.getAcmNum() == acmImg.getAcmNum()){ %>			    
			    	<input type="hidden" id="acmNum" value="<%=acmImg.getAcmNum() %>">
			      	<img src="<%=acmImg.getImgPath()%>">
			      	<%} %>			      
			    <%} %>
			    </div>
			    <div class="content">
			    <%for(Acm acm : acmList){ %>			    
			    	<%if(wish.getAcmNum() == acm.getAcmNum()){ %>
				      <div class="header" style="color:#fd7e14;"><%=acm.getAcmName() %></div>
				      <div class="meta">
				        <a style="font-size:13px;"><%=acm.getAcmAddress() %></a>
				      </div>
			      
			      <div class="description">
			        <%=acm.getAcmGrade()%>성<br><%=acm.getAcmDistrict()%>시
			      </div>
			      	<%} %>
			      <%} %>
			    </div>
			    <div class="extra content">
			      <span class="right floated">
			        <%=wish.getWishDate() %>
			      </span>
			      <span>
			        <i class="user icon"></i>
					찜한날짜
			      </span>
			    </div>
			  </div>
			  
			  
			<%} %>	  
			<!--  -->
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
			
				$(document).on('click','.card',function(){				
					var aNum = $(this).find("#acmNum").val();
					
					var today = new Date();
					var today1 = getFormatDate(today);
					
					var tommorow = new Date();
					tommorow.setDate(today.getDate()+1);
					
					var tommorow1 = getFormatDate(tommorow);
							
					console.log(today1);
					console.log(tommorow1);
					
					location.href="<%=contextPath %>/detail.ac?acmNum="+aNum+"&checkIn="+today1+"&checkOut="+tommorow1+"&adult=1&child=0";
										
				});
			
			</script>
		
		
		
		</div>	<!-- container close -->
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