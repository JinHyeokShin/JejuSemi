<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
								<h4>1922</h4>
								<h6>FOLLOWERS</h6>
								<h4>290</h4>
								<h6>FOLLOWING</h6>
								<h4>$ 13,980</h4>
								<h6>MONTHLY EARNINGS</h6>
							</div>
						</div>
						<!-- /col-md-4 -->
						<div class="col-md-4 profile-text">
							<h3>Sam Soffes</h3>
							<h6>Main Administrator</h6>
							<p>Contrary to popular belief, Lorem Ipsum is not simply
								random text. It has roots in a piece of classical Latin
								literature from 45 BC.</p>
							<br>
							<p>
								<button class="btn btn-theme">
									<i class="fa fa-envelope"></i> Send Message
								</button>
							</p>
						</div>
						<!-- /col-md-4 -->
						<div class="col-md-4 centered">
							<div class="profile-pic">
								<p>
									<img
										src="<%=request.getContextPath()%>/resources/adminowner/img/ui-sam.jpg"
										class="img-circle">
								</p>
								<p>
									<button class="btn btn-theme">
										<i class="fa fa-check"></i> Follow
									</button>
									<button class="btn btn-theme02">Add</button>
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