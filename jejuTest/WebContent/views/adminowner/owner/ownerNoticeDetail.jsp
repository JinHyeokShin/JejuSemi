<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="adminowner.admin.model.vo.Notice , java.util.*"%>
<%
Notice nD = (Notice)request.getAttribute("n");
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

.panel-heading {
	margin: 15px;
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
				<div class="row mt">
					<!-- /col-lg-12 -->
					<div class="col-lg-12 mt">
						<div class="row content-panel">
					<h3>>>공지사항</h3>
					<hr>
							<!-- /panel-heading -->
							
							
							<div class="panel-body" >
								<div class="tab-content">
<!-- 									공지사항디테일-->
									<div id="noticeDetail"      >
										<div class="row">
											<div class="col-lg-8 col-lg-offset-2 detailed">
												<h4 class="mb">공지 사항 조회</h4>

												<form role="form" class="form-horizontal" method="post" id="form1">
													<input type="hidden" id ="nNum" name ="nNum" value="<%=nD.getnNum() %>">
													<div class="form-group">
														<label class="col-lg-2 control-label">공지제목</label>
														<div class="col-lg-10">
															<input type="text" id="nTitle" name="nTitle"
																class="form-control" value="<%=nD.getnTitle() %>" readonly>
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">공지내용</label>
														<div class="col-lg-10">
															<textarea rows="10" cols="30" class="form-control"
															 id="nContent" name="nContent" readonly><%=nD.getnContent() %></textarea>
														</div>
														
													</div>
													<div class="form-group">
														<div class="col-lg-offset-2 col-lg-10">
															<button class="btn btn-theme04" id="bt1" type="button" onclick="goDashBoard();">돌아가기</button>
														</div>
													</div>
												</form>
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
		
	<script>
  	function goDashBoard(){
  		location.href = "<%= request.getContextPath() %>/page.ow";
  	}
	function fn1(){
		$('#nTitle').removeAttr('readonly');
		$('#nContent').removeAttr('readonly');
		$('#submitBtn').removeAttr('disabled');
	}
	function fn2(){
<%-- 		location.href ="<%= request.getContextPath() %>/adminNotice.ad" --%>
	$('#form1').attr('action','<%= request.getContextPath() %>/noticeDelete.ad');
	$('#form1').submit();
	

	}
	</script>

</body>
</html>