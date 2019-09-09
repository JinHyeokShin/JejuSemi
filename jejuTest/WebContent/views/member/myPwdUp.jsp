<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member m = (Member)session.getAttribute("loginUser");
	String memId = m.getMemId();
	String memPwd = m.getMemPwd();
	String msg = (String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<title>비밀번호 수정창</title>

<style>
    .maintable{
        width:80%;
        height:100%;
        margin: auto;
        border-radius: 10px;
        } 
         	  
    h3{
    	text-align:center;
    	}
    	
    #updatePwdForm{
       border: 10px solid orange;
       border-radius: 10px;
    }
    
</style>

</head>
<body>
	<h3>비밀번호 변경</h3>
	
	<br>
	
	<form id="updatePwdForm" action="<%= request.getContextPath() %>/mypwd.me" method="post">
		<table class="maintable">
			<tr>
				<td><label>현재 비밀번호</label></td>
				<td><input type="password" name="memPwd" id="memPwd" required></td>
			</tr>
			<tr>
				<td><label>변경할 비밀번호</label></td>
				<td><input type="password" name="newPwd" id="newPwd" required></td>
			</tr>
			<tr>
				<td><label>변경할 비밀번호 확인</label></td>
				<td><input type="password" name="newPwd2" id="newPwd2" required></td>
			</tr>
		</table>
		
		<br><br>
		
		<div class="btns" align="center">
			<input type="button" id="updatePwdBtn" onclick="checkPwd();" value="변경하기">
		</div>
	</form>
	
	<script>
		
		function checkPwd(){
			
			var popupX = (document.body.offsetWidth / 2) - (200 / 2);
			var popupY= (document.body.offsetHeight / 2) - (300 / 2);

			window.open('', '', 'status=no, height=300, width=200, left='+ popupX + ', top='+ popupY);

			var memPwd = $("#memPwd");
			var newPwd = $("#newPwd");
			var newPwd2 = $("#newPwd2");
			
			if(memPwd.val().trim() == "" || newPwd.val().trim() == "" || newPwd2.val().trim() == ""){
				alert("비밀번호를 입력해주세요.");
				return;
			}
			
			if(newPwd.val() != newPwd2.val()){
				alert("비밀번호가 다릅니다.");
				return;
			}
			
	 		$("#updatePwdForm").submit();
		}	
		
		
		var msg = "<%=msg %>";
		
		$(function(){
			if(msg == "success"){ 
				alert("비밀번호 변경이 완료되었습니다.");
				window.close();
				
			} else if(msg == "fail"){
				 alert("비밀번호 변경이 실패하였습니다.");
			}
			
			
		});
	</script>
	
</body>
</html>



