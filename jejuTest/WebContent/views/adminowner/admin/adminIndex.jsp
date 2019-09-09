<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="adminowner.admin.model.vo.*, java.util.*"%>
<%
	
	AdminIndex ai = (AdminIndex)request.getAttribute("ai");
	int uCount =ai.getuCount();
	int oCount =ai.getoCount();
	int pTotal =ai.getpTotal();
	ArrayList<Notice> nList = (ArrayList<Notice>)request.getAttribute("nList");
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
<script>
	$(function() {
			$.ajax({
				url : "powerAjaxIndex.ad",
				dataType : "json",
				type : "get",
				success : function(data) {
					console.log("ajax succ");
					var $tableBody = $("#powerTable tbody");
					$tableBody.html("");

					$.each(data, function(index, value) {//data [index]
						var $tr = $("<tr>");//<tr></tr>

						var $pNumTd = $("<td>").text(value.pNum);
						var $acmNameTd = $("<td>").text(value.acmName);
						var $payNumTd = $("<td>").text(value.payNum);
						var $sDateTd = $("<td>").text(value.sDate);
						var $eDateTd = $("<td>").text(value.eDate);
						var $pStatTd = $("<td>").text(value.pStat);
						var $pFlagTd = $("<td>").text(value.pFlag);

						$tr.append($pNumTd);
						$tr.append($acmNameTd);
						$tr.append($payNumTd);
						$tr.append($sDateTd);
						$tr.append($eDateTd);
						$tr.append($pFlagTd);
						$tr.append($pStatTd);

						$tableBody.append($tr);
					});

				}//success end
			});//$ajax end
	});//document redy function end
	
	function acmApproval(){
		location.href ="<%= request.getContextPath() %>/adminChart.ad"
	}
</script>


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
								<h6>숙소 수</h6>
								<h4>
									￦<%=pTotal %></h4>
								<h6>누적 수입</h6>
							</div>
						</div>
						<!-- /col-md-4 -->
						<div class="col-md-4 profile-text">
						<br><br>
							<h3><%= loginUser.getMemName() %></h3>
							<h6>Main Administrator</h6>
							<br><br>
							<p style="font-size: 15px;">Welcome to jeju.</p>
							<br>
							<p>
<!-- 								<button class="btn btn-theme" onclick="acmApproval();"> -->
<!-- 									<i class="fa fa-envelope"></i> 문의 확인 -->
<!-- 								</button> -->
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
								<li class="active"><a data-toggle="tab" href="#noticeList">공지
										사항</a></li>
								<li><a data-toggle="tab" href="#power" class="contact-map">파워
										조회</a></li>
							</ul>
						</div>

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
													<td colspan="4" align="center">공지내역이없습니다!</td>
													<%}else{ %>
													<%int i=0; %>
													<%for (Notice n : nList){ %>
													<%i++; %>
													<%if(i==6){break;} %>
													<tr id="noticeList">
														<td><%=i %></td>
														<td id="nTitle"><%=n.getnTitle() %></td>
														<td id="nMDate"><%=n.getnModifyDate() %></td>
														<td id="nDate"><%=n.getnDate() %></td>
														<input type="hidden" id="nNum" value="<%=n.getnNum() %>">
														<%-- 																	<td id ="nNum"><%=n.getnNum() %></td> --%>

													</tr>
													<%}; %>
													<%}; %>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div id="power" class="tab-pane">
									<div class="col-md-12 mt">
										<div class="row content-panel">
											<table id="powerTable"
												class="table table-hover table-bordered display">
												<thead>
													<tr>
														<th>#</th>
														<th>숙소</th>
														<th>결제번호</th>
														<th>시작일시</th>
														<th>종료일시</th>
														<th>일수</th>
														<th>상태</th>
													</tr>
												</thead>
												<tbody>

												</tbody>
											</table>


										</div>
									</div>
</div>
								</div>
							</div>
						</div>
					</div>
					</div>
		</section>
	</section>

	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>