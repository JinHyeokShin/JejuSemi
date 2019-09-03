<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String snsId = (String)request.getAttribute("snsId");
	/* System.out.println(kakaoEmail); */
	
%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>

<style>
.outer{
	margin-left:auto;
	margin-right:auto;
	margin-top:50px;
	margin-bottom:50px;
}

select{
	color: #495057;
	font-size: 1rem;
	border-width: 2px;
	height:30px;
	border: solid #ced4da;
}
.form-group {
	text-align:left;
}
.btn-warning{
	background:#ced4da;
	border: 1px solid #ced4da;
}
#idCheck:hover, #joinBtn:hover, #goMain:hover, #sendCheckNum:hover{
	cursor:pointer;
}

</style>

    <!-- 플러그인 참조 -->
    <script src="http://cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>


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

	<div class="outer" align="center">
     <article class="container">
           <div class="page-header">
               <div class="col-md-6 col-md-offset-3">
               <a class="navbar-brand" style="font-size:30px"><span class="text-danger" style="font-size:35px;">Jeju</span> Boram 회원가입</a>
               </div>
           </div>
           <div class="col-sm-6 col-md-offset-3">
           		<!-- 회원 가입 서블릿 이동 -->
               <form role="form" id="joinForm" action="<%= request.getContextPath() %>/insert.me" method="post" onsubmit="return joinValidate();">
                   <div class="form-group">
                       <label for="inputName">성명</label>
                       <input type="text" class="form-control" id="inputName" name="memName" placeholder="이름을 입력해 주세요" required>
                   </div>
                   
                   <div class="form-group">
                   
					   <div>
                       <label for="InputEmail">이메일 주소</label>&nbsp;&nbsp;
					   <label id="idCheck" style="color:#fd7e14"><b>중복확인</b></label>&nbsp;&nbsp;   
					   <label id="sendCheckNum"style="color:red"><b>인증</b></label>   
					   <label id='btnConfirm' style="color:red" onclick="lf_process();"><b>확인</b></label>           
                       </div>
                       
                   <!-- 카카오 로그인으로 넘어오면 카카오 아이디(이메일)를 그대로 적용 -->                  
                   <script>
                   		var userId = "<%=snsId%>";
                   		
                   		if(userId != "null"){
                   			$("#InputEmail").val(userId);
                   		} 
                   </script>
                       
                       <input type="email" class="form-control" id="InputEmail" class="email from-control" name="memId" placeholder="이메일 주소를 입력해주세요" required>		
                   </div>
                   
                   	<div class="form-group">
						<div style='display:none;' id="emailFrame">
							<input type="text" name='userNum' id="userNum" class="form-control" placeholder="인증번호를 입력해주세요" required>
						</div>
					</div>
            
                   <div class="form-group">
                       <label for="inputPassword">비밀번호</label>
                       <input type="password" class="form-control" id="inputPassword" name="memPwd" placeholder="비밀번호를 입력해주세요" required>
                   </div>
                   <div class="form-group">
                       <label for="inputPasswordCheck">비밀번호 확인</label>
                         &nbsp; <label id="pwdResult"></label>
                       <input type="password" class="form-control" id="inputPasswordCheck" name="memPwd2" placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요" required>
                   </div>
                   <div class="form-group">
                       <label for="inputMobile">휴대폰 번호</label>
                       <input type="tel" class="form-control" id="inputMobile" name="memPhone" placeholder="휴대폰번호를 입력해 주세요" required>
                   </div>
                   
                   <div class="form-group">
                       <label for="inputGender">성별</label>
                       <select name="memGender" required>
                       	<option value="">-------</option>
                       	<option value="M">MAN</option>
                       	<option value="F">WOMAN</option>
                       </select>
                       
                       &nbsp; &nbsp;
                       
                       <label for="inputNation">국적</label>
                       <select name="nationCode" style="width:90px" required>
                       	<option value="">-------</option>
                       	<option value="1">KOR</option>
                       	<option value="2">MEX</option>
                       	<option value="3">DNK</option>
                       	<option value="4">USA</option>
                       	<option value="5">RUS</option>
                       	<option value="6">CHE</option>
                       	<option value="8">CHN</option>
                       	<option value="9">GER</option>
                       	<option value="10">ESP</option>
                       	<option value="11">FRA</option>
                       	<option value="12">UK</option>
                       	<option value="13">BEG</option>
                       	<option value="14">ARG</option>
                       	<option value="15">CAN</option>
                       	<option value="16">HNK</option>
                       	<option value="17">AUS</option>
                       	<option value="18">ITA</option>
                       	<option value="19">POR</option>
                       	<option value="20">VET</option>
                       	<option value="21">TIW</option>
                       	<option value="22">NED</option>
                       	<option value="23">NOR</option>
                       	
                       </select>
                   </div>

                   <div class="form-group text-center" style="margin-top:30px;">
                       <button type="submit" id="join-submit" class="btn btn-primary" disabled>회원가입<i class="fa fa-check spaceLeft"></i>
                       </button>
                       &nbsp;
                       <a href="<%= request.getContextPath() %>">
                       		<button type="button" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
                       </a>
                   </div>
               </form>
           </div>
       </article>
	</div>
	
	<script>
	
		// 이메일 중복체크 유효성 검사
		$(function() {

			var isUsable = false;

			$("#idCheck").click(function() {

				var userId = $("#joinForm input[name=memId]");
				var email = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
				
				$.ajax({
					url : "idCheck.me",
					type : "post",
					data : {
						userId : userId.val()
					},
					success : function(result) {

						if (result == "fail") { // 사용불가
							alert("사용할 수 없는 이메일 형식입니다.");
							userId.focus();
							
						}else if(userId.val() == ""){
							alert("이메일을 입력해주세요.")
							userId.focus();
							
						}else if(!email.test(userId.val())){
				            alert('이메일 주소가 유효하지 않습니다. ex)abc@gmail.com');
				            userId.focus();		
							
						}else { // 사용가능

							if (confirm("사용 가능한 아이디입니다. 사용하시겠습니까?")) {
								userId.attr("readonly", "true"); // 더 이상 바꿀 수 없도록
								isUsable = true;
							} else {
								userId.focus();
							}
						}
						if (isUsable) {
							$("#join-submit").removeAttr("disabled");
						}
					},
					error : function() {
						console.log("서버 통신 안됨");
					}
				});

			});
		});
		
		// 회원 가입 정규식 검사
		function joinValidate(){
		    
	        if($("#inputName").val() ==''){
	        	alertify.alert('', '이름을 입력하세요.');	
	            $("#inputName").focus();
	            return false;
	        }
	        
	        if($("#inputPassword").val() ==''){
	        	alertify.alert('', '비밀번호를 입력하세요.');
	            $("#inputPassword").focus();
	            return false;
	        }

	        if($("#inputPasswordCheck").val() ==''){
	        	$("#pwdResult").text("비밀번호 불일치").css("color","red");
	        	alertify.alert('', '비밀번호를 한 번 더 입력하세요.');
	            $("#inputPasswordCheck").focus();
	            return false;
	        }
	        
	        if($("#inputPassword").val()!== $("#inputPasswordCheck").val()){
	        	$("#inputPasswordCheck").focus();
	        	$("#pwdResult").text("비밀번호 불일치").css("color","red");
	            return false;
	        }
	        
	        var mobile = $('#joinForm input[name=memPhone]').val();
	        if(mobile == ''){
	            alertify.alert('', '휴대폰 번호를 입력하세요.');
	            $("#inputMobile").focus();
	            return false;  
	            
	        } else {
	        	var mobileRegex = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;
	            if (!mobileRegex.test(mobile)) {
	            	alertify.alert('', '휴대전화 번호가 유효하지 않습니다. ex)01012341234');
	                $("#inputEmail").focus();
	                return false;
	            }
	        }   
			return true;
		}
		
		// 인증번호 요청
		
		var num;
		
		$(document).ready(function() {
			
			var userId = $("#joinForm input[name=memId]");
			var email = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			
			$("#sendCheckNum").click(function() {
				
				if(userId.val() == ""){
					alertify.alert('', '이메일을 입력해주세요.');
					userId.focus();
					
				}else if(!email.test(userId.val())){
					alertify.alert('', '이메일 주소가 유효하지 않습니다. ex)abc@gmail.com');
		            userId.focus();	
		
				}else{
		
				$("#emailFrame").fadeIn(350);
				$("#sendCheckNum").attr("disabled",true);
				
				}
				
				http = jQuery.ajax({
			   		url		: "mailCodeSend.we",
			   		type	: "post",
					data 	: {InputEmail:$("#InputEmail").val()},
					dataType: 'html',
			   		async	: true,
					success : function(msg) {

						alertify.alert('', '인증번호가 메일로 발송되었습니다.');	
						num = msg;

					}
			  	});
		
			});
		
		});

		function lf_process() {
			
			if(num == $("#userNum").val()) {
				
				alertify.alert('', '인증되었습니다.');
				this.close();   // 현재 창 닫기
				
			} else {
				alertify.alert('', '인증번호가 맞지 않습니다.');
				return;
			}
			
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