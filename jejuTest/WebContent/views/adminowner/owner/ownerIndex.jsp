<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  </style>
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
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
                                <h3><i class="fa fa-angle-right"></i> 안녕 Table</h3>
                                <hr>
                              <table class="table table-hover">
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
                                <h3><i class="fa fa-angle-right"></i>안뇽 Table</h3>
                                <hr>
                              <table class="table table-hover">
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
                                <h3><i class="fa fa-angle-right"></i>게시판만들거임</h3>
                                <hr>
                                  <table class="table table-hover">
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
</body>
</html>
