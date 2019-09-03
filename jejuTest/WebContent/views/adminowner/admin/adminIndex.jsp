<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="adminowner.admin.model.vo.AdminIndex"%>
<%
	
	AdminIndex ai = (AdminIndex)request.getAttribute("ai");
	int uCount =ai.getuCount();
	int oCount =ai.getoCount();
	int pTotal =ai.getpTotal();
	
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ComeToJeju Admin</title>
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
</style>
</head>
<body>
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
	
	<section id="main-content">
		<section class="wrapper site-min-height">
			<div class="row mt">
				<div class="col-lg-12">
					<div class="row content-panel">
						<div class="col-md-4 profile-text mt mb centered">
							<div class="right-divider hidden-sm hidden-xs">
								<h4><%=uCount %></h4>
								<h6>유저 수</h6>
								<h4><%=oCount %></h4>
								<h6>사장님 수</h6>
								<h4>&#3861;<%=pTotal %></h4>
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
								<button class="btn btn-theme">
									<i class="fa fa-envelope"></i> 문의 확인
								</button>
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
				<div class="col-lg-12 mt">
				<div class="row content-panel">
					<div class="panel-heading">
						<ul class="nav nav-tabs nav-justified">
							<li class="active"><a data-toggle="tab" href="#overview">Overview</a>
							</li>
							<li><a data-toggle="tab" href="#contact" class="contact-map">Contact</a>
							</li>
							<li><a data-toggle="tab" href="#edit">Edit Profile</a></li>
							<li><a data-toggle="tab" href="#test">test</a>
						</ul>
					</div>



					<table class="table" align="center">
						<tr>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr>
							<td>1</td>
							<td>1</td>
						</tr>
					</table>
				</div>
			</div>
			</div>
		</section>
	</section>

	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>