<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, management.model.vo.*"%>
    <% 
    ArrayList<Management> list = (ArrayList<Management>)request.getAttribute("list");
    
    System.out.println(list);
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
	<%@ include file="../../../views/adminowner/common/ownerSidebar.jsp"%>
 	<link href='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
	<link href='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
	<link href="<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="<%= request.getContextPath() %>/resources/adminowner/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/DT_bootstrap.css" />
	
	<script src='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/moment.min.js'></script>
	<script src='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/jquery.min.js'></script>
	<script src='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/fullcalendar.min.js'></script>
	<script src='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/ko.js'></script>
	
	
<!-- 	<link href='../fullcalendar.min.css' rel='stylesheet' />
	<link href='../fullcalendar.print.min.css' rel='stylesheet' media='print' />
	<script src='../lib/moment.min.js'></script>
	<script src='../lib/jquery.min.js'></script>
	<script src='../fullcalendar.min.js'></script> -->
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-size: 14px;
	}

	#calendar {
		max-width: 50%;
		margin: 0 auto;
	}
ul.sidebar-menu li a.active2, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
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
  <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> <%= acm.getAcmName() %> 예약 내역 확인</h3>
        <!-- page start-->
        <div class="row mt">
          <aside class="col-lg-12 mt">
            <section class="panel">
              <div class="panel-body">
                <div id="calendar"></div>
              </div>
            </section>
          </aside>
         </div>
        <div class="col-lg-12 mt">
        	<section class="panel">
              <div class="panel-body">
              <div class="content-panel">
      	<h3><i class="fa fa-angle-right"></i> 예약 관리 게시판</h3>
              	<table class="table">
              		<tr>
              			<th>Rownum</th>
              			<th>ROOM_NAME</th>
              			<th>RESERV_PAX</th>
              			<th>CHECKINDATE</th>
              			<th>CHECKOUTDATE</th>
              			<th>예약날짜</th>
              			<th>이름</th>
              			<th>전화번호</th>
              			<th>예약 가격</th>

              		</tr>
              		
              		
					<% if(list.isEmpty()){ %>
					<tr>
						<td colspan="9" align="center">조회된 리스트가 없습니다.</td>
					</tr>
					<%}else{ 
						int i=1;%>
						<%for(Management manage : list) {%>
						 <tr>
							<td><%= i++ %></td>
							<td><%= manage.getRoomName() %></td>
							<td><%= manage.getReservPax() %></td>
							<td><%= manage.getCheckInDate()%></td>
							<td><%= manage.getCheckOutDate()%></td>
							<td><%= manage.getReservDate()%></td>
							<td><%= manage.getMemName()%></td>
							<td><%= manage.getMemPhone()%></td>
							<td><%= manage.getReservPrice()%>원</td> 
						</tr>
						<%} %>
					<%} %>
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
<%-- 		<form>
			<div class="searchArea" align="center">
				<select id="searchCondition" name="searchCondition">
					<option>----</option>
					<option value="memName">이름</option>
					<option value="memPhone">전화번호</option>
				</select>
				<input type="search">
				
				<button class="btn btn-theme" type="submit">검색하기</button>
				<button class="btn btn-theme" onclick="location.href='<%= request.getContextPath() %>/management.ow'">초기화하기</button>
			</div>
		</form> --%>
		</div>
		</div>
		</section>
		
              </div>
        </section>
    </section>

        <%@ include file="../../../views/adminowner/common/footer.jsp" %>
        	<script>
        	
        	function Event(title, start, end){
        		this.title = title;
        		this.start = start;
        		this.end = end;
        	}

	$(document).ready(function() {
		
		var arr = [];
		
		<%for(Management manage : list){%>
		arr.push(new Event(
				
							" <%=manage.getMemName()%>, " + "<%=manage.getMemPhone()%>",
							"<%= manage.getCheckInDate()%>T15:00:00", 
							"<%= manage.getCheckOutDate() %>T13:00:00"));
		<%} %>
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				lang: 'ko',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
/* 			defaultDate: '2019-08-20', */
			navLinks: true, // can click day/week names to navigate views
			editable: false,
			eventLimit: true, // allow "more" link when too many events
			events: arr
		});
		
	});

</script>
</body>
</html>
