<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

<!-- T-MAP API header 시작 -->

<script
	src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=1e17b2f2-a4b7-4aae-ad14-3908433f0815"></script>
<!-- 발급받은 인증키를 위에 넣는다 -->
<script type="text/javascript">
	function initTmap() {
		var map = new Tmap.Map({
			div : 'map_div', // 결과 지도를 표시할 곳
			width : "700px", // 가로와 세로 사이즈는 픽셀로 적을 수도 있고
			height : "400px", // 퍼센트로 적을 수도 있다. 홈페이지 예제는 픽셀로 되어 있음.
		});
		// 경로 탐색 출발지점과 도착 지점의 좌표
		// 구글 지도에서 나오는 좌표의 x, y를 바꾸면 된다.
		var startX = 126.493615;
		var startY = 33.506179;
		var endX = 126.578727;
		var endY = 33.245299;
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
								+ ($intRate[0].getElementsByTagName("tmap:totalDistance")[0].childNodes[0].nodeValue / 1000).toFixed(1) + "km,";
						var tTime = " 총 시간 : "
								+ ($intRate[0].getElementsByTagName("tmap:totalTime")[0].childNodes[0].nodeValue / 60).toFixed(0) + "분,";
						var tFare = " 총 요금 : "
								+ $intRate[0].getElementsByTagName("tmap:totalFare")[0].childNodes[0].nodeValue	+ "원,";
						var taxiFare = " 예상 택시 요금 : "
								+ $intRate[0].getElementsByTagName("tmap:taxiFare")[0].childNodes[0].nodeValue + "원";

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
         #logoutBtn{
         	display: none;
         }
         aside {
           float: left;
         }
         .star{
           color:gold;
           font-size: 20px;
         }
         .searchForm{
           border: 1px solid lightgray;
           width: 100%;
         }
         .result{
          border: 1px solid lightgray;
          width: 85%;
         }
         .searchPhoto{
          border: 1px solid lightgray;
          width: 300px;
          height: 200px;
         }
         .test{
          border: 1px solid lightgray;
         }         
         li{
            list-style-type: none;
        }
        .aa{
            box-sizing: border-box;
        }
        .resultWrap{
            width: 100%;
            height: 250px;
        }
        .d1{
            width: 75%;
            height: 100%;
        }
        .d2{
            width: 25%;
            height: 100%;
        }        
        .d3{
            height: 20%;
        }
        .d4{
            height: 80%;
        }
        .d5{
            width: 40%;
            height: 100%;
            padding: 15px;
            padding-top: 0px;
        }
        .d6{
            width: 30%;
            height: 100%;
        }
        .d9{
        	width: 30%;
        	height: 100%;
        }
        .d7{
        	height:70%
        }
        .d8{
        	height: 30%;
        	text-align:center;
        }
        .imgDiv{
            width: 300px;
            height: 170px;
            margin:auto;
        }
        .dd{
            float: left;
        }
        .title{
       		text-align:left;
        	text-indent: 25px;
        }
        .detailBtn{
        	margin:auto;
        }
        .resultSection{
        	height:1400px;
        }
        .headDiv{
            height: 160px;
        }
        .body_1_Div{
            height: 500px;
        }
        .detailView{
        	width: 1500px;
        	margin-left:auto;
        	margin-right: auto;
        }
        .detailWrap{
        	margin-top: 20px;
        }        
        .body_2_Div{
        	height: 350px;
        }
        .slideImgDiv{
        	width:67%;
        	height:100%;
        }
        .mapDiv{
        	width:30%;
        	height:100%;
        }
        .body_3_Div{
        	height:150px;
        }
        .reSearchWrap{        	
        	margin-top: 1.5%;
        	height:80%;
        }
        .reSearchBar{
        	width: 100%;
        	height:100%;
        }
        .research1{
        	width: 25%;
        	height:100%;
        }
        .research2{
        	width: 38%;
        	height:100%;
        }
        .research3{
        	width: 25%;
        	height:100%;
        }
        .research4{
        	width:12%;
        	height:100%;
        }
        .reSearchForm{
        	width:100%;
        	height:100%;
        }
        .recheck{
        	width:45%;
        	height:100%;
        }
        .space{
        	width:3%;
        	height:100%;
        }
        .night{
        	width:7%;
        	height:100%;
        }
        .div3_1{
        	width:25%;
        	height:100%;
        }
        .div3_2{
        	width:4%;
        	height:100%;
        }
        .div3_3{
        	width:30%;
        	height:100%;
        	text-align:right;
        }
        .div3_4{
        	width:37%;
        	height:100%;
        	text-align:right;
        }
        .imgSize{
        	height:500px;
        }
        .map, .route{
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
        	height:30%;
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
        	width:15%;
        	height:100%;
        	padding-top: 45px;
        }
        .routeStart, .routeEnd{
        	width:100%;
        	height:50%;
        	/* text-align: start;
        	padding-top: 15px;
        	text-indent: 10px; */
        }
        .route0{
        	width:25%;
        	height:100%;
        	text-align: right;
        	padding-top: 15px;
        }
        .route0_1, .route0_2{
        	width:75%;
        	height:100%;
        	text-align: left;
        	padding-top: 15px;
        }
        #map2{
        	width:100%;
        	height:100%;
        }
        
         
