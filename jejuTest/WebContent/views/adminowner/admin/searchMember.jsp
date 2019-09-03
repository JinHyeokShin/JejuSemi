<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import=" java.util.* ,member.model.vo.Member"%>
<!-- 	org.json.simple.* , -->
 <%
	ArrayList<Member> list =(ArrayList<Member>)request.getAttribute("list");

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
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
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.bootstrap.min.css"/>
 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.bootstrap.min.js"></script>

<script>	
var num;
$(document).ready(function(){
 			var table = $('#myTable').DataTable({
 			});
});

 		
 	
$(function(){
	$("#myTable input").click(function(){
		num = $(this).closest('tr').children().eq(0).text();
		console.log(num);
		$.ajax({
			url:'memSus.ad',
			type:'post',
			data:{
				mNum:num
			},
			success:function(){
				$(this).closest('tr').children().eq(8).val('N');
			}
		});
	});
});
	
// 	function susBtn(){
// 		console.log("클릭"+num);
// 	};
 	
 	
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
					<input type="hidden" id="h1">
					<table id="myTable" class="table table-bordered display" style="font-size: 15px;">
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
								<th>회원정지</th>
							</tr>
						</thead>
						<tbody>
						<%if(list.isEmpty()){ %>
							
						<%}else{ %>
						<%for(Member m : list){ %>
							<tr>
								<td><%=m.getMemNum() %></td>
								<td><%=m.getMemId() %></td>
								<td><%=m.getMemName() %></td>
								<td><%=m.getMemGender() %></td>
								<td><%=m.getMemPhone() %></td>
								<td><%=m.getNationCode() %></td>
								<td><%=m.getMemPoint() %></td>
								<td><%=m.getMemType() %></td>
								<td><%=m.getMemStatus() %></td>
								<td><%=m.getEnrollDate() %></td>
								<td><%=m.getNoShow() %></td>
								<td>
								<input id="susBtn" style="height: 27px;" type ="button" class="btn btn-theme04" value="정지" >
								</td>
							</tr>
							<%}; %>
							<%}; %>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</section>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>


