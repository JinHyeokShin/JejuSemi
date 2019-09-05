<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="accommodation.model.vo.*, java.text.SimpleDateFormat, java.util.*, accommodation.model.service.*"%>
    
<%
	Acm acm = (Acm)request.getAttribute("acm");
	String checkIn = request.getParameter("checkIn");
	String checkOut = request.getParameter("checkOut");
	int adult = Integer.parseInt(request.getParameter("adult"));
	int child = Integer.parseInt(request.getParameter("child"));
	
	System.out.println(checkIn);		// 콘솔 확인용 출력
	System.out.println(checkOut);
	
	ArrayList<AcmImg> acmImgList = (ArrayList<AcmImg>)request.getAttribute("acmImgList");
	
	String[] desArr1 = acm.getAcmDescriptA().split("\\+");
	String[] desArr2 = acm.getAcmDescriptB().split("\\+");
	
	ArrayList<Room> roomList = (ArrayList<Room>)request.getAttribute("roomList");
	
	double avg = (double)request.getAttribute("avg");
	
	
		
 %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9baefdf8cbf2ee252bc9b7dc403ad63d"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">


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

<script	src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=1e17b2f2-a4b7-4aae-ad14-3908433f0815"></script>

<!-- 발급받은 인증키를 위에 넣는다 -->



