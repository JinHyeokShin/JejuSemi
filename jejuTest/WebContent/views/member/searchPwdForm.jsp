<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Member mId = (Member)session.getAttribute("memberId");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>

<!-- 플러그인 참조 -->
<script src="http://cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/alertify.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/semantic.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/button.min.css">

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

.outer{
	margin-left:auto;
	margin-right:auto;
	margin-top:50px;
	margin-bottom:50px;
	margin:100px;
}

.form-group {
	text-align:left;
}
#idCheck:hover, #joinBtn:hover, #goMain:hover, #sendCheckNum:hover{
	cursor:pointer;
}

</style>


</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">

<%-- 헤더,메뉴바 --%>
<%@ include file="../main/header.jsp" %>

	<div class="outer" align="center">
     	<article class="container" style="border:1px solid lightgrey; padding:35px">
           <div class="page-header">
               <div class="col-md-6 col-md-offset-3">
               <a class="navbar-brand" style="font-size:30px"><span class="text-danger" style="font-size:35px;">Jeju</span> Boram 비밀번호 찾기</a>
               <p>비밀번호를 찾고자 하는 아이디를 입력해주세요</p>
               </div>
           </div>
           <div class="col-sm-6 col-md-offset-3">
           
           		<!-- 회원 가입 서블릿 이동 -->
               <form role="form" id="joinForm" action="<%= request.getContextPath() %>/searchPwdCheck.me" method="post" onsubmit="return joinValidate();">
                   
                   <div class="form-group">
	               		<label for="memberId">이메일 주소</label> &nbsp;&nbsp;
	               		<label id="idCheck" style="color:#fd7e14"><b>이메일 확인</b></label>   
                  		<input type="email" class="form-control" id="memberId" class="email from-control" name="memberId" placeholder="이메일 주소를 입력해주세요" required>		
                  		<div style="padding-top:6px;">                   	  
	                   	   <button id='btnConfirm' class="ui red basic button mini ui button" type="button" style="display:none;" onclick="lf_process();">확인</button>    
                   	   </div>
                   </div>
                   
                   <div class="form-group">
						<div style='display:none;' id="emailFrame">
							<input type="text" name='userNum' id="userNum" class="form-control" placeholder="인증번호를 입력해주세요" 
							required>
						</div>
					</div>
					
					<div class="form-group pwdcheck" style="display:none">
                       <label for="inputPassword">새로운 비밀번호</label>
                       <input type="password" class="form-control" id="inputPassword" name="memberPwd" placeholder="비밀번호를 입력해주세요" 
                       required>
                    </div>
                   
                    <div class="form-group pwdcheck" style="display:none">
                       <label for="inputPasswordCheck">비밀번호 확인</label>
                         &nbsp; <label id="pwdResult"></label>
                       <input type="password" class="form-control" id="inputPasswordCheck" name="memberPwd2" placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요" 
                       required>
                    </div>

                    <div class="form-group text-center" style="margin-top:30px;">
                       <button type="submit" id="join-submit" 
                       class="btn btn-primary" style="display:none;">
                       	완료<i class="fa fa-check spaceLeft"></i></button>            
                   </div>
               </form>
           </div>
       </article>
	</div>

	
	<script>
	
	var num;
	
	$(document).ready(function() {
		
		var userId = $("#joinForm input[name=memberId]");
		
		$("#idCheck").click(function() {
		
			if(userId.val() == ""){
				alertify.alert('', '이메일을 입력해주세요.');
				userId.focus();
			
			}else{
	
				$("#join-submit").css("display", "inline-block");
				$(".pwdcheck").css("display", "block");
				$("#btnConfirm").css("display","inline-block");
				$("#emailFrame").fadeIn(350);
			
				http = jQuery.ajax({
			   		url		: "pwdCodeSend.we",
			   		type	: "post",
					data 	: {memberId:$("#memberId").val()},
					success : function(msg) {

						alertify.alert('', '인증번호가 메일로 발송되었습니다.');	
						num = msg;
					}
			  	});
			}
		});
	});
	
	function lf_process() {
		
			console.log(num);
			console.log($("#userNum").val());
		if(num == $("#userNum").val()) {
			
			alertify.alert('', '인증되었습니다.');
			
// 			this.close();   // 현재 창 닫기
			
			$("#userNum").attr("readonly", "true");
			$("#join-submit").attr("disabled", false);
			$("#btnConfirm").attr("disabled", true);
			
		} else {
			alertify.alert('', '인증번호가 맞지 않습니다.');
			
			$("#btnConfirm").attr("disabled", false);
			$("#join-submit").attr("disabled", true);
		}
	}
	
	// 정규식 검사
	function joinValidate(){
        
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

		return true;
	}
	
	</script>


<!-- 풋터 -->
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