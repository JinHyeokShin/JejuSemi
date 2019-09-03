<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="accommodation.model.vo.*, java.util.*"%>

<%
	Acm acm = (Acm)request.getAttribute("acm");
	Room room = (Room)request.getAttribute("room");
	ArrayList<AcmImg> acmImgList = (ArrayList<AcmImg>)request.getAttribute("acmImgList");
	
	
	/* Member loginUser = (Member)session.getAttribute("loginUser"); */
	/* Member m = null;
	if(loginUser != null){
		m = (Member)session.getAttribute("loginUser");
	} else{
		m = new Member();
	} */
	
	
	String checkIn = request.getParameter("checkIn");
	String checkOut = request.getParameter("checkOut");
	int adult = Integer.parseInt(request.getParameter("adult"));
	int child = Integer.parseInt(request.getParameter("child"));

%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

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
		height: 180px;
	}
	.imgSize{
		width:100%;
		height:180px;
	}
	.sumDiv1{
		width:100%;
		height:100%; 
		background:white; 
		padding:15px;
		border-radius: 10px;
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
				
				<%if(loginUser != null){ %>
					<b>예약자 이름<span style="color:#fd7e14">*</span></b><br>
					<b style="font-size:10px;">숙박업소에서 체크인 시 제시할 신분증에 나와 있는 대로  이름을 입력해주세요.</b><br>
					<input type="text" size="30" name="reservName" value="<%=loginUser.getMemName() %>"><br><br>	
								
					<b>이메일 주소<span style="color:#fd7e14">*</span></b><br>
					<b style="font-size:10px;">이 주소로 확인 메일을 보내드립니다.</b><br>
					<input type="email" size="30" name="reservEmail" value="<%=loginUser.getMemId() %>"><br><br>
					
					<b>휴대폰 번호<span style="color:#fd7e14">*</span></b><br>
					<b style="font-size:10px;">비상시에만 이 번호로 연락드립니다.</b><br>
					<input type="text" size="30" name="reservPhone" value="<%=loginUser.getMemPhone() %>"><br><br>
				<%}else{ %>
					<b>예약자 이름<span style="color:#fd7e14">*</span></b><br>
					<b style="font-size:10px;">숙박업소에서 체크인 시 제시할 신분증에 나와 있는 대로  이름을 입력해주세요.</b><br>
					<input type="text" size="30" name="reservName"><br><br>	
								
					<b>이메일 주소<span style="color:#fd7e14">*</span></b><br>
					<b style="font-size:10px;">이 주소로 확인 메일을 보내드립니다.</b><br>
					<input type="email" size="30" name="reservEmail"><br><br>
					
					<b>휴대폰 번호<span style="color:#fd7e14">*</span></b><br>
					<b style="font-size:10px;">비상시에만 이 번호로 연락드립니다.</b><br>
					<input type="text" size="30" name="reservPhone"><br><br>
				<%} %>
				
				
				
				</div>
				<div class="roomInfo section pp">
				
				<label style="font-weight:bold; font-size:2em; color:#fd7e14;">객실 정보</label><hr>
				
				<label>객실명 : <%=room.getRoomName() %></label>
				<br>
				<label>성인 : <%=adult%>&nbsp;&nbsp;어린이/청소년 : <%=child%></label>
				<br><br>
				<b>고객 요청 사항</b><br>
				<b style="font-size:10px;">ex) 엑스트라 베드, 늦은 체크인</b><br>
				<textarea rows="6" cols="40" name="reservRequire"></textarea>
				
				</div>
				<div class="paymentInfo bg-light section pp">
				
				<label style="font-weight:bold; font-size:2em; color:#fd7e14;" >결제 방법</label><hr>
				
				
				
				<input type="radio" class="payRadio1" name="payMethod" id="payRadio1_1" value="c">
				<label for="payRadio1_1" class="payLabel label1">카드결제</label>
				<br>
				<input type="radio" class="payRadio1" name="payMethod" id="payRadio1_2" value="k">
				<label for="payRadio1_2" class="payLabel label2">카카오페이</label>
				
				<script>
					$(".label1").on('click',function(){
						$(".label1").addClass("paypay");
						$(".label2").removeClass("paypay");
						$("#mFlag").val(1);
					});
					$(".label2").on('click',function(){
						$(".label2").addClass("paypay");
						$(".label1").removeClass("paypay");
						$("#mFlag").val(2);
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
				<p>
				“1박 예약하기” 버튼을 클릭하면 이용약관 및 개인정보 보호정책 을 읽었고 이에 동의하시는 것으로 간주됩니다.
				이 결제는 스페인에서 처리됩니다. 여행 공급업체(항공사/호텔/기차 등)가 고객님의 결제를 처리하는 경우에는 이 사항은 적용되지 않습니다.
				</p>
				
				
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
			                    $("#payBtn").attr('disabled',false);
			                } else{
			                    $("#checkAgree").css('display','none');
			                    $("#payBtn").attr('disabled',true);
			                }
			            });
			        });				
				</script>
				<hr>
				<input type="hidden" name="methodFlag" id="mFlag" value="0">
				<button type="button" id="payBtn" style="float:right;" disabled>예약하기</button>
				
				
				
				<script>
					
				
					
					var reservPrice = 0;
					
					$(function(){
						var cIn = "<%=checkIn %>";
						var cOut = "<%=checkOut %>";
						
						var arr1 = cIn.split('-');
				 		var arr2 = cOut.split('-');
				 		
				 		var dat1 = new Date(arr1[0], arr1[1]-1, arr1[2]);
				 		var dat2 = new Date(arr2[0], arr2[1]-1, arr2[2]);
				 		
				 		var diff = dat2.getTime() - dat1.getTime();
				 	    var result = Math.floor(diff/1000/60/60/24);
				 		
				 		$("#nTd").text(result+"박");
				 		
				 		
				 		var a = $("#pTd").text();
				 		reservPrice = <%=room.getRoomPrice()%>*result;
				 		
				 		$("#pTd").text(a+reservPrice);	
				 		
				 		
				 		
				 		
				 		
				 		/* 결제방법 선택에 따른 결제모듈 선택 */
				 		$("#payBtn").click(function(){	
							
							if($("#mFlag").val() == 1){
								inicis();
							} else if($("#mFlag").val() == 2){
								kakao();
							} else if($("#mFlag").val() == 0){
								alert('결제 방법을 선택해 주세요.');
							}
						});
				 		
				 		
				 		
				 		
				 		
					});
							
				
				function inicis() {
					<!-- 결제  -->
				    	IMP.init('imp80836035');
				    
				    	IMP.request_pay({
				    	    pg : 'html5_inicis',	/* 결제PG사 */
				    	    pay_method : 'card',/* 결제방법 */
				    	    merchant_uid : 'R' + new Date().getTime(),	/* 주문번호 */
				    	    name : '<%=acm.getAcmName()%>'+' 예약 결제',	/* 주문이름 */
				    	    amount : 100,		/* 결제 가격 */
				    	    buyer_email : $("input[name=reservEmail]").val(),	/* 구매자 이멜 */
				    	    buyer_name : $("input[name=reservName]").val(),				/* 구매자 이름 */
				    	    buyer_tel : $("input[name=reservPhone]").val(),		/* 구매자 전화번호(필수) '010-1234-5678' */
				    	}, function(rsp) {
				    		$.ajax({
				    			url:"payment.py",
				    			type:"post",
				    			data:{payNum:rsp.imp_uid,
				    				  reservNum:rsp.merchant_uid,
				    				  payPrice:rsp.paid_amount,
				    				  confirmNum:rsp.apply_num,
				    				  reservName:$("input[name=reservName]").val(),
				    				  reservEmail:$("input[name=reservEmail]").val(),
				    				  reservPhone:$("input[name=reservPhone]").val(),
				    				  reservRequire:$("textarea[name=reservRequire]").val(),
				    				  payMethod:$("input[name=payMethod]").val(),
				    				  reservPrice:reservPrice,
				    				  reservPax:<%=adult%>+<%=child%>,
				    				  checkIn:"<%=checkIn%>",
				    				  checkOut:"<%=checkOut%>",
				    				  roomNum:<%=room.getRoomNum()%>
				    				 },
				    			success:function(data){
				    				
				    				location.href="<%=contextPath%>/views/reservation/complete.jsp?reservNum=" + data;
				    			},
				    			error:function(){
				    				alert("결제 실패");
				    			}			    			
				    			
				    		});	/* ajax close */
				    	});		/* function(rsp) close */
				    
				    
				    
				}	<!--  이니시스 결제 close   -->
				
				
				
				
				function kakao() {
					<!-- 결제  -->
				    	IMP.init('imp80836035');
				    
				    	IMP.request_pay({
				    	    pg : 'kakaopay',	/* 결제PG사 */
				    	    pay_method : 'card',/* 결제방법 */
				    	    merchant_uid : 'R' + new Date().getTime(),	/* 주문번호 */
				    	    name : '<%=acm.getAcmName()%>'+' 예약 결제',	/* 주문이름 */
				    	    amount : 100,		/* 결제 가격 */
				    	    buyer_email : $("input[name=reservEmail]").val(),	/* 구매자 이멜 */
				    	    buyer_name : $("input[name=reservName]").val(),				/* 구매자 이름 */
				    	    buyer_tel : $("input[name=reservPhone]").val(),		/* 구매자 전화번호(필수) '010-1234-5678' */
				    	}, function(rsp) {
				    		
				    		console.log(rsp.apply_num);
				    		
				    		$.ajax({
				    			url:"payment.py",
				    			type:"post",
				    			data:{payNum:rsp.imp_uid,
				    				  reservNum:rsp.merchant_uid,
				    				  payPrice:rsp.paid_amount,
				    				  confirmNum:rsp.apply_num,
				    				  reservName:$("input[name=reservName]").val(),
				    				  reservEmail:$("input[name=reservEmail]").val(),
				    				  reservPhone:$("input[name=reservPhone]").val(),
				    				  reservRequire:$("textarea[name=reservRequire]").val(),
				    				  payMethod:$("input[name=payMethod]").val(),
				    				  reservPrice:reservPrice,
				    				  reservPax:<%=adult%>+<%=child%>,
				    				  checkIn:"<%=checkIn%>",
				    				  checkOut:"<%=checkOut%>",
				    				  roomNum:<%=room.getRoomNum()%>
				    				 },
				    			success:function(data){
				    				console.log(rsp.apply_num);
				    				location.href="<%=contextPath%>/views/reservation/complete.jsp?reservNum=" + data;
				    			},
				    			error:function(){
				    				alert("결제 실패");
				    			}			    			
				    			
				    		});	/* ajax close */
				    	});		/* function(rsp) close */
				    
				    
				    
				}	<!--  카카오 결제 close   -->
				
				
				
				
				
				
				
				</script>
				
				
				
				
				
				</div>
			</div>
			</form>
			<div class="acmInfo test aa dd">
				<div class="acmPicture test aa">
				
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
					</div>			
				</div>
				
				<div style="width:100%; height:15px;"></div> <!-- 간격 -->
					<div class="aa bg-light" style="border-radius: 10px;">
						<div class="aa" style="width:100%; height:60px; line-height: initial; padding:15px;">
							<b style="font-size:18px; font-weight:bold; color:#fd7e14;"><%=acm.getAcmName() %></b><br>
							<b style="font-size:11px"><%=acm.getAcmAddress() %></b>				
						</div>
						<div class="aa" style="width:100%; height: 200px; padding:15px;">
							
							<div class="aa sumDiv1">
								<table class="aa" style="width:100%; height:100%;">
									<tr>
										<td><b>체크인</b></td>
										<td align="right"><b><%=checkIn %></b></td>
									</tr>
									<tr>
										<td><b>체크아웃</b></td>
										<td align="right"><b><%=checkOut %></b></td>
									</tr>
									<tr>
										<td id="nTd" colspan="2" align="right"></td>								
									</tr>
									<tr>
										<td id="pTd" colspan="2" align="right">&#8361;</td>
									</tr>
									
									<script>
										
									
									</script>
									
									
								</table>
							</div>
						</div>
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