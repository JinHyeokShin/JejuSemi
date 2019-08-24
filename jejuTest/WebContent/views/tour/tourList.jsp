<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>제주에 어서와보람</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 카카오지도 API -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9baefdf8cbf2ee252bc9b7dc403ad63d"></script>

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

<link rel="icon" href="data:;base64,iVBORw0KGgo=">


<!-- T-MAP API header 시작 -->

<script src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=1e17b2f2-a4b7-4aae-ad14-3908433f0815"></script>
<!-- 발급받은 인증키를 위에 넣는다 -->

<script type="text/javascript">
	function initTmap() {
		var map = new Tmap.Map({
			div : 'map_div', // 결과 지도를 표시할 곳
			width : "750px", // 가로와 세로 사이즈는 픽셀로 적을 수도 있고
			height : "400px", // 퍼센트로 적을 수도 있다. 홈페이지 예제는 픽셀로 되어 있음.
		});
		// 경로 탐색 출발지점과 도착 지점의 좌표
		// 구글 지도에서 나오는 좌표의 x, y를 바꾸면 된다.
		var startX = 126.493615;
		var startY = 33.506179;
		var endX = 126.953982;
		var endY = 33.504273;
		var passList = null;
		var prtcl;
		var headers = {};

		headers["appKey"] = "1e17b2f2-a4b7-4aae-ad14-3908433f0815"; // 발급받은 인증키를 넣어야 한다
		$
				.ajax({
					method : "POST",
					headers : headers,
					url : "https://api2.sktelecom.com/tmap/routes?version=1&format=xml",
					async : false,
					data : {
						startX : startX,
						startY : startY,
						endX : endX,
						endY : endY,
						passList : passList,
						reqCoordType : "WGS84GEO",
						resCoordType : "EPSG3857",
						angle : "172",
						searchOption : "0",
						trafficInfo : "Y" //교통정보 표출 옵션입니다.
					},

					success : function(response) { //API가 제대로 작동할 경우 실행될 코드
						prtcl = response;

						// 결과 출력 부분 - 여기는 잘 모르겠음.
						var innerHtml = "";
						var prtclString = new XMLSerializer()
								.serializeToString(prtcl);//xml to String
						xmlDoc = $.parseXML(prtclString), $xml = $(xmlDoc),
								$intRate = $xml.find("Document");

						var tDistance = " 총 거리 : "
								+ ($intRate[0]
										.getElementsByTagName("tmap:totalDistance")[0].childNodes[0].nodeValue / 1000)
										.toFixed(1) + "km,";
						var tTime = " 총 시간 : "
								+ ($intRate[0]
										.getElementsByTagName("tmap:totalTime")[0].childNodes[0].nodeValue / 60)
										.toFixed(0) + "분,";
						var tFare = " 총 요금 : "
								+ $intRate[0]
										.getElementsByTagName("tmap:totalFare")[0].childNodes[0].nodeValue
								+ "원,";
						var taxiFare = " 예상 택시 요금 : "
								+ $intRate[0]
										.getElementsByTagName("tmap:taxiFare")[0].childNodes[0].nodeValue
								+ "원";

						$("#result").text(tDistance + tTime + tFare + taxiFare);

						// 실시간 교통정보 추가
						var trafficColors = {
							extractStyles : true,
							/* 실제 교통정보가 표출되면 아래와 같은 Color로 Line이 생성됩니다. */
							trafficDefaultColor : "#000000", //Default
							trafficType1Color : "#009900", //원활
							trafficType2Color : "#8E8111", //지체
							trafficType3Color : "#FF0000", //정체
						};
						var kmlForm = new Tmap.Format.KML(trafficColors)
								.readTraffic(prtcl);
						routeLayer = new Tmap.Layer.Vector("vectorLayerID"); //백터 레이어 생성
						routeLayer.addFeatures(kmlForm); //교통정보를 백터 레이어에 추가   

						map.addLayer(routeLayer); // 지도에 백터 레이어 추가

						// 경로탐색 결과 반경만큼 지도 레벨 조정
						map.zoomToExtent(routeLayer.getDataExtent());
					},
					error : function(request, status, error) { // API가 제대로 작동하지 않을 경우
						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					}
				});
	}
</script>


