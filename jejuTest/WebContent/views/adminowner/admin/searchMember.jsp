<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import=" java.util.* ,member.model.vo.Member,adminowner.admin.model.vo.*"%>
 <%
	ArrayList<Member> list =(ArrayList<Member>)request.getAttribute("list");
 	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	
	AdminIndex ai = (AdminIndex)request.getAttribute("ai");
	int uCount =ai.getuCount();
	int oCount =ai.getoCount();
	int pTotal =ai.getpTotal();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
/* //fd7e14 */
ul.sidebar-menu li a.active4, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus
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
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
</head>
<body>
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
							<h3><%= loginUser.getMemName() %></h3>
							<h6>Main Administrator</h6>
							<p>Welcome to jeju.</p>
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
					<input type="hidden" id="h1">
					<table id="myTable" class="table table-hover table-bordered display" style="font-size: 15px;">
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
								<th>회원 가입일</th>
								<th>회원 노쇼</th>
								<th>회원상태</th>
							</tr>
						</thead>
						<tbody>
						<%if(list.isEmpty()){ %>
							<tr><td colspan="12">비이이이이임!!!!!!</td></tr>
						<%}else{ %>
						
							<%for(Member m : list){ %>
							<% 
								String checked="";
								if(m.getMemStatus().charAt(0) == 'Y'){ 
									checked ="checked";
								}
							%>
								<tr>
									<td><%=m.getMemNum() %></td>
									<td><%=m.getMemId() %></td>
									<td><%=m.getMemName() %></td>
									<td><%=m.getMemGender() %></td>
									<td><%=m.getMemPhone() %></td>
									<td><%=m.getNationCode() %></td>
									<td><%=m.getMemPoint() %></td>
									<td><%=m.getMemType() %></td>
									<td><%=m.getEnrollDate() %></td>
									<td><%=m.getNoShow() %></td>
									<td>
									<input type ="checkbox" data-toggle="toggle" id="susBtn" onclick="tgBtn();" value="sus" data-onstyle="warning" data-on="Y" data-off="N"<%=checked%>>
									</td>
								</tr>
								<%}; %>
							<%}; %>
						</tbody>
					</table>
					<div class="pagingArea" align="right">
					<%if(currentPage == 1){ %>
						<button class="btn btn-default" disabled> &lt; previous </button>
					<%}else{ %>
						<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/adminSearchMem.ad?currentPage=<%=currentPage-1%>'">&lt; previous</button>
					<%} %>
					
					<%for(int p = startPage; p <= endPage; p++){ %>
						<%if(p == currentPage){ %>
							<button class="btn btn-warning" disabled> <%= p %> </button>
						<%}else{ %>
							<button class="btn" onclick="location.href='<%= request.getContextPath() %>/adminSearchMem.ad?currentPage=<%= p %>'"> <%= p %> </button>
						<%} %>
					<%} %>
					
					<%if(currentPage == maxPage){ %>
						<button class="btn btn-default" disabled> next &gt; </button>
					<%}else { %>
						<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/adminSearchMem.ad?currentPage=<%= currentPage+1 %>'">next &gt;</button>
					<%} %>
					</div>
				</div>
			</div>
			</div>
		</section>
	</section>
	<script>
	$(function(){
		$("#myTable input").change(function(){
			var memNum = $(this).closest('tr').children().eq(0).text();
			var ckVal;
			if($(this).is(":checked")){
				ckVal="Y";
			}else{
				ckVal="N";
			}
// 			var susData = {"memNum":memNum, "ckVal":ckVal};
			
			$.ajax({
				url:"memSus.ad",
				type:"post",
				data:{memNum:memNum,ckVal:ckVal},
				success:function(){
					console.log("success");
					$(this).closest('tr').children().eq(8).val(ckVal);
				}
			});
			
		});
	});
	
	</script>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>
</body>
</html>


