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

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">
	<%-- 헤더,메뉴바 --%>
    <%@ include file="../main/header.jsp" %>
<script>
	$(function(){
		$('html, body').animate( { scrollTop : 750 }, 400 );
	});
</script>

	
     
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
              <h2 class="heading" data-aos="fade-up">제주 행사 소식</h2>
              <p data-aos="fade-up" data-aos-delay="100"> 제주 어디까지 가보셨어요? 수많은 제주의 축제와 행사를 취향에 맞게 선택해 보자.<br> 제주의 보석 같은 여행지가 여러분의 선택을 기다린다.</p>
            </div>
          </div>
           
           <div class="food-menu-tabs" data-aos="fade">
            <ul class="nav nav-tabs mb-5" id="myTab" role="tablist" >
              <li class="nav-item">
                <a class="nav-link active letter-spacing-2" id="m1-tab" data-toggle="tab" href="#m1" role="tab" aria-controls="m1" aria-selected="true">1월 </a>
              </li>
              <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m2-tab" data-toggle="tab" href="#m2" role="tab" aria-controls="m2" aria-selected="false">2월</a>
              </li>
              <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m3-tab" data-toggle="tab" href="#m3" role="tab" aria-controls="m3" aria-selected="false">3월</a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m4-tab" data-toggle="tab" href="#m4" role="tab" aria-controls="m4" aria-selected="false">4월 </a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m5-tab" data-toggle="tab" href="#m5" role="tab" aria-controls="m5" aria-selected="false">5월</a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m6-tab" data-toggle="tab" href="#m6" role="tab" aria-controls="m6" aria-selected="false">6월</a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m7-tab" data-toggle="tab" href="#m7" role="tab" aria-controls="m7" aria-selected="false">7월</a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m8-tab" data-toggle="tab" href="#m8" role="tab" aria-controls="m8" aria-selected="false">8월</a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m9-tab" data-toggle="tab" href="#m9" role="tab" aria-controls="m9" aria-selected="false">9월</a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m10-tab" data-toggle="tab" href="#m10" role="tab" aria-controls="m10" aria-selected="false">10월</a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m11-tab" data-toggle="tab" href="#m11" role="tab" aria-controls="m11" aria-selected="false">11월</a>
              </li>
                <li class="nav-item">
                <a class="nav-link letter-spacing-2" id="m12-tab" data-toggle="tab" href="#m12" role="tab" aria-controls="m12" aria-selected="false">12월</a>
              </li>           
            </ul>
      		<div class="tab-content py-5" id="myTabContent">
          
          
          <div class="tab-pane fade show active text-left" id="m1" role="tabpanel" aria-labelledby="1m-tab">
          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-6 h-100">
               <img src="https://api.visitjeju.net/photomng/imgpath/201811/20/c68b2685-d7fa-434f-be9c-8304f292487e.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사 일정 : 12월 20일 ~ 01월 06일</span><br><br>
                  <h2 class="mt-0 mb-3">제주윈터페스티벌</h2>
                  <p>제주시 원도심에서 즐길 수 있는 제주의 겨울!</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #겨울축제</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="200">
              <div class="media media-custom d-block mb-6 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201812/11/e3cd820e-f936-4cb1-9a0f-a32c52581a95.JPG" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사일정 : 01월 01일 10:00 ~ 14:00</span><br>
                  <h2 class="mt-0 mb-3">제19회 서귀포 겨울바다 국제펭귄수영대회</h2>
                  <p> 내용 : 펭귄수영입수, 부대행사(펭귄핀 달리기, 펭귄 씨름왕 선발 등.</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/special_jejudo/"> #콘서트&버스킹</a>
                  <a href="https://www.instagram.com/special_jejudo/"> #서귀포</a>
                  <a href="https://www.instagram.com/special_jejudo/"> #야외행사</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="300">
              <div class="media media-custom d-block mb-6 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201902/01/8d55d442-f895-4918-a11a-919ce057efe7.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사일정 : 01월 01일 ~ 06월 30일</span><br><br>
                  <h2 class="mt-0 mb-3">흑돼지 제주 관광 페스티벌 "제주즐기세"</h2>
                  <p>관광객에게 50여개 흑돼지 전문점 카카오톡 모바일 할인 쿠폰 제공하여, 할인하여 흑돼지를 맛보는 페스티벌</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #흑돼지</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/"> #먹거리</a>
                </div>
              </div>
              </div>
             </div>
            </div>
            
          <div class="tab-pane fade text-left" id="m2" role="tabpanel" aria-labelledby="2m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201811/20/8243164f-e76d-4c0b-8a99-c4a385f6bcfa.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">2018년 11월 16일 ~ 2019년 10월 27일</span><br><br>
                  <h2 class="mt-0 mb-3">빛의 벙커 : 클림트</h2>
                  <p>제주특별자치도 서귀포시 성산읍 고성리 2039-22 빛의 벙커</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #서귀포</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#벙커</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/thumbnailpath/201804/30/98040cf4-e494-4222-bf26-bbe408d814cc.png" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사일정 : 02월 02일 ~ 02월 04일</span><br><br>
                  <h2 class="mt-0 mb-3">탐라국입춘굿놀이</h2>
                  <p>제주 원도심에서 만나는 봄맞이 축제 </p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #봄축제</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/"> #1월행사</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201901/28/9fd61564-e31d-4195-a01b-be7b001bc94c.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">2019. 2. 1(금) ~ 2019. 2.28(목)</span><br><br>
                  <h2 class="mt-0 mb-3">제 20회 제주의 봄 소식 한림공원 매화축제</h2>
                  <p>새 봄! 봄의 전령사 매화를 만나보세요.</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #매화</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #제주</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/"> #한림공원</a>
                </div>
              </div>
            </div>
          </div>
          </div>


          <div class="tab-pane fade text-left" id="m3" role="tabpanel" aria-labelledby="3m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201901/03/d53448f1-779f-433b-a0d2-1e9f3f177d0d.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">기 간 : 2019. 3. 7.(목) ~ 3. 10.(일) / 4일간 ※ 오름불놓기:3.9(토)</span>
                  <h2 class="mt-0 mb-3">2019 제22회 제주들불축제</h2>
                  <p>  들불, 꿈을 싣고 세계를 밝히다 </p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #들불</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/"> #행사</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201804/30/c5f31522-cc19-4c05-a46e-51570d5ab957.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">기간: 2019. 3. 29. (금) ~ 3. 31. (일)</span><br><br>
                  <h2 class="mt-0 mb-3">제주왕벚꽃축제</h2>
                  <p>제주의 왕벚꽃 명소에서 즐기는 축제</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #벚꽃</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/"> #행사</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201902/07/e9ddad34-1a30-4a28-8dae-5426822d6201.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">기간 : 2019. 3. 1. ~ 4. 7.</span><br><br>
                  <h2 class="mt-0 mb-3">상효원튤립축제</h2>
                  <p>2019년의 봄을 가장 빨리 만나는 힐링 수목원 상효원의 봄향기 가득한 튤립축제</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #튤립</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#향효원</a>
                </div>
              </div>
            </div>
          </div>
          </div>

          <div class="tab-pane fade text-left" id="m4" role="tabpanel" aria-labelledby="4m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201904/09/0fe2490c-c44d-4ea6-9180-8d905feb9721.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일    정 : 2019. 4. 20 ~ 5. 25(매주 토요일, 총 6회) 오후 7~9시</span>
                  <h2 class="mt-0 mb-3">탐라문화콘서트 놀젠?놀장!</h2>
                  <p>인기 뮤지션 공연과 플리마켓, 관객들과 함께하는 라디오 공개방송, 매주 토요일 밤엔 탐라문화광장에서 놀자!</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #콘서트</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#공연</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201903/28/e17b94dc-fce8-4e47-9ef5-98998343806f.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">기간 : 2019.04.12(금) ～ 04.14(일) (3일간)</span><br><br>
                  <h2 class="mt-0 mb-3">제11회 우도소라축제</h2>
                  <p>장소 : 천진항, 우도면 일원</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #우도</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #소라</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#축제</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201904/16/97191e39-c1d6-45c1-bd67-715acfed6356.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">기간: 2019년 4월 3일(수) - 4월 30일(화)</span><br><br>
                  <h2 class="mt-0 mb-3">2019 4·3미술제 경야/經夜WAKE</h2>
                  <p>2019 4·3미술제 이름은 [경야/經夜WAKE] 이다. [경야/經夜WAKE] 는 밤을 새움이다</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #미술제</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#전시회</a>
                </div>
              </div>
            </div>
          </div>
          </div>

          <div class="tab-pane fade text-left" id="m5" role="tabpanel" aria-labelledby="5m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201904/05/928320d4-e5a2-4865-a4bd-bb2eb73fa663.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">두번째 바깥놀이 축제 : 5월 4일 ~ 6일</span><br><br>
                  <h2 class="mt-0 mb-3">보롬왓 축제 (두번째 바깥놀이)</h2>
                  <p>장소 : 서귀포시 표선면 번영로 2350-104(보롬왓)</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #서귀포</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #꽃</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#축제</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201904/24/b69d24c1-b541-4eff-ad6e-bf8236c7c000.JPG" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">기　　간： 2019년 5월 8일(수) ~ 5월 11일(토) / 4일간</span><br><br>
                  <h2 class="mt-0 mb-3">제6회 국제전기자동차엑스포</h2>
                  <p>장　　소： 제주국제컨벤션센터(ICC JEJU)</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #자동차</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#엑스포</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201907/08/d8c8cdda-b414-4541-bdbb-7ddfa1c659da.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">기　　간： 2019년 5월 4일 ~ 5월 5일</span><br><br>
                  <h2 class="mt-0 mb-3">방선문축제</h2>
                  <p>나도 신선처럼 노닐어볼까? 계곡에서 즐기는 문화와 예술 축제</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #계곡</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
            </div>
          </div>
          </div>

          <div class="tab-pane fade text-left" id="m6" role="tabpanel" aria-labelledby="6m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201905/27/1341df5b-c40b-4801-868f-1f85c9302283.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일자 :2019 6월1일 ~ 7월 15일</span><br><br>
                  <h2 class="mt-0 mb-3">2019 곶자왈 반딧불이 축제</h2>
                  <p>장소 : 청수리 곶자왈(웃뜨르 빛센타)</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #반딧불이</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#축제</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201905/21/b85c31ef-5731-4f45-be36-587182b36aeb.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일시 : 2019년 6월 1일(토) ~ 6월 2일(일)</span><br><br>
                  <h2 class="mt-0 mb-3">2019 제주메밀축제</h2>
                  <p>우리나라 메밀 생산량 1위 지역인 제주에서 메밀축제를 진행한다.</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #메밀</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201905/22/60f9a331-9286-4ff2-ad03-25fe6b6f7d9d.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사 일정: 05월 31일 ~ 06월 02일</span><br><br>
                  <h2 class="mt-0 mb-3">보목자리돔축제</h2>
                  <p>그림 같은 서귀포 앞바다에서 즐기는 별미 축제</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #서귀포</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #바다</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
            </div>
          </div>
          </div>

          <div class="tab-pane fade text-left" id="m7" role="tabpanel" aria-labelledby="7m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201907/02/6dcca6de-393c-4442-9f20-95bf939dfc88.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일시 : 2019. 7. 27(토) ~ 7. 28(일), 2일간 예정</span><br><br>
                  <h2 class="mt-0 mb-3">제19회 예래생태체험축제</h2>
                  <p>생태의 보고, 서귀포 예래</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #서귀포</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #생태체험</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201904/08/48923f5f-5dad-4fcf-987e-91a113052809.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사일정 : 4월 26일 ~ 8월 23일(매주 금요일, 총 18회)</span><br><br>
                  <h2 class="mt-0 mb-3">삼다공원 야간콘서트·야몬딱털장</h2>
                  <p>“도심 속 잠자는 공원이 깨어난다” Every Friday, Healing day</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #삼다공원</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#야간콘서트</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201907/08/d8c8cdda-b414-4541-bdbb-7ddfa1c659da.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사 일정: 07월 01일 ~ 08월 31일</span><br><br>
                  <h2 class="mt-0 mb-3">‘JEJU CRAFT BEER FESTA'</h2>
                  <p>제주 수제 맥주 대표 맥파이, 제주에일, 제스피를 모두 여기에서 즐기자 !</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #맥주</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
            </div>
            </div>
            </div>
            
          <div class="tab-pane fade text-left" id="m8" role="tabpanel" aria-labelledby="8m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201907/11/f68d4610-868c-4345-a177-c8061afbd255.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사 일정: 08월 08일 ~ 08월 16일</span><br><br>
                  <h2 class="mt-0 mb-3">제주국제관악제</h2>
                  <p>섬, 그 바람의 울림 '제주국제관악제'</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #관악제</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="200">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201804/30/6781057d-b717-4fde-8c7a-0cde16ca5501.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일 시 : 2019. 8. 3.(토) ~ 8. 4.(일)〔2일간 진행]</span><br><br>
                  <h2 class="mt-0 mb-3">표선해변 하얀모래축제</h2>
                  <p> 맨손 광어잡기, 연 사랑 체험, 학생 비치 싸커 대회, 해변 시네마, 하얀모래 가요제 등 </p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/special_jejudo/"> #콘서트&버스킹</a>
                  <a href="https://www.instagram.com/special_jejudo/"> #해변</a>
                  <a href="https://www.instagram.com/special_jejudo/"> #야외행사</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="300">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201907/05/b1ac4b8f-2fde-43b7-b66c-52b73907dece.PNG"  class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일시 : 2019년 8월 2일 - 4일</span><br><br>
                  <h2 class="mt-0 mb-3"><a href="#">2019 이호테우축제</a></h2>
                  <p> 장소 : 제주시 이호테우해수욕장</p>
                </div>
              </div>
              </div>
             </div>
            </div>
              

          <div class="tab-pane fade text-left" id="m9" role="tabpanel" aria-labelledby="9m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201908/08/676b3de3-8dd6-432f-b739-e7459c65c772.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post"> 9월 14일(토) ~ - 10월 12일(토) 매주토요일</span><br><br>
                  <h2 class="mt-0 mb-3">누웨마루 페스티벌</h2>
                  <p>누웨마루거리에서 펼쳐지는 선선한 가을밤 뮤직 페스티벌</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #뮤직 페스티벌</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#누웨마루</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201809/10/a8335343-6765-496c-947f-71cb32b16ef2.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일시 : 2019.09.14 ~ 09.16</span><br><br>
                  <h2 class="mt-0 mb-3">참굴비대축제</h2>
                  <p>섬 속의 섬 추자도에서 자유와 여유를 즐기자</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #굴비</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#축제</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201807/04/3baffdcd-c582-4279-bc31-05df58bcba05.JPG" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사 일정 : 2019. 9. 27 ~ 9. 29</span><br><br>
                  <h2 class="mt-0 mb-3">제 25회 서귀포칠십리 축제</h2>
                  <p>제25회 서귀포 칠십리축제는 칠십리의 전통을 되살리고, 다양한 사람들의 참여할 수 있는 화합의 장을 마련합니다.</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #서귀포</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#칠십리축제</a>
                </div>
              </div>
            </div>
            </div>
           </div>

            <div class="tab-pane fade text-left" id="m10" role="tabpanel" aria-labelledby="10m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="http://api.visitjeju.net/editorStore/file/201806/07/a69a3a52-1114-43b7-b197-aa2106a323aa.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">- 일    시 : 2018. 10. 18～10. 21</span><br><br>
                  <h2 class="mt-0 mb-3">THE CJ CUP@NINE BRIDGES JEJU</h2>
                  <p>대한민국 최초의 PGA TOUR 정규대회인 THE CJ CUP@NINE BRIDGES JEJU 가 2018년 10월 18일 부터 21일까지 제주 나인브릿지에서 개최됩니다.</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #PGA</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#골프</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201809/18/557b133d-709d-484c-ac80-29467fd7a044.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일시：2018. 10.05 ~ 10.07</span><br><br>
                  <h2 class="mt-0 mb-3">제주음식박람회</h2>
                  <p>제주음식박람회는 제주만의 독특한 음식문화를 알리고자 2016년 제주 음식 문화축제로 시작한 행사로 많은 도민과 관광객이 찾는 박람회로 발돋움했다.</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #푸드트럭</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201809/17/6cc033e4-e30c-4f1d-9ed8-d20ec3ba33bd.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일시 : 2019.10.13  ~2019.10.14</span><br><br>
                  <h2 class="mt-0 mb-3">제주마축제</h2>
                  <p>제주마축제는 말의 고장 제주에서도 가장 오래된 전통을 자랑하는 대표적인 말 테마 축제이다.</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #말</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#축제</a>
                </div>
              </div>
            </div>
            </div>
           </div>

           <div class="tab-pane fade text-left" id="m11" role="tabpanel" aria-labelledby="11m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201811/15/355f6cbc-1c0c-4ebd-b8d4-ec1abcd436f4.JPG" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">2018년 11월 29일 ~ 2019년 12월 02일</span><br><br>
                  <h2 class="mt-0 mb-3">빛의 벙커 : 클림트</h2>
                  <p>방어축제는 모슬포항에서 열리는 제주의 대표적인 해양문화축제다</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #방어</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201908/20/454f33bf-0afd-4469-a20e-d8e28a9d781a.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post"> 기간 : 2019년 11월 28일(목) ~ 12월 1일(일)</span><br><br>
                  <h2 class="mt-0 mb-3">아트제주2019</h2>
                  <p>제주 최대 규모의 국제 아트페어 아트제주가 올해 4회를 맞이한다</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #아트</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#축제</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201904/24/801e9181-6904-4c77-a7a9-ea6505f46bd1.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사 일정: 05월 04일 ~ 11월 30일</span><br><br>
                  <h2 class="mt-0 mb-3">제주100년 시간여행</h2>
                  <p>동부길 :  1919년 미밋동산에 흩날렸을 수많은 태극기를 떠올리며 느꼈을 벅찬 감동!  이제는 흔적만 남아 말이 없는 4∙3 의 잃어버린 시간을 걷는다</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #역사</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
            </div>
            </div>
            </div>

            <div class="tab-pane fade text-left" id="m12" role="tabpanel" aria-labelledby="12m-tab">
            <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201811/20/8243164f-e76d-4c0b-8a99-c4a385f6bcfa.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">일시 : 2019. 12. 22(토) ~ 2019. 12. 23(일)</span><br><br>
                  <h2 class="mt-0 mb-3">원도심이 와랑와랑</h2>
                  <p>2018 크리스마스파티</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #크리스마스</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201811/20/48ae20f4-ae4c-4e65-82c4-83742a7b0803.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">2018년 11월 16일(금) ~ 2019년 10월 27일(일)</span><br><br>
                  <h2 class="mt-0 mb-3">빛의 벙커 : 클림트</h2>
                  <p>제주특별자치도 서귀포시 성산읍 고성리 2039-22 빛의 벙커</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #맥주</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
              </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
              <div class="media media-custom d-block mb-4 h-100">
                <img src="https://api.visitjeju.net/photomng/imgpath/201907/08/d8c8cdda-b414-4541-bdbb-7ddfa1c659da.jpg" class="img-fluid">
                <div class="media-body">
                  <span class="meta-post">행사 일정: 07월 01일 ~ 08월 31일</span><br><br>
                  <h2 class="mt-0 mb-3">‘JEJU CRAFT BEER FESTA'</h2>
                  <p>제주 수제 맥주 대표 맥파이, 제주에일, 제스피를 모두 여기에서 즐기자 !</p>
                  <a href="https://www.instagram.com/special_jejudo/"> #제주</a>
                  <a href="https://www.instagram.com/explore/tags/%EC%88%98%EC%9E%85%EB%A7%A5%EC%A3%BC/"> #맥주</a>
                  <a href="https://www.instagram.com/p/B0qPfttA0ZA/">#행사</a>
                </div>
              </div>
            </div>
            </div>
            </div>
            </div>

          </div>
         </div>
      
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