<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="review.model.vo.Review, java.util.*"%>
<%
	ArrayList<Review> rList = (ArrayList<Review>)request.getAttribute("rList");
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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		$.ajax({
			url:"reviewAjax.ad",
			dataType:"json",
			type:"post",
			success:function(data){
				console.log(data);
				var $reviewTable = $("#reviewTable tbody");
				$reviewTable.html("");
				
				$.each(data,function(index,value){
					var $tr = $("<tr>");
					
					var $rNumTd=$("<td>").text(value.rNum);
					var $mNumTd=$("<td>").text(value.mNum);
					var $aNumTd=$("<td>").texmt(value.aNum);
					var $rScoreTd=$("<td>").text(value.rScore);
					var $rContentTd=$("<td>").text(value.rContnet);
					var $rDateTd=$("<td>").text(value.rDate);
					
					$tr.append($rNumTd);
					$tr.append($mNumTd);
					$tr.append($aNumTd);
					$tr.append($rScoreTd);
					$tr.append($rContentTd);
					$tr.append($rDateTd);
					
					$reviewTable.append($tr);
				});
			},
			error:function(){
				console.log("ajax실패");
				console.log(value);
			}
		});
	});
</script>
</head>
<body>
	<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
	<section id="main-content">
		<section class="wrapper site-min-height">
			<h3>
				<i class="fa fa-angle-right"></i> 리뷰 조회
			</h3>
			<br>
			<div class="col-lg-12 mt">
				<div class="row content-panel"></div>
					<table id ="reviewTable" class="table table-bordered">
					<thead>
						<tr>
							<th>리뷰 번호</th>
							<th>회원 이름</th>
							<th>숙소 명</th>
							<th>숙소 점수</th>
							<th>후기 내용</th>
							<th>작성 날짜</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
					</table>
			</div>
		</section>
	</section>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>