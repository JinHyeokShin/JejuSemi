<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=" member.model.vo.Member"%>
<%
Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  ul.sidebar-menu li a.active, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
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
a{
    cursor: pointer;
}
  </style>
  <!-- 아이콘 -->
  <link href="<%= request.getContextPath() %>/resources/adminowner/img/favicon.png" rel="icon">
  <link href="<%= request.getContextPath() %>/resources/adminowner/img/apple-touch-icon.png" rel="apple-touch-icon">
  
  <!-- jquery 연결 -->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/jquery.min.js"></script>
  <!-- 부트스트랩 css -->
  <link href="<%= request.getContextPath() %>/resources/adminowner/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--아이콘 css-->
  <link href="<%= request.getContextPath() %>/resources/adminowner/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- 전체 디자인 -->
  <link href="<%= request.getContextPath() %>/resources/adminowner/css/style.css" rel="stylesheet">
  <!-- 반응형 -->
  <link href="<%= request.getContextPath() %>/resources/adminowner/css/style-responsive.css" rel="stylesheet">
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/chart-master/Chart.js"></script>
  <!-- 타이틀 옆에있는 버튼 3개 -->
<%--   <script type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/js/DT_bootstrap.js"></script> --%>


</head>
<body>
   <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="확대 / 축소"></div>
      </div>
      <!--logo start-->
      <a href="<%= request.getContextPath() %>/adminIndex.ad" class="logo"><b>Come To<span> Jeju</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-tasks"></i>
              <span class="badge bg-theme">4</span>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 4 pending tasks</p>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Dashio Admin Panel</div>
                    <div class="percent">40%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="sr-only">60% Complete (warning)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Product Development</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Payments Sent</div>
                    <div class="percent">70%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                      <span class="sr-only">70% Complete (Important)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="external">
                <a href="#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-envelope-o"></i>
              <span class="badge bg-theme">5</span>
              </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 5 new messages</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="<%= request.getContextPath() %>/resources/adminowner/img/ui-zac.jpg"></span>
                  <span class="subject">
                  <span class="from">Zac Snider</span>
                  <span class="time">Just now</span>
                  </span>
                  <span class="message">
                  Hi mate, how is everything?
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="<%= request.getContextPath() %>/resources/adminowner/img/ui-divya.jpg"></span>
                  <span class="subject">
                  <span class="from">Divya Manian</span>
                  <span class="time">40 mins.</span>
                  </span>
                  <span class="message">
                  Hi, I need your help with this.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="<%= request.getContextPath() %>/resources/adminowner/img/ui-danro.jpg"></span>
                  <span class="subject">
                  <span class="from">Dan Rogers</span>
                  <span class="time">2 hrs.</span>
                  </span>
                  <span class="message">
                  Love your new Dashboard.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="<%= request.getContextPath() %>/resources/adminowner/img/ui-sherman.jpg"></span>
                  <span class="subject">
                  <span class="from">Dj Sherman</span>
                  <span class="time">4 hrs.</span>
                  </span>
                  <span class="message">
                  Please, answer asap.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-bell-o"></i>
              <span class="badge bg-warning">7</span>
              </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-yellow"></div>
              <li>
                <p class="yellow">You have 7 new notifications</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Server Overloaded.
                  <span class="small italic">4 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-warning"><i class="fa fa-bell"></i></span>
                  Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-success"><i class="fa fa-plus"></i></span>
                  New User Registered.
                  <span class="small italic">3 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- notification dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" onclick="logout();">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
          <!-- sidebar menu start-->
          <ul class="sidebar-menu" id="nav-accordion">
            <p class="centered"><a href="<%= request.getContextPath() %>/adminIndex.ad"><img src="<%= request.getContextPath() %>/resources/adminowner/img/jejuMain.png" class="img-circle" width="80"></a></p>
            <h5 class="centered"><%=loginUser.getMemName() %></h5>
            <li>
              <a class="active1" onclick="goDashBoard();">
                <i class="fa fa-dashboard"></i>
                <span>Dashboard</span>
               </a>
            </li>
            <li>
            <a class="active2" onclick="goNotice();">
                <i class="fa fa-calendar"></i>
                <span>공지사항</span>
            </a>
            </li>
            <li>
            <a class="active3" onclick="goSearchAcm();">
                <i class="fa fa-comment-o"></i>
                <span>숙소 조회</span>
            </a>
            <li>
            <a class="active4" onclick="goSearchMember();">
                <i class="fa fa-users"></i>
                <span>회원 조회</span>
            </a>
            </li>
            <li>
                <a class="active5" onclick="goSearchReview();">
                  <i class="fa fa-bolt"></i>
                  <span>리뷰 조회</span>
                  <!-- <span class="label label-theme pull-right mail-info">2</span> -->
                  </a>
            </li>
            <li>
                <a class="active6" onclick="">
                  <i class="fa fa-envelope"></i>
                  <span>예약 및 결제 조회</span>
                  <!-- <span class="label label-theme pull-right mail-info">2</span> -->
                  </a>
            </li>
            <li>
                <a class="active7 onclick="">
                  <i class="fa fa-envelope"></i>
                  <span>통계 조회</span>
                  <!-- <span class="label label-theme pull-right mail-info">2</span> -->
                  </a>
            </li>
            <li>
                <a class="active8 onclick="">
                  <i class="fa fa-envelope"></i>
                  <span>파워 등록 관리</span>
                  <!-- <span class="label label-theme pull-right mail-info">2</span> -->
                  </a>
            </li>

          </ul>
          <!-- sidebar menu end-->
        </div>
      </aside>
      
      
    <!--sidebar end-->
  <!-- js placed at the end of the document so the pages load faster -->

  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/bootstrap/js/bootstrap.min.js"></script>
<!-- 숙소 관리 눌렀을 때 테이블 토글되는 스크립트 -->
  <script class="include" type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.scrollTo.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.sparkline.js"></script>
  <script type="text/javascript" language="javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/js/DT_bootstrap.js"></script>
  <!--common script for all pages-->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/common-scripts.js"></script>
  <script type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/gritter-conf.js"></script>

  <script>
  	function goDashBoard(){
  		location.href = "<%= request.getContextPath() %>/adminIndex.ad";
  	}
  	function goNotice(){
  		location.href ="<%= request.getContextPath() %>/adminNotice.ad"
  	}
  	function goSearchAcm(){
  		location.href ="<%= request.getContextPath() %>/adminSearchAcm.ad"
  	}
  	function goSearchMember(){
<%--   		location.href ="<%= request.getContextPath() %>/adminSearchMem.ad" --%>
  		location.href ="<%= request.getContextPath() %>/notUsed.ad"
  	}
  	function goSearchReview(){
  		location.href ="<%= request.getContextPath() %>/adminSearchReview.ad"
  	}
  	function goInquiry(){
  		location.href ="../admin/inquiry.jsp"
  	}
  	function logout() {
		location.href="<%= request.getContextPath() %>/logout.me";			
	}
  </script>
</body>
</html>