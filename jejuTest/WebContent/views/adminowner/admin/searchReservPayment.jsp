<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import=" java.util.* ,payment.model.vo.Payment,adminowner.admin.model.vo.*,reservation.model.vo.*"%>
<%
	ArrayList<Payment> pList =(ArrayList<Payment>)request.getAttribute("pList");
	PageInfo pPi = (PageInfo)request.getAttribute("pPi");
	
	int pListCount = pPi.getListCount();
	int pCurrentPage = pPi.getCurrentPage();
	int pMaxPage = pPi.getMaxPage();
	int pStartPage = pPi.getStartPage();
	int pEndPage = pPi.getEndPage();
	
	ArrayList<Reservation> rList = (ArrayList<Reservation>)request.getAttribute("rList");
	PageInfo rPi = (PageInfo)request.getAttribute("rPi");
	
	int rListCount = rPi.getListCount();
	int rCurrentPage = rPi.getCurrentPage();
	int rMaxPage = rPi.getMaxPage();
	int rStartPage = rPi.getStartPage();
	int rEndPage = rPi.getEndPage();

%>
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
	<script>
		$(function(){
			console.log(<%=rCurrentPage%>);
			if(<%=rCurrentPage%> > 1){
		 		$('#li2').attr('class','active');
		 		$('#reservationList').attr('class','active');
				
		 		$('#li1').removeAttr('class','active');
		 		$('#paymentList').removeAttr('class','active');
	
		 		$('#hide1').hide();
		 	};
			
		});
		function fn1(){
			console.log("fn1");
			$('#hide1').show();
			$('#hide2').hide();
		}
		function fn2(){
			console.log("fn2");
			$('#hide1').hide();
			$('#hide2').show();
			
		}
	</script>
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
									
									<li id="li1" class="active">
									<a data-toggle="tab" onclick="fn1();" href="#paymentList" class="contact-map">결제 조회</a>
									</li>
									
									<li id="li2" >
									<a data-toggle="tab" onclick="fn2();"href="#reservationList">예약 조회</a>
									
									</li>
								</ul>

							</div>
							<!-- /panel-heading -->
							<div class="panel-body">
								<div class="tab-content">
								
									<div id="paymentList" class="tab-pane active">
										<div class="col-md-12 mt">
											<div id="hide1" class="content-panel">
												<table id="myTable1" class="table table-bordered display"
													style="font-size: 15px;">
													<thead>
														<tr>
															<th>결제 번호</th>
															<th>예약 번호</th>
															<th>결제 금액</th>
															<th>승인 번호</th>
															<th>결제 수단</th>
															<th>결제 취소</th>
															<th>결제일</th>
															<th>결체 취소일</th>
														</tr>
													</thead>
													<tbody>
														<%if(pList.isEmpty()){ %>
														<tr>
															<td colspan="8">비이이이이임!!!!!!</td>
														</tr>
														<%}else{ %>

														<%for(Payment p : pList){ %>
														<tr>
															<td><%=p.getPayPrice() %></td>
															<td><%=p.getReservNum() %></td>
															<td><%=p.getPayPrice() %></td>
															<td><%=p.getConfirmNum() %></td>
															<td><%=p.getPayMethod() %></td>
															<td><%=p.getPayCancel() %></td>
															<td><%=p.getPayDate() %></td>
															<td><%=p.getCancelDate() %>
														</tr>
														<%}; %>
														<%}; %>
													</tbody>
												</table>
												<div class="pagingArea" align="right">
													<%if(pCurrentPage == 1){ %>
														<button class="btn btn-default" disabled> &lt; previous </button>
													<%}else{ %>
														<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/goSearchReservPayment.ad?pCurrentPage=<%=pCurrentPage-1%>'">&lt; previous</button>
													<%} %>
													
													<%for(int p = pStartPage; p <= pEndPage; p++){ %>
														<%if(p == pCurrentPage){ %>
															<button class="btn btn-warning" disabled> <%= p %> </button>
														<%}else{ %>
															<button class="btn" onclick="location.href='<%= request.getContextPath() %>/goSearchReservPayment.ad?pCurrentPage=<%= p %>'"> <%= p %> </button>
														<%} %>
													<%} %>
													
													<%if(pCurrentPage == pMaxPage){ %>
														<button class="btn btn-default" disabled> next &gt; </button>
													<%}else { %>
														<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/goSearchReservPayment.ad?pCurrentPage=<%= pCurrentPage+1 %>'">next &gt;</button>
													<%} %>
												</div>
											</div>
										</div>
									</div>
									<!-- /tab-pane -->



									<!-- 									공지사항작성 -->
									<div id="reservationList" class="tab-pane">
										<div class="col-md-12 mt">
											<div id="hide2" class="content-panel">
												<table id="myTable2" class="table table-bordered display"
													style="font-size: 10px;">
													<thead>
														<tr>
															<th>번호</th>
															<th>숙소</th>
															<th>룸</th>
															<th>예약자</th>
															<th>인원</th>
															<th>체크인</th>
															<th>체크아웃</th>
															<th>가격</th>
															<th>예약일</th>
															<th>취소</th>
															<th>취소일</th>
															<th>요구사항</th>
															<th>노쇼</th>
															<th>상태</th>
														</tr>
													</thead>
													<tbody>
														<%if(rList.isEmpty()){ %>
														<tr>
															<td colspan="14">why?</td>
														</tr>
														<%}else{ %>
														<%for(Reservation i : rList){ %>
														<tr>
															<td><%=i.getReservNum() %></td>
															<td><%=i.getAcmName() %></td>
															<td><%=i.getRoomName() %></td>
															<td><%=i.getMemName() %></td>
															<td><%=i.getReservPax() %></td>
															<td><%=i.getCheckInDate() %></td>
															<td><%=i.getCheckOutDate() %></td>
															<td><%=i.getReservPrice() %></td>
															<td><%=i.getReservDate() %></td>
															<td><%=i.getReservCancel() %></td>
															<td><%=i.getCancelDate() %></td>
															<td><%=i.getReservRequire() %></td>
															<td><%=i.getNoShow() %></td>
															<td><%=i.getStatus()%></td>
														</tr>
														<%}; %>
														<%}; %>
													</tbody>
												</table>
												<div class="pagingArea" align="right">
													<%if(rCurrentPage == 1){ %>
														<button class="btn btn-default" disabled> &lt; previous </button>
													<%}else{ %>
														<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/goSearchReservPayment.ad?rCurrentPage=<%=rCurrentPage-1%>'">&lt; previous</button>
													<%} %>
													
													<%for(int p = rStartPage; p <= rEndPage; p++){ %>
														<%if(p == rCurrentPage){ %>
															<button class="btn btn-warning" disabled> <%= p %> </button>
														<%}else{ %>
															<button class="btn" onclick="location.href='<%= request.getContextPath() %>/goSearchReservPayment.ad?rCurrentPage=<%= p %>'"> <%= p %> </button>
														<%} %>
													<%} %>
													
													<%if(rCurrentPage == rMaxPage){ %>
														<button class="btn btn-default" disabled> next &gt; </button>
													<%}else { %>
														<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/goSearchReservPayment.ad?rCurrentPage=<%= rCurrentPage+1 %>'">next &gt;</button>
													<%} %>
												</div>
											</div>
											<!-- /col-lg-8 -->
										</div>
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