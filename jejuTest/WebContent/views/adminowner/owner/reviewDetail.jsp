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
ul.sidebar-menu li a.active3, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus
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
.profile-pic img {
    width: 60%;
    height: 50%;
    border: 10px solid #f1f2f7;
    margin-top: 20px;
}
textarea{
resize:none;
}
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
			<br>
			<div class="col-lg-12 mt">
				<div class="row">
					<div class="content-panel">
					<h3><i class="fa fa-angle-right"></i> 리뷰 조회</h3>
					<hr>
				<form role="form" class="form-horizontal" method="post" id="form1" action="<%=request.getContextPath() %>/insertReply.ow">
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
									<td><%=r.getReviewNum() %><input type="hidden" name="reviewNum" value="<%=r.getReviewNum() %>"></td>
									<td><%=r.getReviewTitle() %></td>
									<td><%=r.getAcmName() %></td>
									<td><%=r.getReviewScore() %></td>
									<td><%=r.getMemName() %></td>
									<td><%=r.getReservNum() %></td>
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
						<input type="hidden" id ="nNum" name ="nNum" value="">
						<div class="form-group">
						<h3><i class="fa fa-angle-right"></i> 댓글 달기</h3>
						<hr>
							<div class="col-lg-12">
								<textarea rows="5" cols="5" class="form-control" id="reply" name="reply"></textarea>
							</div>
							
						</div>
						<div class="form-group">
							<div class=" col-lg-12">
								<button class="btn btn-theme04" id="bt1" type="submit">댓글 작성하기</button>
								<button class="btn btn-theme03" id="bt2" type="reset">초기화</button>
								<!-- <button class="btn btn-theme" id="submitBtn" type="submit" disabled style="width: 80px;">Save</button -->
							</div>
						</div>
					</form>
				</div>
			</div>
			</div>
		</section>
	</section>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>