</style>

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200" onload="initTmap()">

	<%-- 헤더,메뉴바 --%>
    <%@ include file="../main/header.jsp" %>
    
    
    
    <section class="detailView" style="text-align:center">
    	<div class="detailWrap test aa container">
            <div class="headDiv test aa">헤더(검색창?)</div>		<!-- header div -->
            <div class="bodyDiv test aa">
                <div class="body_1_Div test aa">	<!-- 사진들어갈 div -->
					<div class="slideImgDiv test aa dd">

						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100 imgSize"
										src="<%= request.getContextPath() %>/resources/images/img_4.jpg">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100 imgSize"
										src="<%= request.getContextPath() %>/resources/images/img_5.jpg">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100 imgSize"
										src="<%= request.getContextPath() %>/resources/images/img_3.jpg">
								</div>
							</div>
							<a class="carousel-control-prev"
								href="#carouselExampleIndicators" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleIndicators" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>

					</div> <!-- 슬라이드로 사진들어갈 div -->
					
					<div class="test aa dd space"></div>
					
					<div class="mapDiv test aa dd">	  <!-- 지도/경로 버튼 들어갈 div -->
					
						<div class="test aa dd map" id="map"></div>	<!-- 지도 들어가는 div -->						
						
						
						<script>
							var container = document.getElementById('map');
														
							var options = {
								center : new kakao.maps.LatLng(33.506768, 126.493103),	/* 지도 중심 좌표 */
								level : 3
							};

							var map = new kakao.maps.Map(container, options); /* 지도 생성 */
														
							var markerPosition  = new kakao.maps.LatLng(33.506768, 126.493103)	/* 마커 표시될 위치 */
							
							var marker = new kakao.maps.Marker({	/* 마커 생성 */
							    position: markerPosition
							});
							
							marker.setMap(map);	/* 마커 표시 */
							
							/* $(function() {
								$("#map").on('click',function(){
									var map = $("#map").html();
									$("#map2").html(map);
								});
							}); */
													
							
							
							
						</script>


						<div class="test aa dd route">
							<div class="test dd route1">	<!-- 라디오버튼 div -->
								<div class="test aa dd" id="radioRoute">
									<input type="radio" id="radioRouteBtn" name="route" value="car" onclick="showOn();"><label for="radioRouteBtn"><img src="../../resources/images/car.png"></label>
								</div>
								<div class="test aa dd" id="radioBus">
									<input type="radio" id="radioBusBtn" name="route" value="bus" onclick="showOff();"><label for="radioBusBtn">&nbsp;<img src="../../resources/images/bus.png"></label>
								</div>
							</div>
							
							<script>
								/* $(function(){
									$("input[type=radio]").on("change", function(){
										
										console.log($("input[type=radio]:checked").val());
										if($("input:checked").val() == "car"){
											$(".route2").css('display','block');
										}else{
											$(".route2").css('display','none');
										}
									});
								}); */
								
								function showOn() {
									$(".route2_1").css('display','block');									
								}
								function showOff() {
									$(".route2_1").css('display','none');									
								}
							</script>
							
							<div class="test dd route2">
							
							<div class="test dd route2_1" style="display:none;">
							
								<div class="test aa dd totalRoute">
									<div class="test aa dd routeStart">	<!-- 출발장소 -->
										<!-- <b>출발지 : </b><select></select> -->
										<div class="test aa dd route0">
											<b>출발지 :</b>
										</div>
										<div class="test aa dd route0_1">
											&nbsp;<select></select>
										</div>
									</div>
									<div class="test aa dd routeEnd">	<!-- 도착장소 = 해당 숙소 -->
										<!-- <b>도착지 :</b><label>해당숙소</label> -->
										<div class="test aa dd route0">
											<b>도착지 :</b>
										</div>
										<div class="test aa dd route0_2">
											&nbsp;<label>해당 숙소</label>
										</div>
									</div>
								</div>
								<div class="test aa dd reverseBtnDiv">
									<img src="../../resources/images/swap.png" onclick="reverse();" style="cursor:pointer;">
								</div>
								<script>
									function reverse() {
										var route0_1 = $(".route0_1");
										var route0_2 = $(".route0_2");
										var temp = route0_1.html();
																					
										route0_1.html(route0_2.html());
										route0_2.html(temp);
									}
								</script>
								
							</div>	
							</div>
							<div class="test dd route3" style="display:fixed;">	<!-- 경로보기 버튼 div -->
								<button class="detailBtn btn btn-primary btn-block text-white" id="routeBtn" style="width:70%; height:50%; line-height: 1px; margin-top: 15px;">경로보기</button>
							</div>
						</div>					
					</div>	
                </div>
                <div class="body_2_Div test aa">숙소 설명</div>		<!-- 설명들어갈 div -->
                <div class="body_3_Div test aa">
                	<div class="reSearchWrap test aa">
                		<form class="reSearchForm aa">
                			<div class="reSearchBar test aa">
                			
	                			<div class="test aa dd research1" style="text-align:left; padding:20px;">
	                			<b>목적지 또는 숙박시설</b><br>
	                			<input type="text" class="reText form-control" style="height:30px;" value="">
	                			</div>
	                			
	                			<div class="test aa dd research2" style="padding:10px; padding-top:18px;">
	                				<div class="test aa dd recheck" style="text-align:left;">
	                				
										<b>체크인</b><br>
										<input type="text" class="form-control" id="checkin_date" style="height:30px;">									
										<label class="checkin_day" style="font-size:13px;">월요일</label>
										
									</div>
									<div class="test aa dd space"></div>
	                				<div class="test aa dd recheck" style="text-align:left;">
	                				
										<b>체크아웃</b><br>
										<input type="text" class="form-control" id="checkout_date" style="height:30px;">										
										<label class="checkout_day" style="font-size:13px;">금요일</label>               				
	                				
	                				</div>
	                				<div class="test aa dd night">
	                					<span class="widget-query-nights" id="rnrq-nights"><span><span class="widget-query-num-nights">4</span> </span> <span class="widget-query-nights-label">박</span></span>
	                				</div>
	                			</div>
	                			<div class="test aa dd research3" style="text-align: justify; ">
	                				<div class="test aa dd div3_1" style="padding-top: 7%; padding-left: 3%;">

	                					<b>객실</b><br>
	                					<select name="q-rooms" class="query-rooms" id="rnrq-rooms"><option value="1" selected="selected">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9+</option></select>

	                				</div>
	                				<div class="test aa dd div3_2"></div>
	                				<div class="widget-query-adults aa dd div3_3" style="padding-top:7%;"><b>성인</b><br><select name="q-room-0-adults" id="rnrq-room-0-adults">Desktop<option value="1">1</option><option value="2" selected="selected">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option></select><br><span style="font-size:13px;">만 18세 이상</span></div>
	                				<div class="test aa dd div3_2"></div>
	                				<div class="widget-query-children aa dd div3_4" style="padding-top:7%;"><b>어린이/청소년</b><br><select name="q-room-0-children" id="rnrq-room-0-children"><option value="0" selected="selected">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option></select><br><span style="font-size:13px;">만 17세 이하</span></div>
	                					
	                			</div>
	                			<div class="test aa dd research4" style="padding-top: 3%;">
	                				<button class="detailBtn btn btn-primary btn-block text-white" style="width:70%; height:50%; line-height: 1px;">검색</button>
	                			</div>
	                			</div>
                			</div>                		
                		</form>
                	</div>	<!-- 다시 검색창 div -->
                </div>
                <div class="body_4_Div test aa">
                	<div class="roomDiv test aa">	<!-- 룸 정보 div -->
                		
                		<!--  -->
                		
                		<div class="test resultWrap aa">
							<div class="test d1 dd aa">							
								<div class="test d3 aa title">
									<a href="#" style="font-weight:bold; font-size:1.5em; align:left;">스탠다드 더블룸</a><br>
								</div>
								<div class="test d4 aa">
									<div class="test dd d5 aa">
										<div class="test imgDiv aa">썸네일</div>
									</div>
									<div class="test dd d6">설명1</div>
									<div class="test dd d9">설명2</div>
								</div>
							</div>

							<div class="test d2 dd aa">
								<div class="test d7 aa">가격</div>
								<div class="test d8 aa">
									<button class="detailBtn btn btn-primary btn-block text-white" style="width:70%;">예약하기</button>
								</div>							
							</div>
						</div><br>
						
						<!--  -->
						
						<div class="test resultWrap aa">
							<div class="test d1 dd aa">							
								<div class="test d3 aa title">
									<a href="#" style="font-weight:bold; font-size:1.5em; align:left;">스탠다드 더블룸</a><br>
								</div>
								<div class="test d4 aa">
									<div class="test dd d5 aa">
										<div class="test imgDiv aa">썸네일</div>
									</div>
									<div class="test dd d6">설명1</div>
									<div class="test dd d9">설명2</div>
								</div>
							</div>

							<div class="test d2 dd aa">
								<div class="test d7 aa">가격</div>
								<div class="test d8 aa">
									<button class="detailBtn btn btn-primary btn-block text-white" style="width:70%;">예약하기</button>
								</div>							
							</div>
						</div><br>
						
						<!--  -->
                		
                	</div>
                </div>

            </div>

        </div>
    </section>
    
    <div id="routeModal" class="popModal">
    	<div class="modal-content">
    		<span class="close">&times;</span>
    		<div id="map_div"></div>
      		<p id="result">결과 표시</p>
    	</div>    
    </div>
    
    <!--  -->
    
    <div id="BigMapModal" class="popModal">
    	<div class="modal-content">
    		<span class="close">&times;</span>
    		<div id="map2"></div>
    	</div>    
    </div>
    
    
    <script>
    
    var container2 = document.getElementById('map2');

	var options = {
		center : new kakao.maps.LatLng(33.506768, 126.493103), /* 지도 중심 좌표 */
		level : 3
	};

	var map2 = new kakao.maps.Map(container2, options); /* 지도 생성 */

	var markerPosition = new kakao.maps.LatLng(33.506768,
			126.493103) /* 마커 표시될 위치 */

	var marker = new kakao.maps.Marker({ /* 마커 생성 */
		position : markerPosition
	});

	marker.setMap(map2); /* 마커 표시 */
	
	
	
	 	// routeModal
	    var routeModal = document.getElementById('routeModal');
	    var routeBtn = document.getElementById("routeBtn");
	
	    // Get the <span> element that closes the modal
	    var span = document.getElementsByClassName("close");                                          
	
	    // When the user clicks on the button, open the modal 
	    routeBtn.onclick = function() {
	    	routeModal.style.display = "block";
	    } 
	    
	    /*  */
	    
	    // bigMapModal
	    var bigMapModal = document.getElementById('BigMapModal');
	    var bigMapBtn = document.getElementById("map");
	    
	 	// When the user clicks on the button, open the modal 
	    bigMapBtn.onclick = function() {
	    	bigMapModal.style.display = "block";	
	    	map2.relayout();
	    	map2.setCenter(new kakao.maps.LatLng(33.506768, 126.493103));
	    	
	    } 
	 	
	 	/*  */
	 	
	 	
	 	
	 
					
					
					
	</script>
    
    
    <%-- 풋터 --%>
    <%@ include file="../main/footer.jsp" %>

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