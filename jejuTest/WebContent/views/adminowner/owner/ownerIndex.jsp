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
.logout{
    cursor: pointer;
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
                      <h4><%= loginUser.getMemPhone() %></h4>
                      <h6>PHONE</h6>
                    </div>
                  </div>
                  <!-- /col-md-4 -->
                  <div class="col-md-4 profile-text">
                    <h3><%= acmName %></h3>
                    <h6><%= loginUser.getMemName() %>님 환영합니다</h6>
                    <p>COME TO JEJU를 이용해주셔서 감사합니다.<br>사용하시다가 불편한 점이나 개선할 점을<br> 문의해주시면 최대한 빠르게 조치하겠습니다.</p>
                    <br>
                    <p><button class="btn btn-theme" onclick="goInquiry();"><i class="fa fa-envelope"></i> 문의하기</button></p>
                  </div>
                  <!-- /col-md-4 -->
                  <div class="col-md-4 centered">
                    <div class="profile-pic">
                      <p><img src="<%= request.getContextPath() %>/resources/adminowner/img/ui-sam.jpg" class="img-circle"></p>
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
</body>
</html>
