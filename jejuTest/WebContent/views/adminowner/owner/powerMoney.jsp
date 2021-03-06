<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../../views/adminowner/common/ownerSidebar.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  ul.sidebar-menu li a.active5, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
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
      <section class="wrapper site-min-height">
        <div class="row">
          <div class="col-lg-12">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
              <div class="custom-box">
                <div class="servicetitle">
                  <h4>Standard</h4>
                  <hr>
                </div>
                <div class="icn-main-container">
                  <span class="icn-container">&#8361;300,000</span>
                </div>
                <p>30일</p>
                <ul class="pricing">
                  <li>숙소 목록 상단 노출</li>
                  <li>1 Domain</li>
                  <li>2 Sub Domains</li>
                  <li>3 MySQL DBs</li>
                  <li>2 Emails</li>
                  <li>WordPress Installation</li>
                  <li>24/7 Support</li>
                </ul>
                <a class="btn btn-theme" onclick="goPayment(30,300000);">Order Now</a>
              </div>
              <!-- end custombox -->
            </div>
            <!-- end col-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
              <div class="custom-box">
                <div class="servicetitle">
                  <h4>Mega Pack</h4>
                  <hr>
                </div>
                <div class="icn-main-container">
                  <span class="icn-container">&#8361;550,000</span>
                </div>
                <p>60일</p>
                <ul class="pricing">
                  <li>숙소 목록 상단 노출</li>
                  <li>1 Domain</li>
                  <li>2 Sub Domains</li>
                  <li>3 MySQL DBs</li>
                  <li>2 Emails</li>
                  <li>WordPress Installation</li>
                  <li>24/7 Support</li>
                </ul>
                <a class="btn btn-theme" onclick="goPayment(60,550000);">Order Now</a>
              </div>
              <!-- end custombox -->
            </div>
            <!-- end col-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
              <div class="custom-box">
                <div class="servicetitle">
                  <h4>Ultra Pack</h4>
                  <hr>
                </div>
                <div class="icn-main-container">
                  <span class="icn-container">&#8361;800,000</span>
                </div>
                <p>90일</p>
                <ul class="pricing">
                  <li>숙소 목록 상단 노출</li>
                  <li>1 Domain</li>
                  <li>2 Sub Domains</li>
                  <li>3 MySQL DBs</li>
                  <li>2 Emails</li>
                  <li>WordPress Installation</li>
                  <li>24/7 Support</li>
                </ul>
                <a class="btn btn-theme" onclick="goPayment(90,800000);">Order Now</a>
              </div>
              <!-- end custombox -->
            </div>
            <!-- end col-4 -->
          </div>
          <!--  /col-lg-12 -->
        </div>
        <!--  /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <script>
  	function goPayment(flag,price){
  		location.href ="<%= request.getContextPath() %>/payment.ow?flag="+flag +"&price="+price;
  		system.out.println(flag);
  		
  	}
    </script>
        <%@ include file="../../../views/adminowner/common/footer.jsp" %>
</body>
</html>