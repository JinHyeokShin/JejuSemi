<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQ</title>

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

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">


<%-- 헤더,메뉴바 --%>
<%@ include file="../main/header.jsp" %>

	<div style="margin-top:60px; margin-bottom:100px;" class="container">
	 	<div class="col-md-12 col-md-offset-3" style="font-size:35px; margin-left:420px;">
           <a class="navbar-brand" style="font-size:30px"><span class="text-danger" style="font-size:35px;">Jeju</span> Boram - "FAQ"</a>
        </div>
		<div style="height:7px;"></div>
		<div class="ui styled accordion container">
		  <div class="title">
		    <i class="dropdown icon"></i>
		    		Jeju Boram 숙박 사용
		  </div>
		  <div class="content">
		    <p class="transition hidden">
		    	<b style="color:#fd7e14">의미 설명</b><br>
					10박을 모으면 참여 호텔 또는 휴가용 임대 숙소에서 사용할 수 있는 무료 숙박 1박을 받으시게 됩니다(세금 및 수수료만 지불). 2019년 11월 27일부터 사용한 무료 숙박 일마다 수수료가 부과됩니다. 앱에서 사용하실 때는 수수료가 없습니다. 무료 숙박의 금액은 적립하신 10박의 평균 요금과 같습니다.
				<br>
					온라인에서 무료 숙박을 사용하는 방법<br>
				<ol>
				<li>온라인을 통해 Jeju Boram 계정에 로그인합니다.</li>
				<li>무료 숙박 혜택을 사용할 수 있는지 확인하면서 원하는 호텔 또는 휴가용 임대 숙소를 예약합니다.</li>
				<li>선택하신 호텔 또는 휴가용 임대 숙소가 지금 결제 또는 호텔에서 지불 옵션을 제공하는 경우, 지금 결제를 선택합니다.</li>
				<li>예약 정보 요약에서 Jeju Boram 리워드 사용하기를 선택합니다.</li>
				<li>사용하려는 무료 숙박을 선택하고 예약에 적용합니다.</li>
				</ol>
					이제 총 예약 금액에 무료 숙박 할인이 적용되어 나타납니다.
				<br><br>
				
				<b style="color:#fd7e14">알아두면 좋은 정보</b>
				<ul>
				<li>무료 숙박의 금액에는 세금과 수수료가 포함되지 않습니다.
				<li>2019년 09월 11일부터 데스크톱에서 무료 숙박을 사용하는 경우 예약과 관련된 세금 및 수수료 및 사용한 무료 숙박 일마다 수수료를 지불하게 됩니다. 이 수수료는 프로그램 운영 비용으로 사용됩니다.</li>
				<li>모바일 앱에서 무료 숙박을 사용하는 경우 수수료는 제외되지만 예약 관련 세금 및 수수료는 지불해야 합니다.</li>
				<li>고객 서비스 팀에서 전화로 무료 숙박 혜택 사용을 처리할 수 없지만, 온라인 또는 모바일 앱을 통해 사용하실 수 있도록 도와드립니다.</li>
				<li>요금이 더 높은 숙박에 대해 차액을 지불하고 무료 숙박 혜택을 사용하실 수 있습니다.</li>
				<li>요금이 더 낮은 숙박에 대해 무료 숙박 혜택을 사용할 경우 차액은 환불되지 않습니다.</li>
				<li>예약의 각 숙박에 대해 1박의 무료 숙박만 사용하실 수 있습니다.</li>
				<li>호텔이나 휴가용 임대 숙소의 취소 마감 기한 전에 환불 가능한 예약을 취소하는 경우, 72시간 이내에 고객님 계정에 무료 숙박이 반환되며 모든 수수료도 환불해 드립니다. 취소 마감 기간 이후에 예약을 취소하는 경우에는 무료 숙박이 반환되지 않으며 지불하신 수수료도 환불해 드리지 않습니다.</li>
				</ul>
				<b style="color:#fd7e14">도움이 계속 필요하신 경우</b><br>
					무료 숙박 사용 시 도움이 필요하시면 저희에게 연락해 주세요.
			</p>
		  </div>
		  
		  <div class="title">
		    <i class="dropdown icon"></i>
		   			호텔 및 휴가용 임대 예약에 대한 환불
		  </div>
		  <div class="content">
		    <p class="transition hidden">
					호텔 또는 휴가용 임대 숙소 예약에 문제가 있는 경우 온라인에서 예약을 변경하실 수 있습니다. 일부 변경 사항은 무료이지만 요금이 부과되는 변경 사항도 있습니다.
				<br>
				
		    	<b style="color:#fd7e14">무료</b><br>
				<ul>
					<li>고객 이름</li>
					<li>침대 유형(호텔만 해당)</li>
					<li>흡연/비흡연</li>
					<li>특별 요청</li>
					<li>장애인 편의 시설 옵션</li>
				</ul>
				<br>
				
				<b style="color:#fd7e14">요금이 적용될 수 있음</b><br>
				<ul>
					<li>객실, 아파트 또는 다른 숙소의 유형</li>
					<li>숙박 인원</li>
					<li>여행 날짜</li>
				</ul>
				<br>
					대부분의 호텔 및 휴가용 임대 숙소 예약을 호텔 또는 휴가용 임대 숙소의 취소 기한 전에 위약금 없이 취소할 수 있습니다.
				<br><br>
				
				<b style="color:#fd7e14">환불정책</b><br>
					예약을 취소할 때 예약 이용약관에 따라 지불된 금액을 환불받으실 수 있습니다. 환불 수령 시기나 방법은 예약 시 결제 방법에 따라 달라집니다.
				<br><br>
				
				<b style="color:#fd7e14">신용카드/직불카드로 결제한 경우</b><br>
				<ul>
					<li>24시간 이내에 환불을 진행하고 예약 결제에 사용한 신용카드에 공제 처리합니다.</li>
					<li>크레딧은 계정에 표시되는 데 7일이 소요될 수 있고 이 금액이 명세서에 표시되는 데에는 2번의 청구 주기가 소요될 수 있습니다.</li>
					<li>7일 이내에 크레딧을 받지 못했을 경우, 은행 또는 신용카드 회사에 문의해 주세요.</li>
				</ul>
				
				<b style="color:#fd7e14">환불 불가 예약</b><br>
				<ul>
					<li>예약 취소 시 이미 지불된 금액에 대해서는 환불을 받으실 수 없습니다.</li>
					<li>호텔 또는 휴가용 임대 숙소에서 추가 취소 수수료를 부과할 수 있습니다.</li>
				</ul>
			</p>
		  </div>
		  
		  <div class="title">
		    <i class="dropdown icon"></i>
		    		호텔 또는 휴가용 임대 숙소 예약 취소
		  </div>
		  <div class="content">
		    <p class="transition hidden">
		    
		    		계획 변경도 문제 없습니다. 성심성의껏 도와드리겠습니다.
		    	<br>
		    	
		    	<b style="color:#fd7e14">고객님의 호텔 예약 취소 방법</b><br>
		    	<ol>
		    		<li>내 예약 정보로 이동합니다. 또는 로그인을 잊으신 경우에는 내 예약 찾기로 이동합니다.</li>
		    		<li>예약 취소를 선택하시고 안내에 따릅니다.</li>
		    	</ol>
		    	<br>
		    	
		    	<b style="color:#fd7e14">휴가용 임대 숙소 예약 취소 방법</b><br>
		    		이 경우, 고객님이 예약하신 숙박 시설 관리자에게 연락하셔야 합니다. 숙박 시설 관리자는 휴가용 임대 숙소 예약의 변경 및 취소를 담당하고 있습니다.
					<br>
					숙박 시설 관리자의 연락처 번호는 고객님의 예약 세부 정보에서 간편하게 찾으실 수 있습니다.
					<br><br>
					
					<b style="color:#fd7e14">취소 정책, 수수료 및 환불 적용 범위</b><br>
					<ol>
						<li>저희는 어떠한 취소 수수료도 부과하지 않지만, 예약하신 호텔 또는 휴가용 임대 숙소의 경우 다를 수 있습니다. 고객님의 예약 세부 정보에서 예약하신 숙박 시설의 정책에 대한 핵심 내용을 확인하실 수 있습니다.</li>
						<li>환불 금액 및 고객님의 계좌로 환불되기까지 걸리는 소요 시간은 예약 유형 및 지불하신 액수에 따라 달라질 수 있습니다. 더 자세한 정보는 호텔 및 휴가용 임대 숙소 예약 환불을 확인하세요.</li>
					</ol>
		    </p>
		    
		  </div>
		  
		  <div class="title">
		    <i class="dropdown icon"></i>
		   	 호텔 및 휴가용 임대 숙소 결제 옵션
		  </div>
		  <div class="content">
		  	<b style="color:#fd7e14">사전 지불 또는 나중에 지불</b><br>
		  	일부 호텔 및 휴가용 임대 숙소는 요금을 지금 온라인으로 결제하거나 호텔 또는 휴가용 임대 숙소에서 결제할 수 있는 옵션을 제공합니다.
		  	<br><br>
		  	
		  	<b style="color:#fd7e14">지금 결제할 금액</b><br>
		  	<ul>
		  		<li>신용카드/직불카드, China UnionPay, PayPal 또는 Hotels.com 상품권을 사용하여 결제하실 수 있습니다.</li>
		  		<li>예약 시 요금이 청구됩니다.</li>
		  		<li>Jeju Boram이 현지 통화로 결제를 처리합니다.</li>
		  		<li>Jeju Boram 숙박을 적립 및 사용하실 수 있습니다.</li>
		  		<li>Jeju Boram 숙박을 적립 및 사용하실 수 있습니다.</li>
		  	</ul>
		  	<br>
		  	
		  	<b style="color:#fd7e14">나중에 결제할 금액</b><br>
		  	<ul>
		  		<li>신용카드/직불카드로 결제하실 수 있습니다.</li>
		  		<li>호텔 또는 휴가용 임대 숙소에서 체크인하거나 체크아웃할 때 요금이 청구됩니다.</li>
		  		<li>일부 호텔 및 휴가용 임대 숙소는 할부 결제 옵션을 제공할 수도 있습니다. 그럴 경우 예약을 마무리할 때 해당 옵션을 확인하실 수 있습니다.</li>
		  		<li>호텔 또는 휴가용 임대 숙소에서 현지 통화로 결제를 처리합니다.</li>
		  		<li>호텔 취소 기한 전에 무료로 취소하실 수 있습니다.</li>
		  	</ul>
		  	
		  	<b style="color:#fd7e14">알아두면 좋은 정보</b><br>
		  	<ul>
		  		<li>일부 호텔 및 휴가용 임대 숙소는 예약 후 72시간 이내에 보증금 결제를 요구합니다.</li>
		  		<li>여러 신용카드 또는 결제 방법을 통해 요금을 분할 결제하실 수 없습니다.</li>
		  		<li>세금 및 봉사료는 객실, 아파트 또는 다른 숙소 요금에 포함되지 않으며 호텔, 위치, 기타 요소에 따라 달라집니다.</li>
		  		<li>외국 통화로 결제할 경우, 신용카드사가 추가 수수료를 부과할 수 있습니다. 자세한 정보는 신용카드 이용약관을 확인해 주세요.</li>
		  	</ul>
		  </div>
		  
		  <div class="title">
		    <i class="dropdown icon"></i>
		    	호텔 또는 휴가용 임대 숙소 예약 변경
		  </div>
		  <div class="content">
		  
		  	계획 변경도 문제 없습니다. 성심성의껏 도와드리겠습니다.
		  <br>
		  	다음은 온라인에서 변경하실 수 있는 사항입니다.
		  <br>
		  	<ul>
		  		<li><b>무료</b>: 고객 이름, 침대 유형(호텔만 해당), 흡연/금연 선호 사항, 특별 요청, 장애인 지원 옵션</li>
		  		<li><b>숙박 시설에 수수료 납부</b>: 객실 또는 아파트 유형(또는 기타 동급), 고객 수, 여행 날짜</li>
		  	</ul>
		  	<br>
		  	
		  	<b style="color:#fd7e14">호텔 예약 변경 방법</b><br>
		  	<ol>
		  		<li>내 예약 정보로 이동합니다.</li>
		  		<li>예약 변경을 선택하시고 안내에 따릅니다.</li>
		  	</ol>
		  	<br>
		  	
		  	<b style="color:#fd7e14">휴가용 임대 숙소 예약 변경 방법</b><br>
		  	이 경우, 고객님이 예약하신 숙박 시설 관리자에게 연락하셔야 합니다. 숙박 시설 관리자는 휴가용 임대 숙소 예약의 변경 및 취소를 담당하고 있습니다. 숙박 시설 관리자의 전화번호는 내 예약 관리에서 찾으실 수 있습니다.
		  	<br><br>
		  	
		  	<b style="color:#fd7e14">변경정책, 수수료 및 환불 적용 범위</b><br>
		  	<ul>
		  		<li>온라인에서 예약을 변경할 수 있는 옵션이 보이지 않으면 전화로 문의해 주세요.</li>
		  		<li>저희는 수수료를 부과하지 않지만, 해당 호텔 또는 휴가용 임대 숙소의 경우 다를 수 있습니다. 내 예약 관리에서 예약하신 숙박 시설의 정책에 대한 상세 내용을 확인하실 수 있습니다. 적용되는 모든 수수료나 요금 차액은 신용카드로 지불하셔야 합니다.</li>
		  		<li>환불 금액 및 고객님의 계좌로 환불되기까지 걸리는 소요 시간은 예약 유형 및 지불하신 액수에 따라 달라질 수 있습니다. 더 자세한 정보는 호텔 및 휴가용 임대 숙소 예약에 대한 환불을 확인하세요.</li>
		  	</ul>
		  	
		  	
		  
		  </div>
		  
		</div>
	</div>	
	
	
	<script>
		$('.ui.accordion')
		  .accordion()
		;
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