<script type="text/javascript">

	
	

	$(function(){
		$('html, body').animate( { scrollTop : 750 }, 400 );
	});



	function nights() {
		var strDate1 = "<%=checkIn%>";
 		var strDate2 = "<%=checkOut%>";
 		var arr1 = strDate1.split('-');
 		var arr2 = strDate2.split('-');
 		var dat1 = new Date(arr1[0], arr1[1], arr1[2]);
 		var dat2 = new Date(arr2[0], arr2[1], arr2[2]);

 	
 	    // 날짜 차이 알아 내기
 	    var diff = dat2 - dat1;
 	    var currDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
 	    var currMonth = currDay * 30;// 월 만듬
 	    var currYear = currMonth * 12; // 년 만듬 
 	    
 		$("#numNight").text(parseInt(diff/currDay)+'박');
 	    
 		var week = ['일', '월', '화', '수', '목', '금', '토'];
		var checkInDay = week[new Date(strDate1).getDay()];
		var checkOutDay = week[new Date(strDate2).getDay()];
		
		$(".checkin_day").text(checkInDay+'요일');
		$(".checkout_day").text(checkOutDay+'요일');
		
		$("#rnrq-room-0-adults").val(<%=adult%>).prop("selected", true);
		$("#rnrq-room-0-children").val(<%=child%>).prop("selected", true);
	}

	
	
	
	
	

	var jejuAirportX = 33.506179;
	var jejuAirportY = 126.493615;
	var jejuPortX = 33.525254;
	var jejuPortY = 126.543845;
	
	startX = jejuAirportY;
	startY = jejuAirportX;
	
	var endX = <%=acm.getAcmCoordY()%>;
	var endY = <%=acm.getAcmCoordX()%>;
	
	var m = null;
		
	function initTmap() {
		
		
		
		// 경로 탐색 출발지점과 도착 지점의 좌표
		// 구글 지도에서 나오는 좌표의 x, y를 바꾸면 된다.
		console.log(m);
		
		if(m != "a"){
			console.log("ggg");
			map = new Tmap.Map({
			div : 'map_div', // 결과 지도를 표시할 곳
			width : "700px", // 가로와 세로 사이즈는 픽셀로 적을 수도 있고
			height : "400px" // 퍼센트로 적을 수도 있다. 홈페이지 예제는 픽셀로 되어 있음.
			});
		} else{
			routeLayer.removeAllFeatures();
		}
		
		m="a";
		
		<%-- var endX = <%=acm.getAcmCoordY()%>;
		var endY = <%=acm.getAcmCoordX()%>; --%>
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
		body.modal-open{
			overflow:hidden;
		}
                
         li{
            list-style-type: none;
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
            background: #f8f9fa;
            border-left: 1px solid lightgray;
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
            padding-top: 10px;
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
        	height:70%;
        	text-align: right;
        	padding:15px;
        	line-height: initial;
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
        .title{
       		text-align:left;
        	text-indent: 25px;
        }
        .detailBtn{
        	margin:auto;
        }
        .resultSection{
        	height:auto;
        	
        }
        .headDiv{
            height: 130px;
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
        	height: 300px;
        	align:left;
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
        	background: #f8f9fa;
        }
        .research1{
        	width:27%;
        	height:100%;
        }
        .research2{
        	width: 40%;
        	height:100%;
        }
        .research3{
        	width: 21%;
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
        	width:42%;
        	height:100%;
        }
        .space{
        	width:3%;
        	height:100%;
        }
        .night{
        	width:10%;
        	height:100%;
        	padding-top:28px;
        }
        /* .div3_1{
        	width:0%;
        	height:100%;
        } */
        .div3_2{
        	width:4%;
        	height:100%;
        }
        .div3_3{
        	width:38%;
        	height:100%;
        	text-align:right;
        }
        .div3_4{
        	width:54%;
        	height:100%;
        	text-align:right;
        }
        .imgSize{
        	height:500px;
        }
        .imgSize2{
        	width: 300px;
            height: 170px;
        }
        .map{
        	width: 100%;
        	height: 50%;
        }
        .xxx{
        	width: 100%;
        	height: 4%;
        }
        .route{
        	width: 100%;
        	height: 46%;
        	border-radius: 15px;
        }
               
        .route1{
        	width: 100%;
        	height:25%;
        }
        .route2{
        	width: 100%;
        	height:75%;
        	padding:13px;
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
        .des1{
        	width:35%;
        	height:100%;
        }
        .des2{
        	width:35%;
        	height:100%;
        }
        .des3{
        	width:30%;
        	height:100%;
        }
        .des1, .des2{
        	padding-top:12px;
        	line-height: initial;
        }
        .des3{
        	line-height: initial;
        }
        .pricePerNight{
        	font-size: 40px;
        	color:#4492b8;
        }
       .payRadio1{		
		position: absolute;
	    display:none;
		}
		.payLabel{
			display: inline-block;
		    height: 28px;
		    margin: 0;
		    padding-left: 27px;
		    background: url("<%= request.getContextPath() %>/resources/images/sprite_chk.png") 0 -32px no-repeat;
		    font-weight: bold;
		    line-height: 28px;
		    cursor: pointer;
		}
		.paypay{
			background-position: 0 0; 
		}
		.hideTable{
		display:none
		}
		.des3_1{
			height: 5%;
		}
		.des3_2{
			height: 85%;
			border-radius: 15px;
		}
		.des3_2_1{
			height: 25%;
			padding: 30px;
		}
		.des3_2_2{
			height: 75%;
			padding:15px;
		}
		.des3_2_2_1{
			width:100%;
			height:100%;
			border-radius: 15px;
			background: white;
		}
		.des3_2_2_1_1{
			height: 65%;
			padding: 30px 80px;
		}
		.des3_2_2_1_2{
			height: 35%;
			padding: 15px;
		}
		
        
</style>

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200" onload="nights()">


	<%-- 헤더,메뉴바 --%>
    <%@ include file="../main/header.jsp" %>
    
    <%
    	if(loginUser == null){
    		loginUser = new Member();
    		loginUser.setMemNum(0);
    	}
    
    %>
    
    <style>
    	.map_wrap {position:relative;overflow:hidden;width:100%;height:350px;}
		.radius_border{border:1px solid #919191;border-radius:5px;}     
		.custom_typecontrol {position:absolute;top:10px;right:10px;overflow:hidden;width:132px;height:30px;margin:0;padding:0;z-index:2;font-size:12px;font-family:'Malgun Gothic', '맑은 고딕', sans-serif;}
		.custom_typecontrol span {display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;z-index:2;cursor:pointer;}
		.custom_typecontrol .skyBtn {background:#fff;background:linear-gradient(#fff,  #e6e6e6);}       
		.custom_typecontrol .skyBtn:hover {background:#f5f5f5;background:linear-gradient(#f5f5f5,#e3e3e3);}
		.custom_typecontrol .skyBtn:active {background:#e6e6e6;background:linear-gradient(#e6e6e6, #fff);}    
		.custom_typecontrol .selected_btn {color:#fff;background:#425470;background:linear-gradient(#425470, #5b6d8a);}
		.custom_typecontrol .selected_btn:hover {color:#fff;}   
		.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:2;background-color:#f5f5f5;} 
		.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
		.custom_zoomcontrol span img {width:15px;padding:12px 0;z-index:2;border:none;}             
		.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}
    </style>
    
    
    
    <section class="detailSection" style="text-align:center;">
    	<div class="detailWrap aa container">
            <div class="headDiv aa" align="left">			<!-- header div -->
            <label style="font-weight:bold; font-size:3em; color:#fd7e14; margin-bottom:0px;"><%=acm.getAcmName()%></label><br>
            <label style="font-size: 18px; text-indent: 10px;"><%=acm.getAcmAddress()%></label>
            </div>		
            <div class="bodyDiv aa">
                <div class="body_1_Div aa">	<!-- 사진들어갈 div -->
					<div class="slideImgDiv aa dd">

						<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								
								<%for(int i = 0; i < acmImgList.size(); i++){ %>
									<%if(i == 0){ %>
										<li data-target="#carouselExampleIndicators" data-slide-to="0"class="active"></li>
									<%} else {%>
										<li data-target="#carouselExampleIndicators" data-slide-to="<%=i%>"></li>
									<%} %>
								<%} %>
								
								
							</ol>
							<div class="carousel-inner">
								
								<%for(int i = 0; i < acmImgList.size(); i++){ %>
									<%if(i == 0){ %>
										<div class="carousel-item active">
											<img class="d-block w-100 imgSize" src="<%=acmImgList.get(i).getImgPath() %>">
										</div>									
									<%} else {%>
										<div class="carousel-item">
											<img class="d-block w-100 imgSize" src="<%=acmImgList.get(i).getImgPath() %>">
										</div>
									<%} %>									
								<%} %>							
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
					
					<div class="aa dd space"></div>
					
					<div class="mapDiv aa dd">	  <!-- 지도/경로 버튼 들어갈 div -->
					
						<div class="aa dd map" id="map"></div>	<!-- 지도 들어가는 div -->						
						
						
						<script>
							var container = document.getElementById('map');
														
							var options = {
								center : new kakao.maps.LatLng(<%=acm.getAcmCoordX()%>,<%=acm.getAcmCoordY() %>),	/* 지도 중심 좌표 */
								level : 3
							};

							var map = new kakao.maps.Map(container, options); /* 지도 생성 */
														
							var markerPosition  = new kakao.maps.LatLng(<%=acm.getAcmCoordX()%>,<%=acm.getAcmCoordY() %>)	/* 마커 표시될 위치 */
							
							var marker = new kakao.maps.Marker({	/* 마커 생성 */
							    position: markerPosition
							});
							
							marker.setMap(map);	/* 마커 표시 */													
							
						</script>
						<div class="xxx dd"></div>
						<div class="aa dd route bg-light">
							
							<div class="aa route1">
								<b style="font-weight: bold; font-size: 1.5em; color: #fd7e14; line-height: 70px;">경로안내</b>
							</div>
							<div class="aa route2">
								<div class="aa route2_1" style="width:100%; height:100%;">
								
									<table class="routeTable" id="table1" style="width:100%; height:100%; border-radius: 15px; background:white;">
										<tr style="height:25%">
											<td style="width:25%">출발지 :</td>
											<td colspan="3" style="width:55%; text-align:left;">
												<input type="radio" class="payRadio1" name="payRadio1" id="payRadio1_1">
												<label for="payRadio1_1" class="payLabel label1" value="jeju1">제주공항</label>
											</td>
										</tr>
										<tr style="height:25%">
											<td style="width:25%"></td>
											<td colspan="2" style="width:55%; text-align:left;">
												<input type="radio" class="payRadio1" name="payRadio1" id="payRadio1_2">
												<label for="payRadio1_2" class="payLabel label2" value="jeju2">제주여객터미널</label>
											</td>
											<td style="width:20%"><img src="<%=contextPath %>/resources/images/swap.png" id="swap"></td>
										</tr>
										<tr style="height:25%">
											<td style="width:25%">도착지 :</td>
											<td colspan="3" style="width:55%; text-align:left; font-weight: bold;"><%=acm.getAcmName() %></td>
										</tr>
										<tr style="height:25%">
											<td colspan="4"><button class="detailBtn btn btn-primary btn-block text-white" id="routeBtn" style="width:70%; height:70%; line-height: 1px; padding-bottom: 10px;">경로보기</button></td>
										</tr>								
									</table>
									
									
									<table class="routeTable hideTable" id="table2" style="width:100%; height:100%; border-radius: 15px; background:white;">
										<tr style="height:25%">
											<td style="width:25%">출발지 :</td>
											<td colspan="3" style="width:55%; text-align:left; font-weight: bold;"><%=acm.getAcmName() %></td>
											
											
										</tr>
										<tr style="height:25%">
											<td style="width:25%">도착지 :</td>
											<td colspan="2" style="width:55%; text-align:left;">
												<input type="radio" class="payRadio1" name="payRadio1" id="payRadio1_1">
												<label for="payRadio1_1" class="payLabel label1" value="jeju1">제주공항</label>
											</td>
											
											
											<td style="width:20%"><img src="<%=contextPath %>/resources/images/swap.png" id="swap" class="swap"></td>
										</tr>
										<tr style="height:25%">
											<td style="width:25%"></td>
											<td colspan="3" style="width:55%; text-align:left;">
												<input type="radio" class="payRadio1" name="payRadio1" id="payRadio1_2">
												<label for="payRadio1_2" class="payLabel label2" value="jeju2">제주여객터미널</label>
											</td>
											
										</tr>
										
										<tr style="height:25%">
											<td colspan="4"><button class="detailBtn btn btn-primary btn-block text-white" id="routeBtn" style="width:70%; height:70%; line-height: 1px; padding-bottom: 10px;">경로보기</button></td>
										</tr>								
									</table>
									
								</div>
							</div>
							
							<script>
								var tableFlag = 0;
							
								/* 라디오버튼 이미지 메소드 */
								$(document).on('click',".label1",function(){
									$(".label1").addClass("paypay");
									$(".label2").removeClass("paypay");
									if(tableFlag == 0){
										startX = jejuAirportY;
										startY = jejuAirportX;
									} else if(tableFlag == 1){
										endX = jejuAirportY;
										endY = jejuAirportX;
									}
																	
								});
								$(document).on('click',".label2",function(){
									$(".label2").addClass("paypay");
									$(".label1").removeClass("paypay");
									if(tableFlag == 0){
										startX = jejuPortY;
										startY = jejuPortX;
									} else if(tableFlag == 1){
										endX = jejuPortY;
										endY = jejuPortX;
									}									
								});
								
								
								/* swap 버튼 작동 메소드 */
								
								$(document).on('click','#swap',function(){
									$("#table1").addClass("hideTable");
									$("#table2").removeClass("hideTable");
									tableFlag = 1;
									startX = <%=acm.getAcmCoordY()%>;
									startY = <%=acm.getAcmCoordX()%>;
									$('.label1').click();
								});
								
								$(document).on('click','.swap',function(){
									$("#table2").addClass("hideTable");
									$("#table1").removeClass("hideTable");
									tableFlag = 0;
									endX = <%=acm.getAcmCoordY()%>;
									endY = <%=acm.getAcmCoordX()%>;
									$('.label1').click();
								});
								
								
								
								
								
							</script>
							
							
						</div>					
					</div>	
                </div>
                
                <div class="body_2_Div aa">
                	<div class="des1 aa dd" align="left" style="text-indent:120px;">
                		<b style="font-weight:bold; font-size:20px;">주요 편의 시설</b>
                		<ul align="left" style="text-indent:120px;">
                			<%for(String a : desArr1) {%>
                				<li style="font-size:15px"><span style="color:yellowgreen">✔ </span><%=a %></li>
                			<%} %>
                		</ul>
                	</div>               		
                		
                	<div class="des2 aa dd" align="left" style="text-indent:60px;">
                		<b style="font-weight:bold; font-size:20px;">추가 편의 시설/서비스</b>
                		<ul align="left" style="text-indent:60px;">
                			<%for(String a : desArr2) {%>
                				<li style="font-size:15px"><span style="color:yellowgreen">✔ </span> <%=a %></li>
                			<%} %>
                		</ul>
                	</div>
                		
                	<div class="des3 aa dd">
                		<div class="des3_1"></div>
                		<div class="des3_2 aa bg-light">
                			<div class="des3_2_1 aa">
                				
                				<div class="ui toggle checkbox">
								  <input type="checkbox" name="like" id="like">
								  <label>즐겨찾기</label>
								</div>
                				
                			</div>
                			<div class="des3_2_2 aa">
                				<div class="des3_2_2_1 aa">
                					<div class="des3_2_2_1_1 aa ">
                						<img src="<%=contextPath%>/resources/images/star1.png" style="float:left; width: 50px; display: inline-block;">
                						<b id="avgPoint" style="font-size: 45px; display: inline-block; float: left;">&nbsp;<%=avg %></b>
                					</div>
                					<div class="des3_2_2_1_2 aa ">
                						<a id="allReview">이 숙소의 모든 리뷰 보러가기</a>
                					</div>
                				</div>
                			</div>
                		</div>
                	</div>
                	
                </div>		<!-- 설명들어갈 div -->
                
                <script>
                	var likeFlag = 0;
                
                	$(document).on('change','#like',function(){
                		if($('#like').prop('checked')){
                			likeFlag = 1;		/* 체크 됐을때 */
                		} else{
                			likeFlag = 2;		/* 체크 안됐을때 */
                		}
                		
                		$.ajax({
                			url:"like.ac",
                			type:"post",
                			data:{likeFlag:likeFlag,
                				  acmNum:<%=acm.getAcmNum()%>
                				 },
                			success:function(result){
                				if(result == 1){
                					$("#like").prop("checked",true);
                					console.log("찜하기 성공");
                				}else if(result == 2){
                					$("#like").prop("checked",false);
                					console.log("찜삭제 성공");
                				}
                			}
                		});                		
                	});
                	
                	
                	$(function(){
            			console.log("찜했는지 검사");
            			$.ajax({
            				url:"check.li",
            				type:"post",
            				data:{memNum:<%=loginUser.getMemNum()%>,
            					  acmNum:<%=acm.getAcmNum()%>},
            				success:function(result){
            					if(result == 1){
                					$("#like").prop("checked",true);
                					console.log("찜한 숙소 입니다.");
            					} else{
            						$("#like").prop("checked",false);
            					}          					
            				},
            				error:function(){
            					console.log("ajax 통신 실패");
            				}
            			});
            		})
                
                </script>
                
                
                <!-- 다시 검색하는 위젯 -->
                
                <div class="body_3_Div aa">                	
                	<form class="reSearchForm aa" action="<%= request.getContextPath() %>/detail.ac?acmNum=<%=acm.getAcmNum() %>" method="post" id="searchForm">
                		<div class="reSearchWrap test aa">
                			<div class="reSearchBar test aa">
                			
	                			<div class="aa dd research1" style="text-align:left; padding:20px;">
	                			<b>목적지 또는 숙박시설</b><br>
	                			<input type="text" class="reText form-control" style="height:30px;" value="<%=acm.getAcmName()%>" readonly>
	                			</div>
	                			
	                			<div class="aa dd research2" style="padding:10px; padding-top:18px;">
	                				<div class="aa dd recheck" style="text-align:left;">
	                				
										<b>체크인</b><br>
										<input type="text" class="form-control dal reDate" id="checkin_date" style="height:30px;" name="checkIn" value="<%=checkIn%>">									
										<label class="checkin_day" style="font-size:13px;">월요일</label>
										
									</div>
									<div class="aa dd space"></div>
	                				<div class="aa dd recheck" style="text-align:left;">
	                				
										<b>체크아웃</b><br>
										<input type="text" class="form-control dal reDate" id="checkout_date" style="height:30px;" name="checkOut" value="<%=checkOut%>">										
										<label class="checkout_day" style="font-size:13px;">금요일</label>               				
	                				
	                				</div>
	                				<div class="aa dd night" style="text-align:right;">
	                					<span class="widget-query-nights" id="numNight"></span>
	                				</div>
	                			</div>
	                			<div class="aa dd research3" style="text-align: justify; ">
	                				
	                				<div class="aa dd div3_2"></div>
	                				<div class="widget-query-adults aa dd div3_3" style="padding-top:7%;"><b>성인</b><br><select name="adult" id="rnrq-room-0-adults" value="<%=adult%>"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option></select><br><span style="font-size:13px;">만 18세 이상</span></div>
	                				<div class="aa dd div3_2"></div>
	                				<div class="widget-query-children aa dd div3_4" style="padding-top:7%;"><b>어린이/청소년</b><br><select name="child" id="rnrq-room-0-children" value="<%=child%>"><option value="0" selected="selected">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option></select><br><span style="font-size:13px;">만 17세 이하</span></div>
	                					
	                			</div>
	                			<div class="aa dd research4" style="padding-top: 3%;">
	                				<button class="reSearchBtn btn btn-primary btn-block text-white" style="width:70%; height:50%; line-height: 1px; margin-left: auto; margin-right: auto;">검색</button>
	                			</div>
	                			</div>
                			</div>                		
                		</form>
                	</div>	
                	
                	<script>
                		$(".reSearchBtn").click(function(){
                			$("#searchForm").submit();
                		});
                	
                	</script>
                	
                	<!-- 다시 검색창 div -->
                
                	
                	
                </div>
                <div class="body_4_Div aa">
                	<div class="roomDiv aa">	<!-- 룸 정보 div -->
                		
                		<!--  -->
                		<%for(Room r : roomList){ %>
                			
                			<%ArrayList<RoomImg> roomImgList = new AcmService().roomImgListView(r.getRoomNum());%>

							<div class="test resultWrap aa bg-light">
								<div class="d1 dd aa">
									<div class="d3 aa title">
										<a href="#"
											style="font-weight:bold; font-size:1.5em; align:left; line-height:2.5;"><%=r.getRoomName() %></a><br>
									</div>
									
									
									
									<div class="d4 aa">
										<div class="dd d5 aa">
											<div class="imgDiv aa">
											
												<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
													<ol class="carousel-indicators">
														
														<%for(int i = 0; i < roomImgList.size(); i++){ %>
															<%if(i == 0){ %>
																<li data-target="#carouselExampleIndicators" data-slide-to="0"class="active"></li>
															<%} else {%>
																<li data-target="#carouselExampleIndicators" data-slide-to="<%=i%>"></li>
															<%} %>
														<%} %>
														
														
													</ol>
													<div class="carousel-inner">
														
														<%for(int i = 0; i < roomImgList.size(); i++){ %>
															<%if(i == 0){ %>
																<div class="carousel-item active">
																	<img class="d-block w-100 imgSize2" src="<%=roomImgList.get(i).getImgPath() %>">
																</div>									
															<%} else {%>
																<div class="carousel-item">
																	<img class="d-block w-100 imgSize2" src="<%=roomImgList.get(i).getImgPath() %>">
																</div>
															<%} %>									
														<%} %>
													
														
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
											
											
											</div>
										</div>
										<div class="dd d6 des3" align="left" style="text-indent:50px;">
											<b style="font-weight:bold">기본사항</b>
						                		<ul align="left" style="text-indent:50px;">
						                			<%String[] arr1 = r.getRoomDescriptA().split("\\+"); %>
						                			<%for(String a : arr1) {%>
						                				<li style="font-size:13px"><span style="color:yellowgreen">✔ </span><%=a %></li>
						                			<%} %>
						                		</ul>
										</div>
										<div class="dd d9 des3" align="left" style="text-indent:10px;">
											<b style="font-weight:bold">세부정보</b>
						                		<ul align="left" style="text-indent:10px;">
						                			<%String[] arr2 = r.getRoomDescriptB().split("\\+"); %>
						                			<%for(String a : arr2) {%>
						                				<li style="font-size:13px"><span style="color:yellowgreen">✔ </span><%=a %></li>
						                			<%} %>
						                		</ul>
										</div>
									</div>
								</div>
		
								<div class="d2 dd aa">
									<div class="d7 aa"><b style="font-weight:bold; font-size:20px;">1박 가격</b> <br><span class="pricePerNight">&#8361;<%=r.getRoomPrice() %></span></div>
									<div class="d8 aa">
										<input type="hidden" name="roomNum" value="<%=r.getRoomNum()%>">
										<button class="reservBtn detailBtn btn btn-primary btn-block text-white"
											style="width: 70%;">예약하기</button>
									</div>
								</div>
							</div>
							<br>
						<%} %>

						<script>
							$(".reservBtn").click(function(){
								location.href="<%=contextPath%>/reserv.ac?roomNum="+$(this).prev().val()+
										      "&acmNum=<%=acm.getAcmNum()%>&checkIn=<%=checkIn%>&checkOut=<%=checkOut%>&adult=<%=adult%>&child=<%=child%>";
							});
						
						
						</script>
                		
						
						<!--  -->
                		
                	</div>
                </div>

            </div>

        </div>
    </section>
    
    <!-- 티맵 모달 -->
    
    <div id="routeModal" class="popModal">
    	<div class="modal-content">
    		<span class="close" style="margin-left:auto;">&times;</span>
    		<div id="map_div"></div>
      		<p id="result">결과 표시</p>
    	</div>    
    </div>
    
    <!--  -->
    
    <div id="BigMapModal" class="popModal">
    	<div class="modal-content map_wrap" style="width:70%; height:70%;">
    		<span class="close" style="margin-left:auto;">&times;</span>
    		<div id="map2">
    			<div class="custom_typecontrol radius_border">
        			<span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
        			<span id="btnSkyview" class="skyBtn" onclick="setMapType('skyview')">스카이뷰</span>
    				</div>
    			<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
    			<div class="custom_zoomcontrol radius_border"> 
			        <span onclick="zoomIn()"><img src="<%= request.getContextPath() %>/resources/images/ico_plus.png"></span>  
			        <span onclick="zoomOut()"><img src="<%= request.getContextPath() %>/resources/images/ico_minus.png"></span>
			    </div>  		
    		</div>
    	</div>    
    </div>
    
    
    
    
    
    
    
    
    
    <script>
    
    var mapContainer = document.getElementById('map2'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(<%=acm.getAcmCoordX()%>,<%=acm.getAcmCoordY() %>), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	var map2 = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    
	function setMapType(maptype) { 
	    var roadmapControl = document.getElementById('btnRoadmap');
	    var skyviewControl = document.getElementById('btnSkyview'); 
	    if (maptype === 'roadmap') {
	        map2.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);    
	        roadmapControl.className = 'selected_btn';
	        skyviewControl.className = 'skyBtn';
	    } else {
	        map2.setMapTypeId(kakao.maps.MapTypeId.HYBRID);    
	        skyviewControl.className = 'selected_btn';
	        roadmapControl.className = 'skyBtn';
	    }
	}

	// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomIn() {
	    map2.setLevel(map2.getLevel() - 1);
	}

	// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomOut() {
	    map2.setLevel(map2.getLevel() + 1);
	}
	
	
	
	
	
	var markerPosition = new kakao.maps.LatLng(<%=acm.getAcmCoordX()%>,<%=acm.getAcmCoordY() %>) /* 마커 표시될 위치 */

	var marker = new kakao.maps.Marker({ /* 마커 생성 */
		position : markerPosition
	});

	marker.setMap(map2); /* 마커 표시 */
	
	
		/* 티맵 띄우는 메소드 */	
	
	 	// routeModal
	    var routeModal = document.getElementById('routeModal');
	    var routeBtn = document.getElementById("routeBtn");
	
	    // Get the <span> element that closes the modal
	    var span = document.getElementsByClassName("close");                                          
	
	    // When the user clicks on the button, open the modal 
	    $(document).on('click','#routeBtn',function(){
	    	initTmap();
	    	routeModal.style.display = "block";
	    	$('body').addClass("modal-open");
	    });
	    
	    
	    $(".close").click(function(){
            // console.log("sss");
            $(this).parents(".popModal").css("display", "none");
            $('body').removeClass("modal-open");
          });
	    
	    
	    
	    
	    /*  */
	    
	    // bigMapModal
	    var bigMapModal = document.getElementById('BigMapModal');
	    var bigMapBtn = document.getElementById("map");
	    
	 	// When the user clicks on the button, open the modal 
	    bigMapBtn.onclick = function() {
	    	bigMapModal.style.display = "block";	
	    	map2.relayout();
	    	map2.setCenter(new kakao.maps.LatLng(<%=acm.getAcmCoordX()%>,<%=acm.getAcmCoordY() %>));
	    	
	    } 
	 	
	 	/*  */
	 	
	 	
	 	$(".reDate").change(function(){
	 			 		
	 		var strDate1 = $("#checkin_date").val();
	 		var strDate2 = $("#checkout_date").val();
	 		var arr1 = strDate1.split('-');
	 		var arr2 = strDate2.split('-');
	 		
	 		/* console.log(arr1);
	 		console.log(arr2); */
	 		
	 		var dat1 = new Date(arr1[0], arr1[1]-1, arr1[2]);
	 		var dat2 = new Date(arr2[0], arr2[1]-1, arr2[2]);
	 	
	 		/* console.log(dat2);	 */
	 		
	 	    // 날짜 차이 알아 내기
	 	    var diff = dat2.getTime() - dat1.getTime();
	 	    var result = Math.floor(diff/1000/60/60/24);
	 	    
	 	    
	 	    if(diff <= 0){
	 	    	
	 	    	dat2.setDate(dat1.getDate()+1);
	 	    	
	 	    	var year = dat2.getFullYear();
	 	    	var month = dat2.getMonth()+1;
	 	    	var day = dat2.getDate();
	 	    		 	    	
		 	    var month1 = month;
		 	    var day1 = day;
		 	    
		 	    	if(month1 < 10){
		 	    		month1 = "0"+month1;
		 	    	}
		 	    	if(day1 < 10){
		 	    		day1 = "0"+day1;
		 	    	}
		 	    	
	 	    	var dat2_2 = (year + "-" + month1 + "-" + day1);
	 	    	$("#checkout_date").val(dat2_2); // 하루 밀린 날짜 출력(string)
	 	    	
	 	    	//var dat2_3 = new Date(dat1.getFullYear(),month1,day1); // 실제 날짜로 만들어서 계산
	 	    	
	 	    	diff = dat2.getTime() - dat1.getTime();
	 	    	result = Math.floor(diff/1000/60/60/24);
	 	    	$("#numNight").text(result+'박');
	 	    } else{
		 		$("#numNight").text(result+'박');
	 	    }
	 	    
	 	    
	 	    
	 	    /* 요일 나타내기 */
			var week = ['일', '월', '화', '수', '목', '금', '토'];
			var checkInDay = week[new Date(strDate1).getDay()];
			var checkOutDay = week[new Date(strDate2).getDay()];
			
			$(".checkin_day").text(checkInDay+'요일');
			$(".checkout_day").text(checkOutDay+'요일');
	 	});
		
	 	
	 	$(function(){
	 		var strArr = new Array('지금 3명의 사용자가 이 숙소를 보고 있습니다.','최근 24시간동안 5명의 사용자가 이 숙소를 예약했습니다.',
	 								'1시간전에 이 숙소가 예약되었습니다.','27분전에 이 숙소가 예약되었습니다.',
	 								'최근 24시간동안 3명의 사용자가 이 숙소를 예약했습니다.','지금 2명의 사용자가 이 숙소를 보고 있습니다.');
	 		
	 		setTimeout(() => {
	 			alertify.success(randomItem(strArr));
			}, 3000);
	 	});
	 	
	 	function randomItem(a) {
	 		return a[Math.floor(Math.random() * a.length)];
		}
	 	
	 	
	 	
	</script>
    
    
    <%-- 풋터 --%>
    <%@ include file="../main/footer.jsp" %>

<!-- <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> -->
<script src="<%= request.getContextPath() %>/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/popper.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.stellar.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.fancybox.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery.easing.1.3.js"></script>     
<script src="<%= request.getContextPath() %>/resources/js/aos.js"></script>  
<script src="<%= request.getContextPath() %>/resources/js/bootstrap-datepicker.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>   
<script src="<%= request.getContextPath() %>/resources/js/jquery.timepicker.min.js"></script> 
<script src="<%= request.getContextPath() %>/resources/js/main.js"></script>

</body>
</html>