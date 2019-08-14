<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
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
}
ul.sidebar-menu li ul.sub li.active a {
    color: #fd7e14;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
    display: block;
}
  </style>

<%--   <!-- Favicons -->
  <link href="<%= request.getContextPath() %>/resources/adminowner/img/favicon.png" rel="icon">
  <link href="<%= request.getContextPath() %>/resources/adminowner/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="<%= request.getContextPath() %>/resources/adminowner/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="<%= request.getContextPath() %>/resources/adminowner/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/adminowner/css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/adminowner/lib/gritter/css/jquery.gritter.css" />
  <link href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
  <link href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
  <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/DT_bootstrap.css" />
  <!-- Custom styles for this template -->
  <link href="<%= request.getContextPath() %>/resources/adminowner/css/style.css" rel="stylesheet">
  <link href="<%= request.getContextPath() %>/resources/adminowner/css/style-responsive.css" rel="stylesheet">
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/chart-master/Chart.js"></script>
  <script type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/js/DT_bootstrap.js"></script> --%>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <%@ include file="../../../views/adminowner/common/sidebar.jsp" %>
   <%--  <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>Come To<span> Jeju</span></b></a>
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
          <li><a class="logout" href="../1_user/index.html">Logout</a></li>
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
            <p class="centered"><a href="profile.html"><img src="<%= request.getContextPath() %>/resources/adminowner/img/ui-sam.jpg" class="img-circle" width="80"></a></p>
            <h5 class="centered">Sam Soffes</h5>
            <li class="mt">
              <a class="active" href="index.html">
                <i class="fa fa-dashboard"></i>
                <span>Dashboard</span>
                </a>
            </li>
            <li class="sub-menu">
              <a href="javascript:;">
                <i class="fa fa-desktop"></i>
                <span>숙소 관리</span>
                </a>
              <ul class="sub">
                <li><a href="#">숙소 후기 관리</a></li>
                <li><a href="calendar.html">숙소 예약 관리</a></li>
                <li><a href="morris.html">고객 이용 통계 조회</a></li>
                <!-- <li><a href="font_awesome.html">Font Awesome</a></li> -->
              </ul>
            </li>
            <li>
                <a href="pricing_table.html">
                  <i class="fa fa-envelope"></i>
                  <span>파워 등록 !</span>
                  <span class="label label-theme pull-right mail-info">2</span>
                  </a>
            </li>
            <li>
                <a href="contactform.html">
                  <i class="fa fa-envelope"></i>
                  <span>문의하기</span>
                  <span class="label label-theme pull-right mail-info">2</span>
                  </a>
            </li>
          </ul>
          <!-- sidebar menu end-->
        </div>
      </aside>
    <!--sidebar end--> --%>
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
                      <h4>1922</h4>
                      <h6>FOLLOWERS</h6>
                      <h4>290</h4>
                      <h6>FOLLOWING</h6>
                      <h4>$ 13,980</h4>
                      <h6>MONTHLY EARNINGS</h6>
                    </div>
                  </div>
                  <!-- /col-md-4 -->
                  <div class="col-md-4 profile-text">
                    <h3>Sam Soffes</h3>
                    <h6>Main Administrator</h6>
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p>
                    <br>
                    <p><button class="btn btn-theme"><i class="fa fa-envelope"></i> Send Message</button></p>
                  </div>
                  <!-- /col-md-4 -->
                  <div class="col-md-4 centered">
                    <div class="profile-pic">
                      <p><img src="<%= request.getContextPath() %>/resources/adminowner/img/ui-sam.jpg" class="img-circle"></p>
                      <p>
                        <button class="btn btn-theme"><i class="fa fa-check"></i> Follow</button>
                        <button class="btn btn-theme02">Add</button>
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
                        <a data-toggle="tab" href="#overview">Overview</a>
                      </li>
                      <li>
                        <a data-toggle="tab" href="#contact" class="contact-map">Contact</a>
                      </li>
                      <li>
                        <a data-toggle="tab" href="#edit">Edit Profile</a>
                      </li>
                    </ul>
                  </div>
                  <!-- /panel-heading -->
                  <div class="panel-body">
                    <div class="tab-content">

                      <div id="overview" class="tab-pane active">
                          <div class="col-md-12 mt">
                            <div class="content-panel">
                              <table class="table table-hover">
                                <h3><i class="fa fa-angle-right"></i> 안녕 Table</h3>
                                <hr>
                                <thead>
                                  <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Username</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td>1</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                  </tr>
                                  <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                  </tr>
                                  <tr>
                                    <td>3</td>
                                    <td>Simon</td>
                                    <td>Mosa</td>
                                    <td>@twitter</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                          </div>
                          <div class="col-md-12 mt">
                            <div class="content-panel">
                              <table class="table table-hover">
                                <h3><i class="fa fa-angle-right"></i>안뇽 Table</h3>
                                <hr>
                                <thead>
                                  <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Username</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td>1</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                  </tr>
                                  <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                  </tr>
                                  <tr>
                                    <td>3</td>
                                    <td>Simon</td>
                                    <td>Mosa</td>
                                    <td>@twitter</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                          </div>
                        <!-- /OVERVIEW -->
                      </div>



                      <!-- /tab-pane -->
                      <div id="contact" class="tab-pane">
                          <div class="col-md-12 mt">
                            <div class="content-panel">
                                <h3><i class="fa fa-angle-right"></i> Advanced Table Example</h3>
                                  <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                                      <thead>
                                        <tr>
                                          <th>Rendering engine</th>
                                          <th>Browser</th>
                                          <th class="hidden-phone">Platform(s)</th>
                                          <th class="hidden-phone">Engine version</th>
                                          <th class="hidden-phone">CSS grade</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr class="gradeX">
                                          <td>Trident</td>
                                          <td>Internet Explorer 4.0</td>
                                          <td class="hidden-phone">Win 95+</td>
                                          <td class="center hidden-phone">4</td>
                                          <td class="center hidden-phone">X</td>
                                        </tr>
                                        <tr class="gradeC">
                                          <td>Trident</td>
                                          <td>Internet Explorer 5.0</td>
                                          <td class="hidden-phone">Win 95+</td>
                                          <td class="center hidden-phone">5</td>
                                          <td class="center hidden-phone">C</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Trident</td>
                                          <td>Internet Explorer 5.5</td>
                                          <td class="hidden-phone">Win 95+</td>
                                          <td class="center hidden-phone">5.5</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Trident</td>
                                          <td>Internet Explorer 6</td>
                                          <td class="hidden-phone">Win 98+</td>
                                          <td class="center hidden-phone">6</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Trident</td>
                                          <td>Internet Explorer 7</td>
                                          <td class="hidden-phone">Win XP SP2+</td>
                                          <td class="center hidden-phone">7</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Trident</td>
                                          <td>AOL browser (AOL desktop)</td>
                                          <td class="hidden-phone">Win XP</td>
                                          <td class="center hidden-phone">6</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Firefox 1.0</td>
                                          <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                          <td class="center hidden-phone">1.7</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Firefox 1.5</td>
                                          <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                          <td class="center hidden-phone">1.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Firefox 2.0</td>
                                          <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                          <td class="center hidden-phone">1.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Firefox 3.0</td>
                                          <td class="hidden-phone">Win 2k+ / OSX.3+</td>
                                          <td class="center hidden-phone">1.9</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Camino 1.0</td>
                                          <td class="hidden-phone">OSX.2+</td>
                                          <td class="center hidden-phone">1.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Camino 1.5</td>
                                          <td class="hidden-phone">OSX.3+</td>
                                          <td class="center hidden-phone">1.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Netscape 7.2</td>
                                          <td class="hidden-phone">Win 95+ / Mac OS 8.6-9.2</td>
                                          <td class="center hidden-phone">1.7</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Netscape Browser 8</td>
                                          <td class="hidden-phone">Win 98SE+</td>
                                          <td class="center hidden-phone">1.7</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Netscape Navigator 9</td>
                                          <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                          <td class="center hidden-phone">1.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.0</td>
                                          <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                          <td class="center hidden-phone">1</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.1</td>
                                          <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                          <td class="center hidden-phone">1.1</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.2</td>
                                          <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                          <td class="center hidden-phone">1.2</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.3</td>
                                          <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                          <td class="center hidden-phone">1.3</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.4</td>
                                          <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                          <td class="center hidden-phone">1.4</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.5</td>
                                          <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                          <td class="center hidden-phone">1.5</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.6</td>
                                          <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                          <td class="center hidden-phone">1.6</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.7</td>
                                          <td class="hidden-phone">Win 98+ / OSX.1+</td>
                                          <td class="center hidden-phone">1.7</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Mozilla 1.8</td>
                                          <td class="hidden-phone">Win 98+ / OSX.1+</td>
                                          <td class="center hidden-phone">1.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Seamonkey 1.1</td>
                                          <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                          <td class="center hidden-phone">1.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Gecko</td>
                                          <td>Epiphany 2.20</td>
                                          <td class="hidden-phone">Gnome</td>
                                          <td class="center hidden-phone">1.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Webkit</td>
                                          <td>Safari 1.2</td>
                                          <td class="hidden-phone">OSX.3</td>
                                          <td class="center hidden-phone">125.5</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Webkit</td>
                                          <td>Safari 1.3</td>
                                          <td class="hidden-phone">OSX.3</td>
                                          <td class="center hidden-phone">312.8</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Webkit</td>
                                          <td>Safari 2.0</td>
                                          <td class="hidden-phone">OSX.4+</td>
                                          <td class="center hidden-phone">419.3</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Webkit</td>
                                          <td>Safari 3.0</td>
                                          <td class="hidden-phone">OSX.4+</td>
                                          <td class="center hidden-phone">522.1</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Webkit</td>
                                          <td>OmniWeb 5.5</td>
                                          <td class="hidden-phone">OSX.4+</td>
                                          <td class="center hidden-phone">420</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Webkit</td>
                                          <td>iPod Touch / iPhone</td>
                                          <td class="hidden-phone">iPod</td>
                                          <td class="center hidden-phone">420.1</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Webkit</td>
                                          <td>S60</td>
                                          <td class="hidden-phone">S60</td>
                                          <td class="center hidden-phone">413</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Opera 7.0</td>
                                          <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Opera 7.5</td>
                                          <td class="hidden-phone">Win 95+ / OSX.2+</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Opera 8.0</td>
                                          <td class="hidden-phone">Win 95+ / OSX.2+</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Opera 8.5</td>
                                          <td class="hidden-phone">Win 95+ / OSX.2+</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Opera 9.0</td>
                                          <td class="hidden-phone">Win 95+ / OSX.3+</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Opera 9.2</td>
                                          <td class="hidden-phone">Win 88+ / OSX.3+</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Opera 9.5</td>
                                          <td class="hidden-phone">Win 88+ / OSX.3+</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Opera for Wii</td>
                                          <td class="hidden-phone">Wii</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Nokia N800</td>
                                          <td class="hidden-phone">N800</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Presto</td>
                                          <td>Nintendo DS browser</td>
                                          <td class="hidden-phone">Nintendo DS</td>
                                          <td class="center hidden-phone">8.5</td>
                                          <td class="center hidden-phone">C/A<sup>1</sup></td>
                                        </tr>
                                        <tr class="gradeC">
                                          <td>KHTML</td>
                                          <td>Konqureror 3.1</td>
                                          <td class="hidden-phone">KDE 3.1</td>
                                          <td class="center hidden-phone">3.1</td>
                                          <td class="center hidden-phone">C</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>KHTML</td>
                                          <td>Konqureror 3.3</td>
                                          <td class="hidden-phone">KDE 3.3</td>
                                          <td class="center hidden-phone">3.3</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>KHTML</td>
                                          <td>Konqureror 3.5</td>
                                          <td class="hidden-phone">KDE 3.5</td>
                                          <td class="center hidden-phone">3.5</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeX">
                                          <td>Tasman</td>
                                          <td>Internet Explorer 4.5</td>
                                          <td class="hidden-phone">Mac OS 8-9</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">X</td>
                                        </tr>
                                        <tr class="gradeC">
                                          <td>Tasman</td>
                                          <td>Internet Explorer 5.1</td>
                                          <td class="hidden-phone">Mac OS 7.6-9</td>
                                          <td class="center hidden-phone">1</td>
                                          <td class="center hidden-phone">C</td>
                                        </tr>
                                        <tr class="gradeC">
                                          <td>Tasman</td>
                                          <td>Internet Explorer 5.2</td>
                                          <td class="hidden-phone">Mac OS 8-X</td>
                                          <td class="center hidden-phone">1</td>
                                          <td class="center hidden-phone">C</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Misc</td>
                                          <td>NetFront 3.1</td>
                                          <td>Embedded devices</td>
                                          <td class="center">-</td>
                                          <td class="center">C</td>
                                        </tr>
                                        <tr class="gradeA">
                                          <td>Misc</td>
                                          <td>NetFront 3.4</td>
                                          <td class="hidden-phone">Embedded devices</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">A</td>
                                        </tr>
                                        <tr class="gradeX">
                                          <td>Misc</td>
                                          <td>Dillo 0.8</td>
                                          <td class="hidden-phone">Embedded devices</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">X</td>
                                        </tr>
                                        <tr class="gradeX">
                                          <td>Misc</td>
                                          <td>Links</td>
                                          <td class="hidden-phone">Text only</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">X</td>
                                        </tr>
                                        <tr class="gradeX">
                                          <td>Misc</td>
                                          <td>Lynx</td>
                                          <td class="hidden-phone">Text only</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">X</td>
                                        </tr>
                                        <tr class="gradeC">
                                          <td>Misc</td>
                                          <td>IE Mobile</td>
                                          <td class="hidden-phone">Windows Mobile 6</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">C</td>
                                        </tr>
                                        <tr class="gradeC">
                                          <td>Misc</td>
                                          <td>PSP browser</td>
                                          <td class="hidden-phone">PSP</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">C</td>
                                        </tr>
                                        <tr class="gradeU">
                                          <td>Other browsers</td>
                                          <td>All others</td>
                                          <td class="hidden-phone">-</td>
                                          <td class="center hidden-phone">-</td>
                                          <td class="center hidden-phone">U</td>
                                        </tr>
                                      </tbody>
                                    </table>

                              </div>
                          </div>
                      </div>
                      <!-- /tab-pane -->
                      <div id="edit" class="tab-pane">
                        <div class="row">
                          <div class="col-lg-8 col-lg-offset-2 detailed">
                            <h4 class="mb">Personal Information</h4>
                            <form role="form" class="form-horizontal">
                              <div class="form-group">
                                <label class="col-lg-2 control-label"> Avatar</label>
                                <div class="col-lg-6">
                                  <input type="file" id="exampleInputFile" class="file-pos">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Company</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="c-name" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Lives In</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="lives-in" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Country</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="country" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Description</label>
                                <div class="col-lg-10">
                                  <textarea rows="10" cols="30" class="form-control" id="" name=""></textarea>
                                </div>
                              </div>
                            </form>
                          </div>
                          <div class="col-lg-8 col-lg-offset-2 detailed mt">
                            <h4 class="mb">Contact Information</h4>
                            <form role="form" class="form-horizontal">
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Address 1</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="addr1" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Address 2</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="addr2" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Phone</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="phone" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Cell</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="cell" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Email</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="email" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-2 control-label">Skype</label>
                                <div class="col-lg-6">
                                  <input type="text" placeholder=" " id="skype" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                  <button class="btn btn-theme" type="submit">Save</button>
                                  <button class="btn btn-theme04" type="button">Cancel</button>
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
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
<%--   <!-- js placed at the end of the document so the pages load faster -->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery/jquery.min.js"></script>

  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/bootstrap/js/bootstrap.min.js"></script>
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
  <!--script for this page-->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/sparkline-chart.js"></script>
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/zabuto_calendar.js"></script>
  <script type="text/javascript">
      function fnFormatDetails(oTable, nTr) {
      var aData = oTable.fnGetData(nTr);
      var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
      sOut += '<tr><td>Rendering engine:</td><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
      sOut += '<tr><td>Link to source:</td><td>Could provide a link here</td></tr>';
      sOut += '<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>';
      sOut += '</table>';

      return sOut;
    }

    $(document).ready(function() {
      /*
       * Insert a 'details' column to the table
       */
      var nCloneTh = document.createElement('th');
      var nCloneTd = document.createElement('td');
      nCloneTd.innerHTML = '<img src="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/images/details_open.png">';
      nCloneTd.className = "center";

      $('#hidden-table-info thead tr').each(function() {
        this.insertBefore(nCloneTh, this.childNodes[0]);
      });

      $('#hidden-table-info tbody tr').each(function() {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
      });

      /*
       * Initialse DataTables, with no sorting on the 'details' column
       */
      var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [{
          "bSortable": false,
          "aTargets": [0]
        }],
        "aaSorting": [
          [1, 'asc']
        ]
      });

      /* Add event listener for opening and closing details
       * Note that the indicator for showing which row is open is not controlled by DataTables,
       * rather it is done here
       */
      $('#hidden-table-info tbody td img').live('click', function() {
        var nTr = $(this).parents('tr')[0];
        if (oTable.fnIsOpen(nTr)) {
          /* This row is already open - close it */
          this.src = "<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/media/images/details_open.png";
          oTable.fnClose(nTr);
        } else {
          /* Open this row */
          this.src = "<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/images/details_close.png";
          oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
        }
      });
    });
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: '관리자님 반갑습니다!',
        // (string | mandatory) the text inside the notification
        text: '오늘도 화이팅!',
        // (string | optional) the image to display on the left
        image: '<%= request.getContextPath() %>/resources/adminowner/img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  </script> --%>
</body>
</html>
