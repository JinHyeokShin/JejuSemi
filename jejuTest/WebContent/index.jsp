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
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />

    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />

    <script src="http://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script>


	var jq = jQuery.noConflict();

	
	/* slick 돌리는 function */
	jq(document).ready(function(){		
		  topAvgReview();
		  powerListView();
	      
	});
	
	function startSlick(){
		
		console.log('slick실행');
		
		jq('.slick-items').slick({
	    	  slidesToShow: 3,
	    	  slidesToScroll: 1,
	    	  autoplay: true,
	    	  autoplaySpeed: 2000
	      });
	}

</script>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">

	<%-- 헤더,메뉴바 --%>
    <%@ include file="views/main/header.jsp" %>
      
      
    <%-- 검색 위젯 --%>
    <%@ include file="views/main/searchWidget.jsp" %>	
      
      
      
	<%-- 메인페이지 내용 --%>
	<section class="py-5 bg-light" id="section-about">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-12 col-lg-7 ml-auto order-lg-2 position-relative mb-5" data-aos="fade-up">
              <img src="resources/images/hero_4.jpg" alt="Image" class="img-fluid rounded">
            </div>
            <div class="col-md-12 col-lg-4 order-lg-1" data-aos="fade-up">
              <h2 class="heading mb-4" style="font-size:52px";>Show Me The
              <span style="color:#fd7e14; font-size:66px;">"JeJu"</span>
              </h2>
              <p class="mb-5">주말만 바라보고 한주를 버텨온 사람들처럼, 이날을 바라보며 몇 달을 버티는 사람들이 있습니다. 반가운 사람들이 모여들어 이야기도 풍성해지고 여유와 즐거움마저 풍성해지는 제주에서 즐거운 추억을 만들어 보세요. </p>
              <p><a href="<%=contextPath%>/resources/video/jejuVideo.mp4"  data-fancybox class="btn btn-primary text-white py-2 mr-3 text-uppercase letter-spacing-1">Watch the video</a></p>
            </div>
            
          </div>
        </div>
      </section>
	
	
	<!-- 추천 숙소 -->
	
	<section class="py-5" id="section-recommand">
        <div class="container">
        
        
          <div class="row justify-content-center text-center mb-5">
        <div class="col-md-7 mb-5">
          <h2 class="heading" data-aos="fade-up">Best Hotel</h2>
           <p data-aos="fade-up" data-aos-delay="100">여긴 어떠신가요? 여러분에게 적합한 숙소를 추천드립니다!</p>
        </div>
      </div>

      <div class="row bestAcms">
      
      


      </div> <!-- row close -->
          
          
          
        </div>
      </section>
  
	<script>
		
		/* 추천 숙소 */
	
		function topAvgReview(){
			
			$.ajax({
				url:"topAvg.rv",
				type:"post",
				success:function(result){
					var topAvgList = result.topAvgList;
					var acmList = result.acmList;
					var thumbnailList = result.thumbnailList;
					var reviewList = result.reviewList;
					
					console.log("베스트 숙소 호출 성공");
					
					var str = "";
					
					$.each(topAvgList,function(index, value){
						
						str += '<div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">'+
						          '<div class="block-2" style="height: 250px;">'+
						            '<div class="flipper">';
						            
						            $.each(thumbnailList, function(index2, value2){
						            	
						            	if(value.acmNum == value2.acmNum){
									      str += '<div class="front" style="height: 250px;"><img src="'+value2.imgPath+'" style="width:350px; height:250px;">';						            		
						            	}						            	
						            });
						            
						        str += '<div class="box">';
						        	$.each(acmList, function(index3, value3){
						        		if(value.acmNum == value3.acmNum){
						                  str += '<b style="color:#fd7e14;">'+value3.acmName+'</b>';
						                  
							                  if(value3.acmType == "H"){
							                  	str += '<p>호텔</p>';	
							                  } else if(value3.acmType == "R"){
							                	  str += '<p>리조트</p>';
							                  } else if(value3.acmType == "C"){
							                	  str += '<p>콘도</p>';
							                  } else if(value3.acmType == "G"){
							                	  str += '<p>게스트하우스</p>';
							                  } else if(value3.acmType == "M"){
							                	  str += '<p>민박</p>';
							                  }						                  
						        		}
						        	});
						   	   str += '</div>'+
						              '</div>'+
						              '<div class="back" style="height: 250px;">'+
						                '<!-- back content -->'+
						                '<blockquote>';
						                
						                $.each(reviewList, function(index4, value4){
						                	if(value.acmNum == value4.acmNum){
						                		str += '<p>'+value4.reviewContent+'</p>'+
						                			   '</blockquote>'+
											                '<div class="author d-flex">'+											                  
											                  '<div class="name align-self-center" style="width:100%;">'+value4.memName+'<img src="'+value4.imgPath+'"><span style="float:right;">'+value4.reviewDate+'</span></div>'+
											                '</div>'+
											              '</div>'+
											            '</div>'+
											          '</div> <!-- .flip-container -->'+
											        '</div>';					                		
						                	}
						                });
					});
					console.log("베스트 숙소 str 생성완료");
					
					$(".bestAcms").html(str);
					
				},
				error:function(){
					console.log('추천 숙소 불러오기 실패');
				}
			});
			
			
		}
	
	
		/*  */
	
	
	</script>
  
  
    
    <!-- END .block-2 -->
    
    <!-- 인기숙소 -->

      <section class="section bg-light" id="section-rooms">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
              <h2 class="heading" data-aos="fade-up">Popular Hotel</h2>
              <p data-aos="fade-up" data-aos-delay="100">요즘 제주도에서 가장 핫한 숙소들을 만나보세요!</p>
            </div>
          </div>
          
          <div class="row powerAcms slick-items">
          </div> <!-- row class close -->
          
          	<script>
		
		function powerListView() {
			
			$.ajax({
				url:"powerAcm.ac",
				type:"post",
				success:function(result){
					var powerList = result.powerList;
					var thumbList = result.acmThumbnailListView;
					
					console.log("ajax성공");
					
					
					console.log(powerList);
					console.log(thumbList);
					
					
					var str = "";
					
					$.each(powerList, function(index, value){
						
					str +='<div class="col-md-6 col-lg-4" data-aos="fade-up">'+
							  '<input type="hidden" id="acmNum" value="'+value.acmNum+'">'+
				              '<a id="acmImg" class="room" style="cursor:pointer; outline:none;">'+
				                '<figure class="img-wrap">';
				                
				                	$.each(thumbList, function(index2, value2){
				                		if(value.acmNum == value2.acmNum){
					                  		str += '<img src="'+value2.imgPath+'" width="330" height="220" class="mb-3">';
				                		}
				                	});
				                
				     str += '</figure>'+
				                '<div class="p-3 text-center room-info">'+
				                  '<b style="font-size:1.7em; color:#fd7e14;">'+value.acmName+'</b><br>'+
				                  '<span class="text-uppercase letter-spacing-1" style="font-size:13px; color:black;">'+value.acmAddress+'</span>'+
			                	'</div></a></div>';			
					});
					
					console.log("str 생성 완료");
					
					$(".powerAcms").html(str);
					
					console.log("str 출력 완료");
					startSlick();
				},
				error:function(){
					console.log('파워등록숙소들 불러오기 실패');
				}
			});			
		}
	
		
		
		
		
		

		function getFormatDate(date){ 
			
			var year = date.getFullYear();
			var month = (1 + date.getMonth());
			month = month >= 10 ? month : '0' + month;
			var day = date.getDate();
			day = day >= 10 ? day : '0' + day;
			
			return year + '-' + month + '-' + day; 		
			}
		
		
		$(document).on('click','#acmImg',function(){
			
			var today = new Date();
			var today1 = getFormatDate(today);
			
			var tommorow = new Date();
			tommorow.setDate(today.getDate()+1);
			
			var tommorow1 = getFormatDate(tommorow);
					
			console.log(today1);
			console.log(tommorow1);
			
			location.href="<%=contextPath %>/detail.ac?acmNum="+$(this).prev().val()+"&checkIn="+today1+"&checkOut="+tommorow1+"&adult=1&child=0";
			
		})
		
		
		
		
		
	</script>
          
          
          
          
          
        </div>
      </section>
      
      
      <!-- END section -->

     
      <section class="section contact-section" id="section-contact">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
              <h2 class="heading" data-aos="fade-up">Contact Us</h2>
              <p data-aos="fade-up" data-aos-delay="100">
              	JejuBoram은 맞춤형 서비스를 제공하기 위해 고객지원센터를 운영하고 있습니다.<br>
				언제 어디서든 JejuBoram 고객지원센터만 기억하신다면 <br>
				보다 빠르게 최상의 서비스를 만나보실 수 있습니다.</p>
            </div>
          </div>
        <div class="row">
          <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">
            
            
            <form method="post" class="bg-white p-md-5 p-4 mb-5 border" action="contact.we">
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
                  <input type="submit" value="Send Message" id="contactSub"class="btn btn-primary text-white font-weight-bold">
                  <div class="submitting"></div>
                </div>
              </div>       
            </form>

            

          </div>
          <div class="col-md-5" data-aos="fade-up" data-aos-delay="200">
            <div class="row">
              <div class="col-md-10 ml-auto contact-info">
                <p><span class="d-block">Address:</span> <span class="text-black" style="font-family:initial;"> 서울특별시 강남구 테헤란로14길 6 남도빌딩</span></p>
                <p><span class="d-block">Phone:</span> <span class="text-black">  02-562-2378</span></p>
                <p><span class="d-block">Email:</span> <span class="text-black"> admin@jejuboram.com</span></p>
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
              <h2 class="text-white font-weight-bold" style="font-family:monospace; width:700px; padding-top:10px;">제주에서 놀면서 일하고 싶으신가요?</h2>
            </div>
            <div class="col-12 col-md-6 text-center text-md-right" data-aos="fade-up" data-aos-delay="200">
              <!-- Extra large modal -->
              <a href="#" class="btn btn-outline-white-primary py-3 text-white px-5" data-toggle="modal" data-target="#reservation-form" onclick="location.href = '<%= request.getContextPath() %>/hireForm.hi'">지금 지원하기</a>
            </div>
          </div>
        </div>
      </section>

	<script>
	
		$(document).ready(function() {

			$("#contactSub").click(function() {

				alertify.alert('', '문의 내용이 전송 되었습니다.');

			});
		});
		
	</script>




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