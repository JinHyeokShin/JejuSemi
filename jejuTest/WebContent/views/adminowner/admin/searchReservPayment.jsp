<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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

.panel-heading {
	margin: 15px;
}
</style>
</head>
<body>

<section id="container">
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!-- main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div class="row mt">
					<h3>>>공지사항</h3>
					<!-- /col-lg-12 -->
					<div class="col-lg-12 mt">
						<div class="row content-panel">
							<div class="panel-heading">
								<ul class="nav nav-tabs nav-justified">
									<li class="active"><a data-toggle="tab" href="#noticeList"
										class="contact-map">공지사항 조회</a></li>
									<li><a data-toggle="tab" href="#noticeWrite">공지사항 작성</a></li>
								</ul>

							</div>
							<!-- /panel-heading -->
							<div class="panel-body">
								<div class="tab-content">
									<div id="noticeList" class="tab-pane active">
										<div class="col-md-12 mt">
											<div class="content-panel">
<!-- 											인클루드 -->
											
											</div>
										</div>
									</div>
									<!-- /tab-pane -->
									
									
									
<!-- 									공지사항작성 -->
									<div id="noticeWrite" class="tab-pane">
										<div class="row">
											<div class="col-lg-8 col-lg-offset-2 detailed">
<!-- 											인클루드 -->
											</div>
											<!-- /col-lg-8 -->
										</div>
										<!-- /row -->
									</div>
									
									
									
									
									
									
								</div>
								<!-- /tab-content -->
							</div>
							<!-- /panel-body -->
						</div>
						<!-- /col-lg-12 -->
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</section>
			<!-- /wrapper -->
		</section>
		<!-- main content end-->
		<%@ include file="../../../views/adminowner/common/footer.jsp"%>
	</section>

</body>
</html>