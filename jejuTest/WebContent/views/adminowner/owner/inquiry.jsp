<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../../views/adminowner/common/ownerSidebar.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  ul.sidebar-menu li a.active6, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
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
textarea {
  resize: none;
}
/* ul.sidebar-menu li ul.sub li.active a {
    color: #fd7e14;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
    display: block;
    cursor: pointer;
} */
  </style>
</head>
<body>
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 문의하기</h3>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="row mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">관리자에게 문의하기</h4>
            <div id="message"></div>
            <form class="contact-form" role="form" action="inquiry.we" method="POST">

              <div class="form-group">
                <input type="text" name="name" class="form-control" id="contact-name" value="<%= acm.getAcmName() %>" data-msg="Please enter at least 4 chars" readonly>
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <input type="email" name="email" class="form-control" id="contact-email" value="<%= loginUser.getMemId() %>" data-rule="email" data-msg="Please enter a valid email" readonly>
                <div class="validate"></div>
              </div>

              <div class="form-group">
                <textarea class="form-control" name="message" id="contact-message" placeholder="문의 내용" rows="7" data-rule="required" data-msg="문의 내용을 작성해주십시오." resize:none;></textarea>
                <div class="validate"></div>
              </div>

              <div class="loading"></div>
              <div class="error-message"></div>
              <div class="sent-message">Your message has been sent. Thank you!</div>

              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">Send Message</button>
              </div>

            </form>
          </div>

          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Contact Details</h4>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            <ul class="contact_details">
              <li><i class="fa fa-envelope-o"></i> info@yoursite.com</li>
              <li><i class="fa fa-phone-square"></i> +34 5565 6555</li>
              <li><i class="fa fa-home"></i> Some Fine Address, 887, Madrid, Spain.</li>
            </ul>
            <!-- contact_details -->
          </div>
        </div>
        <!-- /row -->


        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <%@ include file="../../../views/adminowner/common/footer.jsp" %>
    <!-- /MAIN CONTENT -->
<%--   <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery/jquery.min.js"></script> --%>
<%--   <script src="<%= request.getContextPath() %>/resources/adminowner/lib/bootstrap/js/bootstrap.min.js"></script> --%>
  <script class="include" type="text/javascript" src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.scrollTo.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <!--custom switch-->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/jquery.tagsinput.js"></script>

  <!--Contactform Validation-->
  <script src="<%= request.getContextPath() %>/resources/adminowner/lib/php-mail-form/validate.js"></script>
</body>
</html>