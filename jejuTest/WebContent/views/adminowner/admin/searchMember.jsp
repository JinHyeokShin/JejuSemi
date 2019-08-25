<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert 옘병 here</title>
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
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
</head>
<body>
	<section id="main-content">
		<section class="wrapper site-min-height">
			<h3>
				<i class="fa fa-angle-right"></i> 회원조회
			</h3>
			<br>
			<div class="col-lg-12 mt">
				<div class="row content-panel">
					<table id="myTable" class="table table-bordered">
						<thead>
							<tr>
								<th>회원 번호</th>
								<th>회원 아이디</th>
								<th>회원 이름</th>
								<th>회원 성별</th>
								<th>회원 전화번호</th>
								<th>회원 국적</th>
								<th>회원 포인트</th>
								<th>회원 타입</th>
								<th>회원 상태</th>
								<th>회원 가입일</th>
								<th>회원 노쇼</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>user1</td>
								<td>name</td>
								<td>gender</td>
								<td>phone</td>
								<td>nation</td>
								<td>point</td>
								<td>type</td>
								<td>status</td>
								<td>enrolldate</td>
								<td>noshow</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

		</section>
	</section>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>


