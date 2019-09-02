<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, accommodation.model.vo.Acm"%>
<%
	ArrayList<Acm> list = (ArrayList<Acm>) request.getAttribute("acmList");
%>
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

.table table-bordered>buttons {
	background: #fd7e14;
	color: #fd7e14;
}
</style>
<link rel="stylesheet"
	href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css" />
<script
	src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
<script>
// 	jQuery(function($) {
// 		$("#myTable").DataTable();
// 	});
</script>
</head>
<body>
	<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
	<section id="main-content">
		<section class="wrapper site-min-height">
			<h3>
				<i class="fa fa-angle-right"></i> 숙소 조회
			</h3>
			<br>
			<div class="col-lg-12 mt">
				<div class="row content-panel">
				 total : <%=list.size() %>
					<table id="myTable" class="table table-bordered">
						<thead>
							<tr>
								<th>숙소 번호</th>
								<th>숙소 이름</th>
								<th>오너 이름</th>
								<th>숙소 전화번호</th>
								<th>숙소 타입</th>
								<th>숙소 등급</th>
								<th>파워 등록</th>
								<th>숙소 상태</th>
								<th>숙소 주소</th>
							</tr>
						</thead>
						<tbody>
							<%
								for (Acm i : list) {
							%>
							<tr>
								<td><%=i.getAcmNum()%></td>
								<td><%=i.getAcmName()%></td>
								<td><%=i.getMemNum()%></td>
								<td><%=i.getAcmPhone()%></td>
								<td><%=i.getAcmType()%></td>
								<td><%=i.getAcmGrade()%></td>
								<td><%=i.getAcmPower()%></td>
								<td><%=i.getStatus()%></td>
								<td><%=i.getAcmAddress()%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</section>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>