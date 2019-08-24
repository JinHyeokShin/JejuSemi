<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>제주에 어서와보람</title>

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
          z-index: 1; /* Sit on top */
          left: 0;
          top: 0;
          width: 100%; /* Full width */
          height: 100%; /* Full height */
          overflow: auto; /* Enable scroll if needed */
          background-color: rgb(0,0,0); /* Fallback color */
          background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      }
  
      /* Modal Content/Box */
      .modal-content {
          background-color:fefefe;
          margin: 15% auto; /* 15% from the top and centered */
          padding: 20px;
          border: 1px solid #888;
          width: 30%; /* Could be more or less, depending on screen size */                          
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
      .t-close{
      	padding-right:15px;
      	padding-top:5px;
      }
      .nav-item{
        cursor: pointer;
      }
      aside {
        float: left;
      }

      div h3 img{
        width:350px;
        height:auto;
      }
      div span, p{
        text-align: center;
      }
      .travel-menu{
        background:black;
        opacity: 0.7;
      }
      .tour-menu{
        border:1px solid lightgray;
      }
      .aa{
      	box-sizing: border-box;
      }
      .dd{
      	height:350px;
      	width:100%;
      }
      
      .test{
          border: 1px solid lightgray;
      }
      .mapDiv{
      	width:100%;
      	height:100%;
      }
      
      
</style>

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">


<%-- 헤더,메뉴바 --%>
<%@ include file="../main/header.jsp" %>

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


    <!-- 제주도 관광지 -->
	<section class="section bg-image overlay" style="background-image: url(<%=request.getContextPath()%>/resources/images/recommand.png)" id="section-menus">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-md-7">
					<h2 class="heading text-white" data-aos="fade">추천 관광지</h2>
					<p class="text-white" data-aos="fade" data-aos-delay="100">
						개인의 취향에 맞는 관광지를 통해 <br> 더욱 즐거운 제주도 여행을 경험해보세요</p>
				</div>
			</div>
			<div class="travel-menu-tabs" data-aos="fade">
				<ul class="nav nav-tabs mb-5" id="myTab" role="tablist">
					<li class="nav-item"><a
						class="nav-link active letter-spacing-2" id="mains-tab"
						data-toggle="tab" href="#mains" role="tab" aria-controls="mains"
						aria-selected="true">제주시</a></li>
					<li class="nav-item"><a class="nav-link letter-spacing-2"
						id="desserts-tab" data-toggle="tab" href="#desserts" role="tab"
						aria-controls="desserts" aria-selected="false">서귀포시</a></li>
					<li class="nav-item"><a class="nav-link letter-spacing-2"
						id="drinks-tab" data-toggle="tab" href="#drinks" role="tab"
						aria-controls="drinks" aria-selected="false">Activity</a></li>
				</ul>
				<div class="tab-content py-5" id="myTabContent">

					<!-- 제주시 -->
					<div class="tab-pane fade show active text-left" id="mains"
						role="tabpanel" aria-labelledby="mains-tab">
						<div class="row">
							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="#section-menus" class="text-white"><img
											id="tour-1"
											src="<%=request.getContextPath()%>/resources/images/우도.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3"
										style="text-align: center">우도(해양도립공원)</span>
									<p class="text-white text-opacity-7">
										제주 안의 또 다른 제주, 산호의 섬<br> #섬속의섬 #경관/포토 #아이<br>
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											id="tour-2"
											src="<%=request.getContextPath()%>/resources/images/협재해수욕장.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">협재해수욕장</span>
									<p class="text-white text-opacity-7">
										에메랄드빛의 인기 No.1 해수욕장<br> #일몰 #해수욕장 #액티비티
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											id="tour-3"
											src="<%=request.getContextPath()%>/resources/images/한라산.jpg"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">한라산국립공원</span>
									<p class="text-white text-opacity-7">
										제주를 대표하는 한라산국립공원<br> #산 #걷기/등산 #경관/포토
									</p>
								</div>
							</div>

							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/샤려니숲길.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">사려니숲길</span>
									<p class="text-white text-opacity-7">
										제주의 힐링의 숲<br> #숲길 #걷기/등산 #친구 #커플
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/월정리해변.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">월정리해변</span>
									<p class="text-white text-opacity-7">
										달이 머무는 해변. 월정리해변<br> #해변 #경관/포토 #커플
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/비자림.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">비자림</span>
									<p class="text-white text-opacity-7">
										세계 최대 규모를 자랑하는 단일 수종 삼림욕장<br> #걷기/등산 #아이
									</p>
								</div>
							</div>

							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/제주43평화공원.jpg"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">제주 4·3 평화공원</span>
									<p class="text-white text-opacity-7">
										4.3사건 당시의 희생자들을 기리기 위한 공간<br> #테마공원 #부모 #커플
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/에코랜드.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">에코랜드 테마파크</span>
									<p class="text-white text-opacity-7">
										약 4.5km 거리의 곶자왈을 체험하는 테마파크<br> #테마공원 #아이 #맑음
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/용눈이오름.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">용눈이오름</span>
									<p class="text-white text-opacity-7">
										용이 누웠던 자리, 용눈이오름 <br> #일출 #밤 #오름 #걷기/등산 #친구
									</p>
								</div>
							</div>
						</div>
					</div>

					<!-- 서귀포시 -->
					<div class="tab-pane fade text-left" id="desserts" role="tabpanel"
						aria-labelledby="desserts-tab">
						<div class="row">
							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img src="<%=request.getContextPath()%>/resources/images/성산일출봉.jpg">
										</a>
									</h3>
									<span class="d-block text-primary h4 mb-3">성산일출봉</span>
									<p class="text-white text-opacity-7">
										UNESCO 세계자연유산, 아름다운 자연의 선물<br> #일출 #오름 #경관/포토
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/섭지코지.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">섭지코지</span>
									<p class="text-white text-opacity-7">
										여유가 느껴지는 제주의 아름다움<br> #일출 #해변 #경관/포토
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/쇠소깍.jpg"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">쇠소깍</span>
									<p class="text-white text-opacity-7">
										소가 누워 있는 모습의 연못<br> #계곡 #휴식/힐링 #액티비티 #커플
									</p>
								</div>
							</div>

							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/카멜리아힐.jpg"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">카멜리아힐</span>
									<p class="text-white text-opacity-7">
										동양에서 가장 규모가 큰 동백수목원<br> #경관/포토 #커플 #아이 #인싸 #사진맛집
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/천지연폭포.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">천지연폭포</span>
									<p class="text-white text-opacity-7">
										하늘과 땅이 만나 이루어진 연못<br> #폭포 #밤 #경관/포토
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/용머리해안.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">용머리해안</span>
									<p class="text-white text-opacity-7">
										바다속으로 들어가는 용의 머리를 닮은 해안<br> #해변 #휴식/힐링 #부모 #커플
									</p>
								</div>
							</div>

							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/마라도.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">마라도</span>
									<p class="text-white text-opacity-7">
										한국 최남단의 섬<br> #섬속의섬 #휴식/힐링 #부모
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/정방폭포.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">정방폭포</span>
									<p class="text-white text-opacity-7">
										국내 유일, 뭍에서 바다로 직접 떨어지는 폭포<br> #폭포 #경관/포토 #커플
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/외돌개.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">외돌개</span>
									<p class="text-white text-opacity-7">
										바다 위에 홀로 우뚝 서있는 ‘외돌개’<br> #일출 #해변 #경관/포토 #장군석 #할망바위
									</p>
								</div>
							</div>

						</div>
					</div>
					<!-- .tab-pane -->

					<!-- activity -->
					<div class="tab-pane fade text-left" id="drinks" role="tabpanel"
						aria-labelledby="drinks-tab">
						<div class="row">
							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/제주레일바이크.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">제주레일바이크</span>
									<p class="text-white text-opacity-7">
										제주 경관을 즐기는 레저관광<br> #친구 #경관/포토 #체험관광 #엑티비티 <br> #데이트
										#레일바이크
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/제주레포츠랜드.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">제주레포츠랜드</span>
									<p class="text-white text-opacity-7">
										다양한 체험시설이 있는 복합휴양레저테마파크<br> #레이싱카트 #산악버기카 #짚라인 <br>
										#서바이벌 #사계절썰매 #사격
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/카약체험장.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">월정리 카약체험장</span>
									<p class="text-white text-opacity-7">
										투명한 에메랄드 빛 바다가 있는<br> 정리 해변에서 즐기는 투명카약<br> #액티비티 #커플
										#여름 #카약
									</p>
								</div>
							</div>

							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/그랑블루요트투어.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">그랑블루 요트투어</span>
									<p class="text-white text-opacity-7">
										생일, 프러포즈, 웨딩촬영 등<br> 이벤트를 즐길 수 있는 요트투어<br> #액티비티 #커플
										#여름 #요트
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/조랑말체험공원.png"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">조랑말 체험공원</span>
									<p class="text-white text-opacity-7">
										600년 목축문화의 역사를 녹여만든<br> 말 박물관, 카페, 아트숍, 너른 승마체험장 <br>
										#승마 #액티비티 #아이
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/제주하늘을날다.png"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">제주 하늘을 날다</span>
									<p class="text-white text-opacity-7">
										아름다운 제주의 자연이 발 아래 펼쳐지는 <br> 패러글라이딩<br> #액티비티 #친구 #연인
										#페러글라이딩
									</p>
								</div>
							</div>

							<div class="col-md-4">
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/서핑.jpg"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">곽지레저 & 서프나우</span>
									<p class="text-white text-opacity-7">
										모든 서핑 종류의 레저를 즐길 수 있는 곳<br> #초보자 환영 #체험관광 #액티비티<br>
										#여름 #해변 #청년 #서핑</b>
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/낙타트래킹.PNG"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">낙타트래킹</span>
									<p class="text-white text-opacity-7">
										마상공연과 낙타트래킹을 한 곳에서<br> 동시에 이용할 수 있는 곳<br> #액티비티 #친구
										#커플 #낙타
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/세리월드.jpg"
											style="height: 150.85px"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3">세리월드 테마파크</span>
									<p class="text-white text-opacity-7">
										동백나무 미로공원과 승마체험, <br> 그리고 카트레이싱을 함께 <br> #액티비티 #아이
										#커플 #친구 #레이싱카트
									</p>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- tour Modal -->
	<div id="tourModal" class="popModal">
		<div class="container">
			<form class="form-tour" action="#section-menus">
				<div class="close text-white t-close">&times;</div>
				<h2 class="form-tour-heading">Jeju Travel</h2>
				<div class="tour-wrap">
					<div class="row">
					
						<div class="col-md-4">
							<h4 class="text-black test aa dd">설명</h4>
						</div>

						<!-- api 지도 -->
						<div class="col-md-8 mapDiv">
							<div class="test aa dd map" id="map"></div>
						</div>

						<div class="col-md-12">
							<div class="mb-5 test aa">
								<h4>상세설명</h4>
							</div>
						</div>

					</div>
				</div>
			</form>
		</div>
	</div>


	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9baefdf8cbf2ee252bc9b7dc403ad63d"></script>
		
	<!--  지도 script -->
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(33.504273, 126.953982),
			level : 3
		};

		var map = new kakao.maps.Map(container, options); /* 지도 생성 */

		var markerPosition = new kakao.maps.LatLng(33.504273, 126.953982) /* 마커 표시될 위치 */

		var marker = new kakao.maps.Marker({ /* 마커 생성 */
			position : markerPosition
		});

		marker.setMap(map); /* 마커 표시 */

		// tourModal
		var tourModal = document.getElementById('tourModal');
		var tour1 = document.getElementById("tour-1");

		// X버튼 사용
		var span = document.getElementsByClassName("close");

		// 이미지 클릭했을 때 모달창으로 이동
		tour1.onclick = function() {
			tourModal.style.display = "block";
			map.relayout(); // 모달창에서 지도 발생시키는 함수
			map.setCenter(new kakao.maps.LatLng(33.504273, 126.953982)); // 지도의 중심을 결과값으로 받은 위치로 이동
		}

		$(function() {
			// 모달창 x 버튼 누르면 창 꺼지기
			$(".close").click(function() {
				$(this).parents(".popModal").css("display", "none");
			});
		});
	</script>



<!-- 풋터  -->
<%@ include file="../main/footer.jsp" %>

<script src="<%=request.getContextPath()%>/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
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