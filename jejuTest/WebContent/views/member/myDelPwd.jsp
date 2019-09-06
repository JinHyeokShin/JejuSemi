<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member m = (Member)session.getAttribute("loginUser");

	String msg = (String)request.getAttribute("msg");
	String memPwd = m.getMemPwd();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var msg = "<%= msg %>";
	$(function(){
		if(msg != "null"){ // 메세지 전달값이 있을 경우
			alert(msg);
		}
		
		if(msg == "회원이 탈퇴되었습니다 이용해주셔서 감사합니다."){
			window.close();
		}
	});
	
</script>

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

<title>Insert title here</title>

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
	<h3>비밀번호를 입력해주세요</h3>
	
	<br>
	
	<form id="updatePwdForm" action="<%= request.getContextPath() %>/mydeletepwd.me" method="post">
		<table class="maintable">
			<tr>
				<br>
				<td><label>비밀번호 : </label></td>
				<br>
				<td><input type="password" name="memPwd" id="memPwd"></td>
			</tr>
		</table>
		
		<br><br>
		
		<div class="btns" align="center">
			<div align="center"> 
                <input type="submit" value="회원탈퇴" id="deleteBtn" onclick="deleteMember();">
            </div>
		</div>
	</form>
	
	<script>
		
		function deleteMember(){
			
			if(pwd == "<%= memPwd %>"){
				var bool = confirm("정말로 탈퇴하시겠습니까?");
				
				if(bool){
					
					$("#updateForm").attr("action", "<%= request.getContextPath() %>/index.jsp");
					$("#updateForm").submit();
				}
				
			}else{
				alert("비밀번호를 잘못 입력하였습니다.");
			}
			
		}
		
		
	

		
	</script>
	
</body>
</html>
