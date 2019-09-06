<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="review.model.vo.Review , java.util.*"%>
<%
	Review r = (Review)request.getAttribute("r");
%>

<!DOCTYPE html >
<html>
<head>
<%@ include file="../../../views/adminowner/common/ownerSidebar.jsp"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Come To Jeju -</title>
<style>
ul.sidebar-menu li a.active1, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus
	{
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

ul.sidebar-menu li ul.sub li.active a {
	color: #fd7e14;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	-ms-transition: all 0.3s ease;
	transition: all 0.3s ease;
	display: block;
	cursor: pointer;
}
.content-panel{
	padding:20px;
}
.panel-heading {
	margin: 15px;
}
</style>
</head>
<body>
<section id="main-content">
		<section class="wrapper site-min-height">
			<h3>
				<i class="fa fa-angle-right"></i> 리뷰 조회
			</h3>
			<br>
			<div class="col-lg-12 mt">
				<div class="row content-panel">
					<table id="reviewTable" class="table table-bordered">
						<thead>
							<tr id="tr1">
								<th style="width:50px;">번호</th>
								<th style="width:700px;">리뷰제목</th>
								<th>숙소</th>
								<th>점수</th>
								<th>작성자</th>
								<th>예약번호</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
								<tr>
									<td><%=r.getReviewNum() %></td>
									<td><%=r.getMemName() %></td>
									<td><%=r.getAcmName() %></td>
									<td><%=r.getReservNum() %></td>
									<td><%=r.getReviewScore() %></td>
									<td><%=r.getReviewTitle() %></td>
									<td><%=r.getReviewDate() %></td>
								</tr>
								<tr>
								<td colspan="7" style="font-weight:bold">리뷰 내용</td>
								</tr>
								<tr>
								<td colspan="7"><%=r.getReviewContent() %></td>
								</tr>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</section>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>


</body>
</html>