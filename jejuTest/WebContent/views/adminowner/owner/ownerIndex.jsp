<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList, management.model.vo.*"%>
	<%@page import="adminowner.admin.model.vo.Notice"%>
    <% 
    ArrayList<Management> list = (ArrayList<Management>)request.getAttribute("list");
	
    System.out.println(list);
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
 	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	
	ArrayList<Notice> nList = (ArrayList<Notice>)request.getAttribute("nList");
    %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../../../views/adminowner/common/ownerSidebar.jsp" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Come To Jeju -</title>
  <style>
ul.sidebar-menu li a.active1, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
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
.logout{
    cursor: pointer;
}

.profile-pic img {
    width: 60%;
    height: 50%;
    border: 10px solid #f1f2f7;
    margin-top: 20px;
}
textarea{
	resize: none;
}
#noticeList{
cursor:pointer;
}
  </style>
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
        <!-- main content start-->
        <section id="main-content">
          <section class="wrapper site-min-height">
            <div class="row mt">
              <div class="col-lg-12">
                <div class="row content-panel">
                  <div class="col-md-4 profile-text mt mb centered">
                    <div class="right-divider hidden-sm hidden-xs">
                      <h4><%= loginUser.getMemId() %></h4>
                      <h6>ID</h6>
                      <h4><%= loginUser.getMemName()%></h4>
                      <h6>NAME</h6>
                      <h4><%= acm.getAcmPhone() %></h4>
                      <h6>PHONE</h6>
                    </div>
                  </div>
                  <!-- /col-md-4 -->
                  <div class="col-md-4 profile-text">
                    <h3><%= acm.getAcmName() %></h3>
                    <h6><%= loginUser.getMemName() %>님 환영합니다</h6>
                    <p>COME TO JEJU를 이용해주셔서 감사합니다.<br>사용하시다가 불편한 점이나 개선할 점을<br> 문의해주시면 최대한 빠르게 조치하겠습니다.</p>
                    <br>
                    <p><button class="btn btn-theme" onclick="goInquiry();"><i class="fa fa-envelope"></i> 문의하기</button></p>
                  </div>
                  <!-- /col-md-4 -->
                  <div class="col-md-4 centered">
                    <div class="profile-pic">
                      <p><img src="<%= acmImgList.get(0).getImgPath()%>"></p>
                      <p>
