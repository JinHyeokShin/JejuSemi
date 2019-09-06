<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member m = (Member)session.getAttribute("loginUser");
	
	String memName 	= m.getMemName();
	

%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    .main-content{
        border:1px solid white;
        display:block;
        padding:5px;
        margin :0 auto;
        color:gray;
        width: 800px;
        height: 100%;
        background:rgb(236, 236, 236);
        border-radius: 10px;
    }
    .main-wrap{
        border:1px solid white;
        display:block;
        padding:5px;
        margin : 15px;
        color:gray;
        width: 750px;
        height:750px;
        background:white;
        
    }
    .main-user{
        border:1px solid white;
        display:block;
        padding:5px;
        margin:15px;
        color:black;
    }
    .list-link{
        border: 1px solid black;
        display:block;
        padding:10px;

    }
    .item-list{
        border:10px solid white;
        display:block;
    }
 
    h1{
        color: black;
        
           
    }
    h3{
        font-size: 16px;
        line-height: 24px;
        color: black;
    }
    .me1{
        display: inline-block;
        vertical-align: top;
        width: 33.33333%;
        
        
    }
    .me2{
        display: inline-block;
         vertical-align: top;
        width: 66.66667%;           
    }
    .ui input {
        color: rgba(0, 0, 0, 0.95);
        border-color: rgb(241, 249, 255);
        border-radius: 0.28571429rem;
        background: #FFFFFF;
        -webkit-box-shadow: 0px 0em 0em 0em rgba(0, 0, 0, 0.35) inset;
        box-shadow: 0px 0em 0em 0em rgba(236, 243, 250, 0.35) inset;
        width: 250px;
        height: 30px;
        margin-top: 10px;
    }
   
    #mommy{
    border:2px solid gray;
    display:-webkit-box;
    -webkit-box-orient:horizontal;
    widows: 650px;
    height: 130px;
    -webkit-box-align:center;
    border-radius: 10px;
    
    }
    #kid1{
    border: 2px solid white;
    background :white;
   
    margin:10px;
    width:60px;
    height:80px;
    -webkit-box-flex:1;
    }
    #kid2{
    border: 2px solid white;
    background :white;
 
    margin:10px;
    width:65px;
    height:75px;
    -webkit-box-flex:1;
    }
    
    p{
    color:orange;
    }
    
    #updateBtn, #deleteBtn, #cancelBtn{
    color:white; 
    border-radius: 10px;
    cursor:pointer;
    background-color:orange;
    }
    
    .deltext{
    	width:100%;
    	higth:80%;
    	border-radius: 10px;
    }

  
	





</style>
 
</head>
<body>
    	<%-- 헤더,메뉴바 --%>
	<%@ include file="../main/header.jsp" %>
	
    <div class="main-content" role="main">
        <div class="main-wrap">
            <div class="main-user">
                &nbsp; <%=memName%>
            </div>
            <hr>
            <h1> &nbsp; &nbsp; <span class="text-danger">Jeju</span>Boram 회원탈퇴</h1><br>
            <form id="updateForm" action="<%= request.getContextPath() %>/mydelete.me" method="post">
            <hr>
            <ul class="item-link">
                    <li id="item-myme" class="item-list">
                    <div class="deltext">     	
                	<h4>JejuBoram 아이디는 재사용 및 복구 불가 안내</h4><br>
                	회원탈퇴 진행 시 본일을 포함한 타인 모두 아이디 <span class="text-danger">재사용이나 복구가 불가능합니다.</span> <br>
                	신중이 선택하신 후 결정해주세요.
                	</div>
                	<br>
                	<input type="checkbox" style="margin :auto;">약관에 동의합니다</input>
                    </li>
                    
                    <hr>
                    
                    <li id="item-mypay" class="item-list">
                    <div class="deltext">
                    <h4>JejuBoram 회원 탈퇴 사유</h4><br>
                    	남겨 주신 정보를 바탕으로 보다 나은 서비스를 제공해 드리기 위해 노력하겠습니다.<br>
                    <input type="checkbox">서비스 불만족</input><br>
                    <input type="checkbox">유사 서비스로의 이전</input><br>
                    <input type="checkbox">시스템 장애</input><br>
                    <input type="checkbox">서비스 이용 불필요</input><br>
                    <input type="checkbox">기타 &nbsp;<input type="text-area"></input></input>
                             
                    
                    </div>  
                    </li>
                    
               </div>
            
            
            </form>
       		<div align="center"> 
                <input type="submit" value="회원탈퇴" id="deleteBtn" onclick="myDeletePwd();">
                <input type="submit" value="취소" id="cancelBtn" onclick="goMyMe();">
            </div>
        </div>
    </div>
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

<script>

		function goMain(){
			location.href="<%= request.getContextPath() %>";
		}
		
		function goMyMe(){
			location.href="mypage.me";
		}
		
		function myDeletePwd(){
			
			window.open("mydeletepwd.me", "회원삭제", "width=500, height=240");
			
			
		}
		
	</script>
	


</body>

</html>