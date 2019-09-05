<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.*,reservation.model.vo.*,adminowner.admin.model.vo.*"%>
<%
	ArrayList<Reservation> rList = (ArrayList<Reservation>)request.getAttribute("rList");
	PageInfo rPi = (PageInfo)request.getAttribute("rPi");
	
	int rListCount = rPi.getListCount();
	int rCurrentPage = rPi.getCurrentPage();
	int rMaxPage = rPi.getMaxPage();
	int rStartPage = rPi.getStartPage();
	int rEndPage = rPi.getEndPage();
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert 테스트 here</title>
<style>
/* //fd7e14 */
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

.table table-bordered>buttons {
	background: #fd7e14;
	color: #fd7e14;
}

.content-panel {
	padding: 10px;
}
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>

</style>
</head>
<body>
			<div class="col-lg-12 mt">
				<div class="row content-panel">
					<input type="hidden" id="h1">
					<table id="myTable" class="table table-bordered display" style="font-size: 15px;">
						<thead>
							<tr>
								<th>예약 번호</th>
								<th>숙소</th>
								<th>룸</th>
								<th>예약자</th>
								<th>예약 인원</th>
								<th>체크인</th>
								<th>체크아웃</th>
								<th>가격</th>
								<th>예약일</th>
								<th>취소</th>
								<th>취소일</th>
								<th>요구사항</th>
								<th>노쇼</th>
								<th>예약상태</th>
							</tr>
						</thead>
						<tbody>
						<%if(rList.isEmpty()){ %>
							<tr><td colspan="12">비이이이이임!!!!!!</td></tr>
						<%}else{ %>
						
							<%for(Reservation r : rList){ %>
								<tr>
									<td><%=r.getReservNum() %></td>
									<td><%=r.getAcmName() %></td>
									<td><%=r.getRoomName() %></td>
									<td><%=r.getMemName() %></td>
									<td><%=r.getReservPax() %></td>
									<td><%=r.getCheckInDate() %></td>
									<td><%=r.getCheckOutDate() %></td>
									<td><%=r.getReservPrice() %></td>
									<td><%=r.getReservDate() %></td>
									<td><%=r.getReservCancel() %></td>
									<td><%=r.getCancelDate() %></td>
									<td><%=r.getReservRequire() %></td>
									<td><%=r.getNoShow() %></td>
									<td><%=r.getStatus()%></td>
<!-- 									<td> -->
<%-- 									<input type ="checkbox" data-toggle="toggle" id="susBtn" onclick="tgBtn();" value="sus" data-onstyle="warning" data-on="Y" data-off="N"<%=checked%>> --%>
<!-- 									</td> -->
								</tr>
								<%}; %>
							<%}; %>
						</tbody>
					</table>
<!-- 					<div class="pagingArea" align="right"> -->
<%-- 					<%if(currentPage == 1){ %> --%>
<!-- 						<button class="btn btn-default" disabled> &lt; previous </button> -->
<%-- 					<%}else{ %> --%>
<%-- 						<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/adminSearchMem.ad?currentPage=<%=currentPage-1%>'">&lt; previous</button> --%>
<%-- 					<%} %> --%>
					
<%-- 					<%for(int p = startPage; p <= endPage; p++){ %> --%>
<%-- 						<%if(p == currentPage){ %> --%>
<%-- 							<button class="btn btn-warning" disabled> <%= p %> </button> --%>
<%-- 						<%}else{ %> --%>
<%-- 							<button class="btn" onclick="location.href='<%= request.getContextPath() %>/adminSearchMem.ad?currentPage=<%= p %>'"> <%= p %> </button> --%>
<%-- 						<%} %> --%>
<%-- 					<%} %> --%>
					
<%-- 					<%if(currentPage == maxPage){ %> --%>
<!-- 						<button class="btn btn-default" disabled> next &gt; </button> -->
<%-- 					<%}else { %> --%>
<%-- 						<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/adminSearchMem.ad?currentPage=<%= currentPage+1 %>'">next &gt;</button> --%>
<%-- 					<%} %> --%>
<!-- 					</div> -->
				</div>
			</div>
</body>
</html>