<!--                         <button class="btn btn-theme"><i class="fa fa-check"></i> Follow</button>
                        <button class="btn btn-theme02">Add</button> -->
                      </p>
                    </div>
                  </div>
                  <!-- /col-md-4 -->
                </div>
                <!-- /row -->
              </div>
              <!-- /col-lg-12 -->
              <div class="col-lg-12 mt">
                <div class="row content-panel">
                  <div class="panel-heading">
                    <ul class="nav nav-tabs nav-justified">
                      <li class="active">
                        <a data-toggle="tab" href="#overview">공지사항</a>
                      </li>
                      <li>
                        <a data-toggle="tab" href="#contact" class="contact-map">예약 및 후기 확인</a>
                      </li>
                      <li>
                        <a data-toggle="tab" href="#edit"> 숙소 정보 변경</a>
                      </li>
                    </ul>
                  </div>
                  <!-- /panel-heading -->
                  <div class="panel-body">
                    <div class="tab-content">

                      <div id="overview" class="tab-pane active">
                          <div class="col-md-12 mt">
                            <div class="content-panel">
                                <h3><i class="fa fa-angle-right"></i> 공지사항</h3>
                                <hr>
						<table class="table table-hover">
							<thead>
								<tr>
									<th width="50px">#</th>
									<th width="250px">공지 제목</th>
									<th width="50px">공지 수정일</th>
									<th width="50px">공지 작성일</th>
									<th width="1px"></th>
								</tr>
							</thead>
							<tbody>
								<%if(nList.isEmpty()){ %>
								<tr>
									<td colspan="4" align="center">공지내역이없습니다!</td>
								</tr>
								<%}else{ %> <%int i=0; %> 
									<%for (Notice n : nList){ %> 
										<%i++; %>
										<tr id="noticeList">
											<td><%=i %></td>
											<td id="nTitle"><%=n.getnTitle() %></td>
											<td id="nMDate"><%=n.getnModifyDate() %></td>
											<td id ="nDate"><%=n.getnDate() %></td> 
											<input type="hidden" id ="nNum" value="<%=n.getnNum() %>">
										</tr>
									<%}; %>
								<%}; %>
							</tbody>
						</table>
                            </div>
                          </div>
                        <!-- /OVERVIEW -->
                      </div>
                      
                      <div id="contact" class="tab-pane">
                          <div class="col-md-12 mt">
                            <div class="content-panel">
                                <h3><i class="fa fa-angle-right"></i> 예약 관리 게시판</h3>
                                <hr>
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
						<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/page.ow?currentPage=<%=currentPage-1%>'">&lt; previous</button>
					<%} %>
					
					<%for(int p = startPage; p <= endPage; p++){ %>
						<%if(p == currentPage){ %>
							<button class="btn btn-warning" disabled> <%= p %> </button>
						<%}else{ %>
							<button class="btn" onclick="location.href='<%= request.getContextPath() %>/page.ow?currentPage=<%= p %>'"> <%= p %> </button>
						<%} %>
					<%} %>
					
					<%if(currentPage == maxPage){ %>
						<button class="btn btn-default" disabled> next &gt; </button>
					<%}else { %>
						<button class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/page.ow?currentPage=<%= currentPage+1 %>'">next &gt;</button>
					<%} %>
					</div>
                              </div>
                          </div>
                      </div>
                      <!-- /tab-pane -->
                      <div id="edit" class="tab-pane">
                        <div class="row">
                          <div class="col-lg-8 col-lg-offset-2 detailed">
                            <h4 class="mb"> 숙소 정보 변경 </h4>
                            <form action="<%= request.getContextPath() %>/updateAcm.ow" class="form-horizontal">
                              <!-- <div class="form-group">
                                <label class="col-lg-2 control-label"> 대표 이미지 변경</label>
                                <div class="col-lg-6">
                                  <input type="file" id="ImgAcm" name="ImgAcm" class="file-pos">
                                </div>
                              </div> -->
                              <div class="form-group">
                                <label class="col-lg-2 control-label"> 숙소 이름 </label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="changeAcmName" name="changeAcmName" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label"> 숙소 연락처 </label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="changeAcmPhone" name="changeAcmPhone" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label"> 설명 1 </label>
                                <div class="col-lg-10">
                                  <textarea rows="5" cols="30" class="form-control" id="descriptionA" name="descriptionA" placeholder="레스토랑+야외 수영장+아침 식사 가능+24시간 운영 프런트 데스크+매일 하우스키핑+편의점+다국어 구사 가능 직원+무료 WiFi+무료 주차         형식으로 입력해주세요."></textarea>
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label"> 설명2 </label>
                                <div class="col-lg-10">
                                  <textarea rows="5" cols="30" class="form-control" id="descriptionB" name="descriptionB" placeholder="24시간 리셉션+룸 서비스+시설 내 놀이터+전용 욕실+프리미엄 TV 채널+매일 하우스 키핑                											      형식으로 입력해주세요."></textarea>
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                  <button class="btn btn-theme" type="submit">Save</button>
                                  <input type="reset" value="Cancel" class="btn btn-theme04">
                                  <!-- <button class="btn btn-theme04" type="button"  onclick="location.href='#'">Cancel</button> -->
                                </div>
                              </div>
                            </form>
                          </div>
                          <!-- /col-lg-8 -->
                        </div>
                        <!-- /row -->
                      </div>
                      <!-- /tab-pane -->
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
        <%@ include file="../../../views/adminowner/common/footer.jsp" %>
    <!--footer start-->
<!--     <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    footer end-->
  </section>
  	<script>
	$(function(){
		$("#noticeList td").click(function(){
			var nNum = $(this).parent().children().eq(4).val();
			location.href ="<%= request.getContextPath() %>/noticeDetail.ow?nNum=" +nNum;
<%--  			href="<%= request.getContextPath() %>/NoticeDetail.ad" --%>
				
		})
	})
	</script>
</body>
</html>
