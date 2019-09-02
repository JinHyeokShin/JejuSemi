<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Project Test MainPage</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/animate.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/aos.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/fancybox.min.css">      
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/fonts/fontawesome/css/font-awesome.min.css">
<!-- Theme Style -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">

<style>
          /* The Modal (background) */
          .popModal {
             display: none; /* Hidden by default */
             position: fixed; /* Stay in place */
             z-index: 2; /* Sit on top */
             left: 0;
             top: 0;
             width: 100%; /* Full width */
             height: 100%; /* Full height */
             overflow: hidden; /* Enable scroll if needed */
             background-color: rgb(0,0,0); /* Fallback color */
             background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
         }
     
         /* Modal Content/Box */
         .modal-content {
             background-color: #fefefe;
             margin: 10% auto; /* 15% from the top and centered */
             padding: 20px;
             border: 1px solid #888;
             /* width: 30%; */ /* Could be more or less, depending on screen size */
             width:745px;
        	 height:450px;                        
         }
         /* The Close Button */
         .close {
             color: #aaa;
             float: right;
             font-size: 28px;
             font-weight: bold;
             text-align: right;
         }
         .close:hover,
         .close:focus {
             color: black;
             text-decoration: none;
             cursor: pointer;
         }
         .nav-item{
           cursor: pointer;
         }
         
       </style>


