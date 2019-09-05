<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	// 세션에 담겨있는 메세지 받기
	String msg = (String)session.getAttribute("msg");
	
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="<%= request.getContextPath() %>/resources/js/alertify.min.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/alertify.min.css">

<script src="<%= request.getContextPath() %>/resources/js/semantic.min.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/semantic.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/item.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/button.min.css">

<script src="<%= request.getContextPath() %>/resources/js/form.min.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/form.min.css">



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

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/semantic.min.css">
        <script
          src="https://code.jquery.com/jquery-3.1.1.min.js"
          integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
          crossorigin="anonymous"></script>
        <script src="<%= request.getContextPath() %>/resources/js/semantic.min.js"></script>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name = "google-signin-client_id"content = "229644816841-0i7t2jo0jdc09ch2vfpv81a7ig8gpa8s.apps.googleusercontent.com">

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

         .test{
          	border: 1px solid lightgray;
         }  
         .aa{
            box-sizing: border-box;
         }
         .dd{
            float: left;
         }
         


</style>

</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="templateux-navbar">
      <div class="container">
        <a class="navbar-brand" href="<%= request.getContextPath() %>/index.jsp"><span class="text-danger">Jeju</span>Boram</a>
        <div class="site-menu-toggle js-site-menu-toggle  ml-auto"  data-aos="fade" data-toggle="collapse" data-target="#templateux-navbar-nav" aria-controls="templateux-navbar-nav" aria-expanded="false" aria-label="Toggle navigation">
              <span></span>
              <span></span>
              <span></span>
            </div>
            <!-- END menu-toggle -->

            <div class="collapse navbar-collapse" id="templateux-navbar-nav">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="#section-home" id="nav1">Home</a></li>
                <li class="nav-item"><a class="nav-link" target="_blank" id="nav2">Flight</a></li>
                <li class="nav-item"><a class="nav-link" target="_blank" id="nav3">RentCar</a></li>
                <!-- <li class="nav-item"><a class="nav-link" href="#section-about" id="nav4">AboutJeju</a></li> -->
                <li class="nav-item"><a class="nav-link" href="#section-about" id="nav5">Recommand</a></li>              
                <li class="nav-item"><a class="nav-link" href="<%=contextPath %>/tourList.to" id="nav6">TourSpot</a></li>   
                <li class="nav-item"><a class="nav-link" href="<%=contextPath %>/festival.do" id="nav7">JejuFestival</a></li>         
                <li class="nav-item"><a class="nav-link" href="#section-contact" id="nav8">ContactUs</a></li>
                <!-- <li class="nav-item"><a class="nav-link" href="#section-apply" id="nav9">ApplyFor</a></li> -->
                <!-- <li class="nav-item"><a class="nav-link" href="#" id="join">Join</a></li> -->
                <% if(loginUser == null){ %>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0"><a class="nav-link" id="loginBtn" target=""><span class="pb_rounded-4 px-4 rounded">Login</span></a></li>
                <%}else{ %>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0"><a class="nav-link" id="logoutBtn" onclick="logout();"><span class="pb_rounded-4 px-4 rounded" >Logout</span></a></li>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0"><a class="nav-link" id="mypageBtn" onclick="mypage();"><span class="pb_rounded-4 px-4 rounded">MyPage</span></a></li>
              	<%} %>
              </ul>
            </div>
          </div>
        </nav>

     <!-- Login Modal -->
    <div id="loginModal" class="popModal">
          <div class="container">
            <form class="form-login" action="<%= request.getContextPath() %>/login.me" method="post" onsubmit="return validate();">
              <h2 class="form-login-heading">sign in now</h2>
              <div class="login-wrap">
                  <span class="close" style="margin-left:auto;">&times;</span>
                <input type="text" class="form-control" placeholder="ID" id="userId" autofocus name="userId">
                <br>
                <input type="password" class="form-control" placeholder="Password" id="userPwd" name="userPwd">
                <!-- <label class="checkbox"> -->
                  <input type="checkbox" value="remember-me"> 기억하기
                  <span class="pull-right">
                  <a data-toggle="" href="<%=contextPath %>/searchPwdForm.me"> Forgot Password?</a>
                  </span>
                  <!-- </label> -->
                <button class="btn btn-theme btn-block" type="submit"><a href="#">SIGN IN</a></button>
                <hr>
                <div class="login-social-link centered">
                
                
                
                	<!-- 카카오 로그인 -->
                
                	<a id="custom-login-btn" href="javascript:loginWithKakao()">
					<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="290"/>
					</a>
					<script type='text/javascript'>
					  //<![CDATA[
					    // 사용할 앱의 JavaScript 키를 설정해 주세요.
					    Kakao.init('9baefdf8cbf2ee252bc9b7dc403ad63d');
					    
					    
					    
					    function loginWithKakao() {
					      // 로그인 창을 띄웁니다.
					      Kakao.Auth.login({
					    	  success: function(authObj) {					    		  
					    		  
					    		  var accessToken = authObj.access_token;
						          var refreshToken = authObj.refresh_token;
						          
						          console.log('accessToken : '+accessToken);
						          console.log('refreshToken : '+refreshToken);
					    		  
					    		  
							        // 로그인 성공시, API를 호출합니다.
							        Kakao.API.request({
							          url: '/v2/user/me',
							          success: function(res) {
							            /* alert(JSON.stringify(res)); */
							            
							            /* 이런식으로 id같은 정보를 쿼리스트링으로 보내주면서 페이지 이동 */
							            /* location.href='/api/kakao_login/kakao_login.php?id='+res.id+'&nickname='+res.properties['nickname']; */
							            
							            location.href='<%=contextPath%>/snsLogin.me?snsId='+res.kakao_account["email"];
							            
							          },
							          fail: function(error) {
							            alert(JSON.stringify(error));
							          }
							        });
							      },
							      fail: function(err) {
							        alert(JSON.stringify(err));
							      }
					      });
					    };
					     
					    
					    
					  //]]>
					</script>
					
					<!-- 카카오 로그인 -->
                
                
                
                <div style="width:100%; height:10px;"></div>
                
                
                <!-- 구글 로그인 -->
                  <div class="g-signin2" data-width="290" data-height="46" data-onsuccess="onSignIn"></div>
                  
                  <script>
	                  function onSignIn(googleUser) {
	                	  var profile = googleUser.getBasicProfile();
	                	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
	                	  console.log('Name: ' + profile.getName());
	                	  console.log('Image URL: ' + profile.getImageUrl());
	                	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	                	  
	                	  location.href='<%=contextPath%>/snsLogin.me?snsId='+profile.getEmail();
	                	  
	                	  signOut();
	                	}
	                  
	                  function signOut() {
	                	    var auth2 = gapi.auth2.getAuthInstance();
	                	    auth2.signOut().then(function () {
	                	      console.log('User signed out.');
	                	    });
	                	  }
                  
                  </script>
                  
                  <!--  -->
                  
                </div>
                <div class="registration">
                  Don't have an account yet?<br/>
                  
                  <!-- 회원가입 버튼 클릭 -->
                  <a href="<%= contextPath %>/joinForm.me" id="memberJoinBtn">Create an account</a>

                <!-- </div> -->
              </div>
              <!-- Modal -->

              <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title">Forgot Password ?</h4>
                    </div>
                    <div class="modal-body">
                      <p>Enter your e-mail address below to reset your password.</p>
                      <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
                    </div>
                    <div class="modal-footer">
                      <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                      <button class="btn btn-theme" type="button">Submit</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
              <!-- modal -->
            </form>
          </div>
        </div>

      <!-- Flight Modal -->
    <div id="flightModal" class="popModal"> 
      <!-- Modal content -->
      <div class="modal-content">
          <span class="close" style="margin-left:auto;">&times;</span>
          <div
            data-skyscanner-widget="FlightSearchWidget"
            data-locale="ko-KR"
            data-market="KR"
            data-currency="KRW"
          ></div>
          <script src="https://widgets.skyscanner.net/widget-server/js/loader.js" async></script>
      </div>   
    </div>
  
      <script>
          // flightModal
          var flightModal = document.getElementById('flightModal');
          var flight = document.getElementById('nav2');
   
          /* // loginModal
          var loginModal = document.getElementById('loginModal');
          var loginBtn = document.getElementById("loginBtn"); */
   
          // When the user clicks on the button, open the modal 
          /* loginBtn.onclick = function() {
            loginModal.style.display = "block";
          } */ 
          
          $("#loginBtn").click(function() {
        	  $("#loginModal").css('display','block');
			  $("#loginBtn").css('display','block');
		  });
          
          $("#nav2").click(function() {
        	  $("#flightModal").css('display','block');
		})
          
          /* flight.onclick = function() {
            flightModal.style.display = "block";
          }  */
          
       // Get the <span> element that closes the modal
          var span = document.getElementsByClassName('close');    

          $(function(){
            // 모달창 x 버튼 누르면 창 꺼지기
            $(".close").click(function(){
              // console.log("sss");
              $(this).parents(".popModal").css("display", "none");
            });
          });
          
          function validate() {
  			if($("#userId").val().trim().length == 0){	// 아이디 입력 안했을 경우
  				alert("아이디를 입력해주세요.");
  				$("#userId").focus();
  				return false;
  			}
  			
  			if($("#userPwd").val().trim().length == 0){	// 비밀번호 입력 안했을 경우
  				alert("비밀번호를 입력해주세요.");
  				$("#userPwd").focus();
  				return false;				
  			}
  				
  				return true;
  			}
          
          	function logout() {
  				location.href="<%= request.getContextPath() %>/logout.me";			
  			}
          	
          	function mypage(){
    			location.href = "<%= request.getContextPath()%>/mypage.me";
    		}

      </script> 

    
    <!-- END nav -->

      <section class="site-hero overlay" style="background-image: url(<%= request.getContextPath() %>/resources/images/hero_5.jpg)" data-stellar-background-ratio="0.5" id="section-home">
        <div class="container">
          <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
              <img src="<%= request.getContextPath() %>/resources/images/jejuisland.png">
            </div>
          </div>
        </div>
      </section>
      <!-- END section -->
</body>
</html>