<!-- T-MAP API header 끝 -->
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
      /* Modal Content/Box */
      .modal-content2 {
          background-color: #fefefe;
          margin: 10% auto; /* 15% from the top and centered */
          padding: 20px;
          border: 1px solid #888;
          width:793px;
          height:500px;                         
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
      .ee{
      	float:left;
      }
      .pp{
      	padding-top: 10px;
      }
      .test{P
          border: 1px solid lightgray;
      }
      .mapDiv{
      	width:100%;
      	height:100%;
      }
      #result{
          width: 100%;
          padding-top:5px;
      }
      
    .jeju-wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .jeju-wrap * {padding: 0;margin: 0;}
    .jeju-wrap .info {width: 286px;height: 115px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .jeju-wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 14px;font-weight: bold;}
    .info .close {position: absolute;top: 0px;right: 10px;color: #888;width: 14px;height: 14px;}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
    
    .route{
     	width: 100%;
     	height: 50%;
     }
     .route1{
     	width: 100%;
     	height:20%;
     }
     .route2{
     	width: 100%;
     	height:50%;
     }
     .route2_1{
     	width: 100%;
     	height:100%;
     }
     .route3{
     	width: 100%;
     	height:100%;
     }
     #radioRoute, #radioBus{
     	width: 50%;
     	height:100%;
     	margin:auto;
     }
     #radioRouteBtn, #radioBusBtn{
     	margin-top: 17px;
     }
     .totalRoute{
     	width:85%;
     	height:100%;
     }	
     .reverseBtnDiv{
     	height:100%;
     	padding-top: 5px;
     }
     .routeStart, .routeEnd{
     	width:100%;
     	height:50%;

     }
     .route0{
     	width:12%;
     	height:100%;
     	text-align: left;
     	padding-top: 10px;
     }
     .route0_1, .route0_2{
     	width:88%;
     	height:100%;
     	text-align: left;
     	padding-top: 10px;
     }

      
