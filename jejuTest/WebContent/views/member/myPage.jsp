<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member m = (Member)session.getAttribute("loginUser");
	
	String memNum = m.getNum();
	String memId = m.getMemId();
	String memPwd = m.getMemPwd();
	String memName = m.getMemName();
	String memGender = m.getMemGender();
	int memPoint = m.getMemPoint();
	int nationCode = m.getNationCode();


%>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
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
        border:1px solid lightgray;
        display:block;
        padding:5px;
        margin :0 auto;
        color:gray;
        width: 900px;
        height: 600px;
        background:rgb(255, 204, 110);
    }
    .main-wrap{
        border:1px solid lightgray;
        display:block;
        padding:5px;
        margin : 15px;
        color:gray;
        width: 850px;
        height:550px;
        background:white;
        
    }
    .main-user{
        border:1px solid lightgray;
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
        border:25px solid gray;
        display:block;
    }


</style>

</head>
<body>


   <div class="main-content" role="main">
     <div class="main-wrap">
      	<div class="main-user">
              	사용자
      	</div>
      		<ul class="item-link">
        		<li id="item-myme" class="item-list">
       			 	<a href="">
                      	  내 계정
                 	</a><br>
                   <span class="hide"> 비밀번호 및 기타 설정을 변경할 수 있습니다.</span>
                 </li>
                
                 <li id="item-mypay" class="item-list">
                     <a href="">
                       	 내 예약 정보
                     </a><br>
                    <span class="hide"> 예약 정보를 설정할 수 있습니다. </span>          
                 </li>

                 <li id="item-myheart" class="item-list">
                     <a href="">
                      		 즐겨찾기
                     </a><br>
                    <span class="hide"> 즐겨찾기를 설정할 수 있습니다.</span>
                 </li>

                 <li id="item-mypoint" class="item-list">
                     <a href="">
                     	   내 포인트
                     </a><br>
                    <span class="hide"> 내 포인트를 관리할 수 있습니다</span>
                 </li>

                 <li id="item-myreview" class="item-list">
                     <a href="">
                        	이용 후기
                     </a><br>
                    <span class="hide"> 이용 후기를 관리할 수 있습니다.</span>
                 </li>               
            </ul>
        </div>
    </div>



</body>
</html>




</body>
</html>