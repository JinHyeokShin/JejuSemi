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
	jQuery(function($) {
		$("#myTable").DataTable();
	});
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
			<table id="myTable" class="table table-bordered">
				<thead>
					<tr>
						<th>숙소 번호</th>
						<th>숙소 이름</th>
						<th>오너 이름</th>
						<th>숙소 전화번호</th>
						<th>숙소 주소</th>
						<th>숙소 타입</th>
						<th>숙소 구역</th>
						<th>파워 등록</th>
						<th>숙소 상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>acm1</td>
						<td>acm_name</td>
						<td>owner_name</td>
						<td>acm_phone</td>
						<td>acm_address</td>
						<td>acm_type</td>
						<td>acm_power</td>
						<td>acm_status</td>
					</tr>
				</tbody>
			</table>

		</section>
	</section>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>