</style>

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200" onload="initTmap()">


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
									<span class="d-block text-primary h4 mb-3 pp"
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
									<span class="d-block text-primary h4 mb-3 pp">협재해수욕장</span>
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
									<span class="d-block text-primary h4 mb-3 pp">한라산국립공원</span>
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
									<span class="d-block text-primary h4 mb-3 pp">사려니숲길</span>
									<p class="text-white text-opacity-7">
										제주의 힐링의 숲<br> #숲길 #걷기/등산 #친구 #커플
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/월정리해변.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">월정리해변</span>
									<p class="text-white text-opacity-7">
										달이 머무는 해변. 월정리해변<br> #해변 #경관/포토 #커플
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/비자림.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">비자림</span>
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
									<span class="d-block text-primary h4 mb-3 pp">제주 4·3 평화공원</span>
									<p class="text-white text-opacity-7">
										4.3사건 당시의 희생자들을 기리기 위한 공간<br> #테마공원 #부모 #커플
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/에코랜드.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">에코랜드 테마파크</span>
									<p class="text-white text-opacity-7">
										약 4.5km 거리의 곶자왈을 체험하는 테마파크<br> #테마공원 #아이 #맑음
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/용눈이오름.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">용눈이오름</span>
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
									<span class="d-block text-primary h4 mb-3 pp">성산일출봉</span>
									<p class="text-white text-opacity-7">
										UNESCO 세계자연유산, 아름다운 자연의 선물<br> #일출 #오름 #경관/포토
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/섭지코지.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">섭지코지</span>
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
									<span class="d-block text-primary h4 mb-3 pp">쇠소깍</span>
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
									<span class="d-block text-primary h4 mb-3 pp">카멜리아힐</span>
									<p class="text-white text-opacity-7">
										동양에서 가장 규모가 큰 동백수목원<br> #경관/포토 #커플 #아이 #인싸 #사진맛집
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/천지연폭포.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">천지연폭포</span>
									<p class="text-white text-opacity-7">
										하늘과 땅이 만나 이루어진 연못<br> #폭포 #밤 #경관/포토
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/용머리해안.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">용머리해안</span>
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
									<span class="d-block text-primary h4 mb-3 pp">마라도</span>
									<p class="text-white text-opacity-7">
										한국 최남단의 섬<br> #섬속의섬 #휴식/힐링 #부모
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/정방폭포.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">정방폭포</span>
									<p class="text-white text-opacity-7">
										국내 유일, 뭍에서 바다로 직접 떨어지는 폭포<br> #폭포 #경관/포토 #커플
									</p>
								</div>
								<div class="travel-menu mb-5">
									<h3 class="text-white">
										<a href="" target="_blank" class="text-white"><img
											src="<%=request.getContextPath()%>/resources/images/외돌개.jpg"></a>
									</h3>
									<span class="d-block text-primary h4 mb-3 pp">외돌개</span>
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
									<span class="d-block text-primary h4 mb-3 pp">제주레일바이크</span>
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
									<span class="d-block text-primary h4 mb-3 pp">제주레포츠랜드</span>
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
									<span class="d-block text-primary h4 mb-3 pp">월정리 카약체험장</span>
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
									<span class="d-block text-primary h4 mb-3 pp">그랑블루 요트투어</span>
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
									<span class="d-block text-primary h4 mb-3 pp">조랑말 체험공원</span>
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
									<span class="d-block text-primary h4 mb-3 pp">제주 하늘을 날다</span>
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
									<span class="d-block text-primary h4 mb-3 pp">곽지레저 & 서프나우</span>
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
									<span class="d-block text-primary h4 mb-3 pp">낙타트래킹</span>
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
									<span class="d-block text-primary h4 mb-3 pp">세리월드 테마파크</span>
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
					
						<div class="col-md-4 test aa text-white">
							<!-- 설명 부분 백그라운드 이미지 -->
							<div  class="test aa dd" style="background-image: url('https://cdn.pixabay.com/photo/2016/11/23/13/45/city-light-1852925_1280.jpg');">
							<br>
							&nbsp;&nbsp;<img src ='<%=request.getContextPath() %>/resources/images/5star.png' style="width:100px;">
							<br>
							<br>
							&nbsp;&nbsp;#섬속의섬 #경관/포토 #아이
							<br>
							&nbsp;&nbsp;<b>기본정보</b>
							<hr>
							&nbsp;&nbsp;주소 : 
							<label></label>
							<br>
							&nbsp;&nbsp;연락처 : 
							<label></label>
							<br>
							&nbsp;&nbsp;홈페이지 : 
							<label></label>
							<br>
							</div>
							
						</div>

						<!-- api 지도 -->
						<div class="col-md-8 mapDiv test aa">
							<div class="test aa dd map" id="map" style="width:100%;height:350px;"></div>
						</div>

						<div class="col-md-12 test aa" style="height:70px; padding-top:10px;">
							<div class= "test aa" style="height:50px;">
								<div class="test aa ee route0_1 col-md-5">
								<b>출발지:</b>
									&nbsp;<select></select>
								</div>
								
								<div class="test aa ee route0_2 col-md-5">
								<b>도착지:</b>
									&nbsp;<label>관광지 위치</label>
								</div>
								
								<div class="test ee route3 col-md-2" style="display:fixed;">	<!-- 경로보기 버튼 div -->
								<button class="detailBtn btn btn-primary btn-block text-white" id="routeBtn" style="margin-top: 2px;">경로보기</button>
								</div>
									
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	
	<!-- 경로찾기 모달  -->
	<div id="routeModal" class="popModal">
    	<div class="modal-content2">
    		<div style="width:100%; height:28px;">
    		<span class="close map-close">&times;</span>
    		</div>
    		<div id="map_div"></div>
      		<p id="result">결과 표시</p>

    	</div>    
    </div>
		
	<!--  지도 script -->
	<script>
		var mapContainer = document.getElementById('map'), // 지도의 중심좌표
		mapOption = {
			center : new kakao.maps.LatLng(33.504273, 126.953982), // 지도의 중심좌표
			level : 7
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도에 마커를 표시합니다 
		var marker = new kakao.maps.Marker({
			map : map,
			position : new kakao.maps.LatLng(33.504273, 126.953982)
		
		});

		// 커스텀 오버레이에 표시할 컨텐츠
		var content = '<div class="jeju-wrap">'
				+ '    <div class="info">'
				+ '        <div class="title">'
				+ '            우도(해양도립공원)'
				+ '            <div class="close" onclick="closeOverlay()" title="닫기">&times;</div>'
				+ '        </div>'
				+ '        <div class="body">'
				+ '            <div class="img">'
				+ '                <img src="https://api.visitjeju.net/photomng/imgpath/201907/30/78352ce0-9e64-4829-8df5-41d17c6f74c7.jpg" width="73" height="70">'
				+ '           </div>'
				+ '            <div class="desc">'
				+ '                <div class="ellipsis">제주특별자치도 제주시 우도면 삼양고수물길 1</div>'
				+ '                <div class="jibun ellipsis">(+82) 064-782-5671</div>'
				+ '                <div><a href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500477&menuId=DOM_000001718001000000#tdetailInfo" target="_blank" class="link">홈페이지</a></div>'
				+ '            </div>' + '        </div>' + '    </div>'
				+ '</div>';

		// 마커 위에 커스텀오버레이를 표시
		var overlay = new kakao.maps.CustomOverlay({
			content : content,
			map : map,
			position : marker.getPosition()
			
		});

		// 마커를 클릭했을 때 커스텀 오버레이를 표시
		kakao.maps.event.addListener(marker, 'click', function() {
			overlay.setMap(map);
		});

		// 커스텀 오버레이를 닫기 위해 호출
		function closeOverlay() {
			overlay.setMap(null);
		}
		
		// 경로찾기 모달
	    var routeModal = document.getElementById('routeModal');
	    var routeBtn = document.getElementById("routeBtn");

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
		
		// 경로찾기 클릭시 결과 출력
	    routeBtn.onclick = function() {
	    	routeModal.style.display = "block";
	    	
	    } 
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