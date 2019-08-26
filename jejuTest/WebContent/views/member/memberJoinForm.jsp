<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</style>

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
                       <label for="InputEmail">이메일 주소</label>
                       <input type="email" class="form-control" id="InputEmail" name="memId" placeholder="이메일 주소를 입력해주세요" required>
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
                       <label for="inputMobile">휴대폰 번호(-제외)</label>
                       <input type="tel" class="form-control" id="inputMobile" name="memPhone" placeholder="휴대폰번호를 입력해 주세요" required>
                   </div>
                   
                   <div class="form-group">
                       <label for="inputGender">성별</label>
                       <select name="memGender" required>
                       	<option value="">-----</option>
                       	<option value="M">MAN</option>
                       	<option value="F">WOMAN</option>
                       </select>
                       
                       &nbsp; &nbsp;
                       
                       <label for="inputNation">국적</label>
                       <select name="nationCode">
                       	<option value="">-----</option>
                       	<option value="1">KOR</option>
                       	<option value="2">MEX</option>
                       	<option value="3">DNK</option>
                       	<option value="4">USA</option>
                       	<option value="5">RUS</option>
                       	<option value="6">CHE</option>
                       	<option value="7">CHN</option>
                       </select>
                   </div>

                   <div class="form-group text-center" style="margin-top:30px;">
                       <button type="submit" id="join-submit" class="btn btn-primary">회원가입<i class="fa fa-check spaceLeft"></i>
                       </button>
                       &nbsp;
                       <button type="button" class="btn btn-warning" onclick="history.go(-1);" style="">가입취소<i class="fa fa-times spaceLeft"></i>
                       </button>
                   </div>
               </form>
           </div>
       </article>
	</div>
	
	<script>
		
	function joinValidate(){
	    // 회원 가입 처리
	    
        if($("#inputName").val() ==''){
            alert('이름을 입력하세요');
            $("#inputName").focus();
            return false;
        }

        var email = $('#InputEmail').val();
        if(email == ''){
            alert('이메일을 입력하세요');
            $("#InputEmail").focus();
            return false;
            
        } else {
            var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!emailRegex.test(email)) {
                alert('이메일 주소가 유효하지 않습니다. ex)abc@gmail.com');
                $("#inputEmail").focus();
                return false;
            }
        }

        if($("#inputPassword").val() ==''){
            alert('비밀번호를 입력하세요');
            $("#inputPassword").focus();
            return false;
        }

        if($("#inputPasswordCheck").val() ==''){
        	$("#pwdResult").text("비밀번호 불일치").css("color","red");
            alert('비밀번호를 다시 한번 더 입력하세요');
            $("#inputPasswordCheck").focus();
            return false;
        }
        
        if($("#inputPassword").val()!== $("#inputPasswordCheck").val()){
        	$("#inputPasswordCheck").focus();
        	$("#pwdResult").text("비밀번호 불일치").css("color","red");
            return false;
        }
        
        if($("#inputMobile").val() ==''){
            alert('휴대폰 번호를 입력하세요');
            $("#inputMobile").focus();
            return false;
        }
     
		return true;

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