<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<footer class="section footer-section" style="width:100%; height:600px;">
        <div class="container">
          <div class="row mb-4">
            <div class="col-md-3 mb-5" style="font-size:17px;">
              <ul class="list-unstyled link">
<!--                 <li><a href="#">About Us</a></li> -->
                <li><a href="#section-home">Home</a></li>
                <li><a href="#section-about">Recommend</a></li>
               <li><a href="<%=request.getContextPath() %>/tourList.to">Tour Spot</a></li>
              </ul>
            </div>
            <div class="col-md-3 mb-5" style="font-size:17px;">
              <ul class="list-unstyled link">
                <li><a href="<%=request.getContextPath() %>/festival.do">Jeju Festival</a></li>
                <li><a href="<%=request.getContextPath() %>/faq.fq">FAQ</a></li>
                <li><a href="#section-contact">Contact Us</a></li>
<!--                 <li><a href="#">Restaurant</a></li> -->
              </ul>
            </div>
            <div class="col-md-3 mb-5 pr-md-5 contact-info">
              <!-- <li>198 West 21th Street, <br> Suite 721 New York NY 10016</li> -->
              <p><span class="d-block"><span class="ion-ios-location h5 mr-3 text-primary"></span>Address:</span> <span> 서울특별시 강남구 테헤란로<br>14길 6 <br> 남도빌딩 2층, 3층, 4층</span></p>
              <p><span class="d-block"><span class="ion-ios-telephone h5 mr-3 text-primary"></span>Phone:</span> <span> 1544-9970</span></p>
              <p><span class="d-block"><span class="ion-ios-email h5 mr-3 text-primary"></span>Email:</span> <span> admin@jejuboram.com</span></p>
            </div>
            <div class="col-md-3 mb-5">
              <p>Sign up for our newsletter</p>
              <form action="#" class="footer-newsletter">
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Email...">
                  <button type="submit" class="btn"><span class="fa fa-paper-plane"></span></button>
                </div>
              </form>
            </div>
          </div>
          <div class="row pt-5">
            <p class="col-md-8 text-left">
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart text-primary" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >JejuBoram</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
              
            <p class="col-md-4 text-right social">
              <a href="#"><span class="fa fa-tripadvisor"></span></a>
              <a href="#"><span class="fa fa-facebook"></span></a>
              <a href="#"><span class="fa fa-twitter"></span></a>
              <a href="#"><span class="fa fa-linkedin"></span></a>
              <a href="#"><span class="fa fa-vimeo"></span></a>
            </p>
          </div>
        </div>
      </footer>
</body>
</html>