<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="adminowner.admin.model.vo.Notice , java.util.*"%>
<%
ArrayList<Notice> nList = (ArrayList<Notice>)request.getAttribute("nList");
// System.out.println(nList);

// Notice nD = (Notice)request.getAttribute("n");

%>
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
												<table class="table table-hover">
													<thead>
														<tr>
															<th width="50px">#</th>
															<th width="250px">공지 제목</th>
															<th width="50px">공지 수정일</th>
															<th width="50px">공지 작성일</th>
															<th width="1px"></th>

														</tr>
													</thead>
													<tbody>
														<%if(nList.isEmpty()){ %>
															<td colspan="4" align="center">공지내역이없습니다!
															</td>
														<%}else{ %> <%int i=0; %> 
															<%for (Notice n : nList){ %> 
																<%i++; %>
																<tr id="noticeList">
																	<td><%=i %></td>
																	<td id="nTitle"><%=n.getnTitle() %></td>
																	<td id="nMDate"><%=n.getnModifyDate() %></td>
																	<td id ="nDate"><%=n.getnDate() %></td> 
																	<input type="hidden" id ="nNum" value="<%=n.getnNum() %>">
<%-- 																	<td id ="nNum"><%=n.getnNum() %></td> --%>
																	
																</tr>
															<%}; %>
														<%}; %>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- /tab-pane -->
<!-- 									공지사항작성 -->
									<div id="noticeWrite" class="tab-pane">
										<div class="row">
											<div class="col-lg-8 col-lg-offset-2 detailed">
												<h4 class="mb">공지 사항 작성</h4>

												<form role="form" class="form-horizontal" method="post"
													action="<%= request.getContextPath() %>/insertNotice.ad">

													<div class="form-group">
														<label class="col-lg-2 control-label">공지제목</label>
														<div class="col-lg-10">
															<input type="text" placeholder="" id="nTitle"
																class="form-control" name="nTitle">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">공지내용</label>
														<div class="col-lg-10">
															<textarea rows="10" cols="30" class="form-control"
																id="ta1" name="nContent"></textarea>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-offset-2 col-lg-10">
															<button class="btn btn-theme04" type="reset">Cancel</button>
															<button class="btn btn-theme" type="submit"
																style="width: 80px;">Save</button>
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
	</section>
	<script>
	$(function(){
		$("#noticeList td").click(function(){
			var nNum = $(this).parent().children().eq(4).val();
			location.href ="<%= request.getContextPath() %>/noticeDetail.ad?nNum=" +nNum;
<%--  			href="<%= request.getContextPath() %>/NoticeDetail.ad" --%>
				
		})
	})


	</script>

</body>
</html>
