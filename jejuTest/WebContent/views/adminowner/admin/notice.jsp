<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
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

									<li class="active"><a data-toggle="tab" href="#search"
										class="contact-map">공지사항 조회</a></li>

									<li><a data-toggle="tab" href="#edit">공지사항 작성</a></li>

								</ul>
							</div>
							<!-- /panel-heading -->
							<div class="panel-body">
								<div class="tab-content">
									<div id="search" class="tab-pane active">
										<div class="col-md-12 mt">
											<div class="content-panel">
												<table class="table table-hover">
													<thead>
														<tr>
															<th width="50px">#</th>
															<th width="200px">공지 제목</th>
															<th width="50px">공지 작성자</th>
															<th width="50px">공지 작성일</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>Mark</td>
															<td>Otto</td>
															<td>SYSDATE</td>
														</tr>
														<tr>
															<td>2</td>
															<td>Jacob</td>
															<td>Thornton</td>
															<td>SYSDATE</td>
														</tr>
														<tr>
															<td>3</td>
															<td>Simon</td>
															<td>Mosa</td>
															<td>SYSDATE</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- /tab-pane -->
									<div id="edit" class="tab-pane">
										<div class="row">
											<div class="col-lg-8 col-lg-offset-2 detailed">
												<h4 class="mb">공지 사항 작성</h4>
												<form role="form" class="form-horizontal">
													<div class="form-group">
														<label class="col-lg-2 control-label">공지제목</label>
														<div class="col-lg-10">
															<input type="text" placeholder=" " id="c-name"
																class="form-control">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">공지내용</label>
														<div class="col-lg-10">
															<textarea rows="10" cols="30" class="form-control" id=""
																name=""></textarea>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-offset-2 col-lg-10">
															<button class="btn btn-theme" type="submit">Save</button>
															<button class="btn btn-theme04" type="button">Cancel</button>
														</div>
													</div>
												</form>
											</div>
											<!-- /col-lg-8 -->
										</div>
										<!-- /row -->
									</div>
									<!-- /tab-pane -->
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
		<!--footer start-->
		<!--     <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    footer end-->
	</section>
</body>
</html>