</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">

	<%-- 헤더,메뉴바 --%>
    <%@ include file="views/main/header.jsp" %>
      
      
    <%-- 검색 위젯 --%>
    <%@ include file="views/main/searchWidget.jsp" %>	
      
      
      
	<%-- 메인페이지 내용 --%>
	<section class="py-5 bg-light" id="section-about">
        <div class="container">
        
        
        
          <div class="row justify-content-center text-center mb-5">
        <div class="col-md-7 mb-5">
          <h2 class="heading" data-aos="fade-up">추천/베스트 숙소</h2>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
          <div class="block-2">
            <div class="flipper">
              <div class="front" style="background-image: url(resources/images/testHotel.jpg);">
                <div class="box">
                  <h2>테스트 호텔</h2>
                  <p>게스트하우스</p>
                </div>
              </div>
              <div class="back">
                <!-- back content -->
                <blockquote>
                  <p>숙소가 너무 깨끗하고 사장님이 너무 친절하세요!!</p>
                </blockquote>
                <div class="author d-flex">
                  <div class="image mr-3 align-self-center">
                    <img src="resources/images/person_3.jpg" alt="">
                  </div>
                  <div class="name align-self-center">Will Smith <span class="position">President</span></div>
                </div>
              </div>
            </div>
          </div> <!-- .flip-container -->
        </div>

        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
          <div class="block-2"> <!-- .hover -->
            <div class="flipper">
              <div class="front" style="background-image: url(resources/images/person_1.jpg);">
                <div class="box">
                  <h2>Claire Williams</h2>
                  <p>Business Manager</p>
                </div>
              </div>
              <div class="back">
                <!-- back content -->
                <blockquote>
                  <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                </blockquote>
                <div class="author d-flex">
                  <div class="image mr-3 align-self-center">
                    <img src="resources/images/person_1.jpg" alt="">
                  </div>
                  <div class="name align-self-center">Claire Williams <span class="position">Business Manager</span></div>
                </div>
              </div>
            </div>
          </div> <!-- .flip-container -->
        </div>

        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
          <div class="block-2">
            <div class="flipper">
              <div class="front" style="background-image: url(resources/images/person_2.jpg);">
                <div class="box">
                  <h2>Jane Johnson</h2>
                  <p>Marketing Director</p>
                </div>
              </div>
              <div class="back">
                <!-- back content -->
                <blockquote>
                  <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                </blockquote>
                <div class="author d-flex">
                  <div class="image mr-3 align-self-center">
                    <img src="resources/images/person_2.jpg" alt="">
                  </div>
                  <div class="name align-self-center">Jane Johnson <span class="position">Marketing Director</span></div>
                </div>
              </div>
            </div>
          </div> <!-- .flip-container -->
        </div>


        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
          <div class="block-2">
            <div class="flipper">
              <div class="front" style="background-image: url(resources/images/person_3.jpg);">
                <div class="box">
                  <h2>Will Smith</h2>
                  <p>President</p>
                </div>
              </div>
              <div class="back">
                <!-- back content -->
                <blockquote>
                  <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                </blockquote>
                <div class="author d-flex">
                  <div class="image mr-3 align-self-center">
                    <img src="resources/images/person_3.jpg" alt="">
                  </div>
                  <div class="name align-self-center">Will Smith <span class="position">President</span></div>
                </div>
              </div>
            </div>
          </div> <!-- .flip-container -->
        </div>

        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
          <div class="block-2"> <!-- .hover -->
            <div class="flipper">
              <div class="front" style="background-image: url(resources/images/person_1.jpg);">
                <div class="box">
                  <h2>Claire Williams</h2>
                  <p>Business Manager</p>
                </div>
              </div>
              <div class="back">
                <!-- back content -->
                <blockquote>
                  <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                </blockquote>
                <div class="author d-flex">
                  <div class="image mr-3 align-self-center">
                    <img src="resources/images/person_1.jpg" alt="">
                  </div>
                  <div class="name align-self-center">Claire Williams <span class="position">Business Manager</span></div>
                </div>
              </div>
            </div>
          </div> <!-- .flip-container -->
        </div>

        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
          <div class="block-2">
            <div class="flipper">
              <div class="front" style="background-image: url(resources/images/person_2.jpg);">
                <div class="box">
                  <h2>Jane Johnson</h2>
                  <p>Marketing Director</p>
                </div>
              </div>
              <div class="back">
                <!-- back content -->
                <blockquote>
                  <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                </blockquote>
                <div class="author d-flex">
                  <div class="image mr-3 align-self-center">
                    <img src="resources/images/person_2.jpg" alt="">
                  </div>
                  <div class="name align-self-center">Jane Johnson <span class="position">Marketing Director</span></div>
                </div>
              </div>
            </div>
          </div> <!-- .flip-container -->
        </div>

      </div>
          
          
          
        </div>
      </section>
  
    
    <!-- END .block-2 -->

      <section class="section" id="section-rooms">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
              <h2 class="heading" data-aos="fade-up">인기 숙소</h2>
              <p data-aos="fade-up" data-aos-delay="100">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="resources/images/img_1.jpg" alt="Free website template" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2>Single Room</h2>
                  <span class="text-uppercase letter-spacing-1">90$ / per night</span>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="resources/images/img_2.jpg" alt="Free website template" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2>Family Room</h2>
                  <span class="text-uppercase letter-spacing-1">120$ / per night</span>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="resources/images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2>Presidential Room</h2>
                  <span class="text-uppercase letter-spacing-1">250$ / per night</span>
                </div>
              </a>
            </div>


          </div>
        </div>
      </section>
      
      
     
      
      <!-- END section -->
      <section class="section testimonial-section">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
              <h2 class="heading" data-aos="fade-up">Instagram</h2>
            </div>
          </div>
          <div class="row">
            <div class="js-carousel-2 owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
              
              <div class="testimonial text-center slider-item">
                <div class="author-image mb-3">
                  <img src="resources/images/person_1.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                </div>
                <blockquote>

                  <p>&ldquo;A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.&rdquo;</p>
                </blockquote>
                <p><em>&mdash; Jean Smith</em></p>
              </div> 

              <div class="testimonial text-center slider-item">
                <div class="author-image mb-3">
                  <img src="resources/images/person_2.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                </div>
                <blockquote>
                  <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                </blockquote>
                <p><em>&mdash; John Doe</em></p>
              </div>

              <div class="testimonial text-center slider-item">
                <div class="author-image mb-3">
                  <img src="resources/images/person_3.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                </div>
                <blockquote>

                  <p>&ldquo;When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.&rdquo;</p>
                </blockquote>
                <p><em>&mdash; John Doe</em></p>
              </div>


              <div class="testimonial text-center slider-item">
                <div class="author-image mb-3">
                  <img src="resources/images/person_1.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                </div>
                <blockquote>

                  <p>&ldquo;A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.&rdquo;</p>
                </blockquote>
                <p><em>&mdash; Jean Smith</em></p>
              </div> 

              <div class="testimonial text-center slider-item">
                <div class="author-image mb-3">
                  <img src="resources/images/person_2.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                </div>
                <blockquote>
                  <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                </blockquote>
                <p><em>&mdash; John Doe</em></p>
              </div>

              <div class="testimonial text-center slider-item">
                <div class="author-image mb-3">
                  <img src="resources/images/person_3.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                </div>
                <blockquote>

                  <p>&ldquo;When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.&rdquo;</p>
                </blockquote>
                <p><em>&mdash; John Doe</em></p>
              </div>

            </div>
              <!-- END slider -->
          </div>

        </div>
      </section>
      

      <section class="section blog-post-entry bg-light" id="section-events">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
              <h2 class="heading" data-aos="fade-up">제주 행사 소식</h2>
              <p data-aos="fade-up">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">

              <div class="media media-custom d-block mb-4 h-100">
                <a href="#" class="mb-4 d-block"><img src="resources/images/img_1.jpg" alt="Image placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <span class="meta-post">February 26, 2018</span>
                  <h2 class="mt-0 mb-3"><a href="#">Travel Hacks to Make Your Flight More Comfortable</a></h2>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                </div>
              </div>

            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="200">
              <div class="media media-custom d-block mb-4 h-100">
                <a href="#" class="mb-4 d-block"><img src="resources/images/img_2.jpg" alt="Image placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <span class="meta-post">February 26, 2018</span>
                  <h2 class="mt-0 mb-3"><a href="#">5 Job Types That Aallow You To Earn As You Travel The World</a></h2>
                  <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="300">
              <div class="media media-custom d-block mb-4 h-100">
                <a href="#" class="mb-4 d-block"><img src="resources/images/img_3.jpg" alt="Image placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <span class="meta-post">February 26, 2018</span>
                  <h2 class="mt-0 mb-3"><a href="#">30 Great Ideas On Gifts For Travelers</a></h2>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. t is a paradisematic country, in which roasted parts of sentences.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="section contact-section" id="section-contact">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
              <h2 class="heading" data-aos="fade-up">Contact Us</h2>
              <p data-aos="fade-up">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            </div>
          </div>
        <div class="row">
          <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">
            
            <form method="post" class="bg-white p-md-5 p-4 mb-5 border">
              <div class="row">
                <div class="col-md-6 form-group">
                  <label for="name">Name</label>
                  <input type="text" name="name" id="name" class="form-control ">
                </div>
                <div class="col-md-6 form-group">
                  <label for="phone">Phone</label>
                  <input type="text" name="phone" id="phone" class="form-control ">
                </div>
              </div>
          
              <div class="row">
                <div class="col-md-12 form-group">
                  <label for="email">Email</label>
                  <input type="email" name="email" id="email" class="form-control ">
                </div>
              </div>
              <div class="row mb-4">
                <div class="col-md-12 form-group">
                  <label for="message">Write Message</label>
                  <textarea name="message" name="message" id="message" class="form-control " cols="30" rows="8"></textarea>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="submit" value="Send Message" class="btn btn-primary text-white font-weight-bold">
                  <div class="submitting"></div>
                </div>
              </div>

             
            </form>

            

          </div>
          <div class="col-md-5" data-aos="fade-up" data-aos-delay="200">
            <div class="row">
              <div class="col-md-10 ml-auto contact-info">
                <p><span class="d-block">Address:</span> <span class="text-black"> 98 West 21th Street, Suite 721 New York NY 10016</span></p>
                <p><span class="d-block">Phone:</span> <span class="text-black"> (+1) 234 4567 8910</span></p>
                <p><span class="d-block">Email:</span> <span class="text-black"> info@yourdomain.com</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

      <section class="section bg-image overlay" style="background-image: url('resources/images/hero_4.jpg');" id="section-apply">
        <div class="container" >
          <div class="row align-items-center">
            <div class="col-12 col-md-6 text-center mb-4 mb-md-0 text-md-left" data-aos="fade-up">
              <h2 class="text-white font-weight-bold">제주에서 놀면서 일하실분!</h2>
            </div>
            <div class="col-12 col-md-6 text-center text-md-right" data-aos="fade-up" data-aos-delay="200">
              <!-- Extra large modal -->
              <a href="#" class="btn btn-outline-white-primary py-3 text-white px-5" data-toggle="modal" data-target="#reservation-form" onclick="location.href = '<%= request.getContextPath() %>/hireForm.hi'">지금 지원하기</a>
            </div>
          </div>
        </div>
      </section>

      
	<%-- 풋터 --%>
    <%@ include file="views/main/footer.jsp" %>
	
	
<script src="<%= request.getContextPath() %>/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/popper.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.stellar.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.fancybox.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.easing.1.3.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/aos.js"></script>      
<script src="<%= request.getContextPath() %>/resources/js/bootstrap-datepicker.js"></script> 
<script src="<%= request.getContextPath() %>/resources/js/jquery.timepicker.min.js"></script> 
<script src="<%= request.getContextPath() %>/resources/js/main.js"></script>
	
</body>
</html>