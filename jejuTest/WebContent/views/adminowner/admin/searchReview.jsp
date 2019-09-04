<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="review.model.vo.Review, java.util.*,adminowner.admin.model.vo.*"%>
<%
	ArrayList<Review> rList = (ArrayList<Review>)request.getAttribute("rList");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
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
.content-panel{
	padding:20px;
}
#tr1 td{
	text-align: center;
}
</style>



<script>
// 	$(function(){
// 		$.ajax({
// 			url:"reviewAjax.ad",
// 			dataType:"json",
// 			type:"post",
// 			success:function(data){
// 				console.log(data);
// 				var $reviewTable = $("#reviewTable tbody");
// 				$reviewTable.html("");
				
// 				$.each(data,function(index,value){
// 					var $tr = $("<tr>");
					
// 					var $rNumTd=$("<td>").text(value.rNum);
// 					var $mNumTd=$("<td>").text(value.mNum);
// 					var $aNumTd=$("<td>").texmt(value.aNum);
// 					var $rScoreTd=$("<td>").text(value.rScore);
// 					var $rContentTd=$("<td>").text(value.rContnet);
// 					var $rDateTd=$("<td>").text(value.rDate);
					
// 					$tr.append($rNumTd);
// 					$tr.append($mNumTd);
// 					$tr.append($aNumTd);
// 					$tr.append($rScoreTd);
// 					$tr.append($rContentTd);
// 					$tr.append($rDateTd);
					
// 					$reviewTable.append($tr);
// 				});
// 			},
// 			error:function(){
// 				console.log("ajax실패");
// 				console.log(value);
// 			}
// 		});
// 	});
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
				<div class="row content-panel">
					<table id="reviewTable" class="table table-bordered">
						<thead>
							<tr id="tr1">
								<th style="width:50px;">번호</th>
								<th style="width:500px;">리뷰제목</th>
								<th>숙소</th>
								<th>점수</th>
								<th>작성자</th>
								<th>예약번호</th>
								<th>작성일</th>
								
							</tr>
						</thead>
						<tbody>
							<%if(rList.isEmpty()){ %>
							<tr><td colspan="8">비이이이임!!!</td></tr>
							<%}else{ %>
								<%for(Review i:rList){ %>
									<tr>
										<td><%=i.getReviewNum() %></td>
										<td><%=i.getMemName() %></td>
										<td><%=i.getAcmName() %></td>
										<td><%=i.getReservNum() %></td>
										<td><%=i.getReviewScore() %></td>
										<td><%=i.getReviewTitle() %></td>
										<td><%=i.getReviewDate() %></td>
									</tr>
								<%} %>
							<%}%>
						</tbody>
					</table>
										<div class="pagingArea" align="right">
					<%if(currentPage == 1){ %>
						<button class="btn btn-default" disabled> &lt; previous </button>
					<%}else{ %>
						<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/adminSearchAcm.ad?currentPage=<%=currentPage-1%>'">&lt; previous</button>
					<%} %>
					<%for(int p = startPage; p <= endPage; p++){ %>
						<%if(p == currentPage){ %>
							<button class="btn btn-warning" disabled> <%= p %> </button>
						<%}else{ %>
							<button class="btn" onclick="location.href='<%= request.getContextPath() %>/adminSearchAcm.ad?currentPage=<%= p %>'"> <%= p %> </button>
						<%} %>
					<%} %>
					<%if(currentPage == maxPage){ %>
						<button class="btn btn-default" disabled> next &gt; </button>
					<%}else { %>
						<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/adminSearchAcm.ad?currentPage=<%= currentPage+1 %>'">next &gt;</button>
					<%} %>
					</div>
				</div>
			</div>
		</section>
	</section>
	<script>
	$(function(){
		$("#reviewTable td").click(function(){
			var rNum = $(this).parent().children().eq(0).text();
			console.log(rNum);
			location.href ="<%= request.getContextPath() %>/reviewDetail.ad?rNum=" +rNum;
<%--  			href="<%= request.getContextPath() %>/NoticeDetail.ad" --%>
				
		})
	})
	</script>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>