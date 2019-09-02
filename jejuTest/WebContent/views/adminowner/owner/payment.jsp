<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
        <%@ include file="../../../views/adminowner/common/ownerSidebar.jsp" %>
<section id="main-content">
      <section class="wrapper">
        <div class="col-lg-12 mt">
          <div class="row content-panel">
            <div class="col-lg-10 col-lg-offset-1">
              <div class="invoice-body">
                <div class="pull-left">
                  <h1>COMETO JEJU</h1>
                  <address>
                <strong>KH정보교육원 '조장이누구조'.Inc.</strong><br>
                	       서울특별시 강남구 테헤란로 14길 6 남도빌딩 3F<br>
                	       (T: 1544-9970 / F: 02-562-2378)<br>
              </address>
                </div>
                <!-- /pull-left -->
                <div class="pull-right">
                  <h2>30일 / 60일 / 90일</h2>
                </div>
                <!-- /pull-right -->
                <div class="clearfix"></div>
                <br>
                <br>
                <br>
                <div class="row">
                  <div class="col-md-9">
                    <h4><%= loginUser.getMemName() %></h4>
                <address>
                  <strong><%= acm.getAcmName() %></strong><br>
                  		<%= acm.getAcmAddress() %><br>	
            		    <%= acm.getAcmPhone() %>
                </address>
                     </div>
                  <!-- /col-md-9 -->
                  <div class="col-md-3">
                    <br>

                </div>
                <!-- /col-lg-10 -->
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width:60px" class="text-center">(rownum?)</th>
                      <th class="text-left">Standard 30일 패키지/ Mega Pack 60일 패키지/ UltraPack 90일 패키지</th>
                      <th style="width:230px" class="text-right">가격</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="text-center">1</td>
                      <td>Flat Pack Heritage</td>
                      <td class="text-right">$429.00</td>
                    </tr>
                    <tr>
                      <td class="text-center">2</td>
                      <td>Carry On Suitcase</td>
                      <td class="text-right">$300.00</td>
                    </tr>
                    <tr>
                      <td colspan="2" rowspan="6">
                        <h4>Terms and Conditions</h4>
                        <p>Thank you for your business. We do expect payment within 21 days, so please process this invoice within that time. There will be a 1.5% interest charge per month on late invoices.</p>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                      <td class="text-center no-border">
                        <div class="well well-small green"><strong>Total</strong></div>
         			  </td>
         			  <td>
         			   총 가격
         			  </td>
                    </tr>
                    <tr>
                    	<td class="text-right no-border">
                    		<div class="well well-small green" align="center"><strong>결제하기</strong></div>
                    	</td>
                    	<td class="text-right no-border">
                    		<div class="well well-small green" align="center"><strong>카카오 결제하기</strong></div>
                    	</td>
                   	</tr>
                  
                  </tbody>
                </table>
                <br>
                <br>
              </div>
              <!--/col-lg-12 mt -->
      </section>
      <!-- /wrapper -->
    </section>
    <%@ include file="../../../views/adminowner/common/footer.jsp" %>
</body>
</html>