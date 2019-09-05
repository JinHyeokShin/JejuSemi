<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member m = (Member)session.getAttribute("loginUser");
	
	String memName = m.getMemName();
	
	
%>   

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/list.min.css">
<script src="<%= request.getContextPath() %>/resources/js/semantic.min.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/semantic.min.css">

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/semantic.min.css">
        <script
          src="https://code.jquery.com/jquery-3.1.1.min.js"
          integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
          crossorigin="anonymous"></script>
        <script src="<%= request.getContextPath() %>/resources/js/semantic.min.js"></script>


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
	.myPageContainer{
		padding:50px;
		padding-top: 100px;
		padding-bottom: 100px;
	}
	.myPageWrap{
		border-radius: 20px;
	}	
	.mp01{
		height:30%;
		padding-top: 20px;
		text-indent: 25px;
	}
	.mp02{
		height:70%;
		padding:20px;
	}
	.mp03{
		background: white;
	}
	.content{
		vertical-align: middle;
	}
	.item{
		height:75px;
	}
	.header{
		font-size: 25px;
	}
	.description{
		line-height: 2.2;
    	text-indent: 3px;
	}
</style>
<script>
	$(function(){
		$('html, body').animate( { scrollTop : 750 }, 400 );
	});
</script>

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">
	<%-- 헤더,메뉴바 --%>
	<%@ include file="../main/header.jsp" %>

	<div class="myPageSection aa">
		<div class="container myPageContainer aa">
			<div class="myPageWrap aa bg-light">
				<div class="mp01 aa" style="text-indent: 30px">
					<span style="font-weight:bold; font-size:3em; color:#fd7e14; line-height:initial;"><%=memName %></span>
				</div>
				<div class="mp02 aa">
					<div class="mp03 aa">
						<div class="ui relaxed divided list">
						  <div class="item" style="padding-top: 20px; padding-left: 20px;">
						    
						    <div class="content"">
						      <a class="header">내 정보 수정</a>
						      <div class="description">회원님의 계정 정보를 수정합니다.</div>
						    </div>
						  </div>
						  <div class="item" style="padding-top: 20px; padding-left: 20px;">
						    
						    <div class="content">
						      <a class="header" href="<%=contextPath%>/reserv.me?memNum=<%=m.getMemNum()%>">예약 내역 조회</a>
						      <div class="description">회원님의 모든 예약 내역을 관리합니다.</div>
						    </div>
						  </div>
						  <div class="item" style="padding-top: 20px; padding-left: 20px;">
						    
						    <div class="content">
						      <a class="header" href="<%=contextPath%>/myReview.rv?memNum=<%=m.getMemNum()%>">내가 쓴 리뷰 조회</a>
						      <div class="description">회원님이 작성한 리뷰들을 관리합니다.</div>
						    </div>
						  </div>
						  <div class="item" style="padding-top: 18px; padding-left: 20px;">
						    
						    <div class="content">
						      <a class="header">찜한 숙소</a>
						      <div class="description">즐겨찾기한 숙소들을 조회합니다.</div>
						    </div>
						  </div>
						</div>
					</div>
				</div>
			</div>		
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