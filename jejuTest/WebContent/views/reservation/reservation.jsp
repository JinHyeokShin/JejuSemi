<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	.pp{
		padding:20px;
		line-height: initial;
	}
	.reservationSection{
		padding:3em;
		margin-bottom: 30px;
		height: 100%;
	}
	.reservationWrap{
		height: 100%;
	}
	.reservationInfo{
		width:70%;
		height: 100%;
	}
	.acmInfo{
		width:30%;
		height: 100%;
		padding: 15px;
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
	#freeCancel1{
		cursor: pointer;
	}
	#freeCancel1:hover{
		color:#fd7e14;
		/* text-decoration: underline; */
	}
	#freeCancel2{
		display:none;
	}
	#checkAgree{
		color:#9ae00b;
		float: right;
	    display: none;
	    line-height: 17px;
	}
	.acmPicture{
		width:100%;
		height: 200px;
	}
	
</style>

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">

	<%-- 헤더,메뉴바 --%>
    <%@ include file="../main/header.jsp" %>
    

	<section class="reservationSection section">
		<div class="reservationWrap container aa">
			
			<form action="" method="post">
			<div class="reservationInfo test aa dd">
				<div class="memberInfo bg-light pp">
				
				<label style="font-weight:bold; font-size:2em; color:#fd7e14;" >예약자 정보</label><hr>
				
				<b>예약자 이름<span style="color:#fd7e14">*</span></b><br>
				<b style="font-size:10px;">숙박업소에서 체크인 시 제시할 신분증에 나와 있는 대로  이름을 입력해주세요.</b><br>
				<input type="text" size="30" value=""><br><br>				
				<b>이메일 주소<span style="color:#fd7e14">*</span></b><br>
				<b style="font-size:10px;">이 주소로 확인 메일을 보내드립니다.</b><br>
				<input type="email" size="30" value=""><br><br>
				<b>휴대폰 번호<span style="color:#fd7e14">*</span></b><br>
				<b style="font-size:10px;">비상시에만 이 번호로 연락드립니다.</b><br>
				<input type="text" size="30" value=""><br><br>
				
				</div>
				<div class="roomInfo section pp">
				
				<label style="font-weight:bold; font-size:2em; color:#fd7e14;" >객실 정보</label><hr>
				
				<label>객실 정보 ex) 더블베드1, 금연룸</label>
				<br><br>
				<b>고객 요청 사항</b><br>
				<b style="font-size:10px;">ex) 간이침대, 늦은 체크인</b><br>
				<textarea rows="6" cols="40"></textarea>
				
				</div>
				<div class="paymentInfo bg-light section pp">
				
				<label style="font-weight:bold; font-size:2em; color:#fd7e14;" >결제 정보</label><hr>
				
				
				
				<input type="radio" class="payRadio1" name="payRadio1" id="payRadio1_1">
				<label for="payRadio1_1" class="payLabel label1">카드결제</label>
				<br>
				<input type="radio" class="payRadio1" name="payRadio1" id="payRadio1_2">
				<label for="payRadio1_2" class="payLabel label2">카카오페이</label>
				
				<script>
					$(".label1").on('click',function(){
						$(".label1").addClass("paypay");
						$(".label2").removeClass("paypay");
					});
					$(".label2").on('click',function(){
						$(".label2").addClass("paypay");
						$(".label1").removeClass("paypay");
					});
				</script>
				
				
				</div>
				<div class="agreementInfo section pp">
				
				<label style="font-weight:bold; font-size:2em; color:#fd7e14;" >예약 약관 및 취소 정책</label><hr>
				
				<label id="freeCancel1"><b>무료취소기한</b></label>
				<p id="freeCancel2">
				2019/00/00 이후에 예약을 변경하거나 취소하시는 경우 100%의 수수료가 부과됩니다.<br>
				노쇼 또는 일찍 체크아웃하시는 경우 환불해 드리지 않습니다.
				</p>
				
				<script>
			        $(function(){
			            $("#freeCancel1").on('click',function(){
			                if($("#freeCancel2").css('display') == 'none'){
			                    $("#freeCancel2").slideDown();
			                } else{
			                    $("#freeCancel2").slideUp();
			                }
			            });
			        });
			    </script>
				
				<br><br>
				<b style="font-weight:bold">예약 약관</b><br><br>
				
				
				
				<div style="width:80px;">
				<input type="checkbox" name="agree" id="agree" class="agreement">
				<label for="agree" style="font-size:13px;">동의함<span style="color:#fd7e14">*</span></label>
				<span id="checkAgree">✔</span>
				</div>
								
				<script>
					$(function(){
			            $(".agreement").on('click',function(){
			                if($("#checkAgree").css('display') == 'none'){
			                    $("#checkAgree").css('display','block');
			                } else{
			                    $("#checkAgree").css('display','none');
			                }
			            });
			        });
				
				</script>
				<hr>
				<button type="submit" style="float:right;">예약하기</button>
				
				</div>
			</div>
			</form>
			<div class="acmInfo test aa dd">체크인 및 가격 정보
				<div class="acmPicture test aa">이미지 들어갈 div</div>
			
			</div>
		</div>
		<br clear="both">
	</section>














	


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