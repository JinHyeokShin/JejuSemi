<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member m = (Member)session.getAttribute("loginUser");
	
	String memName 	= m.getMemName();
	String memId 	= m.getMemId();
	int nationCode 	= m.getNationCode();
	String memPhone = m.getMemPhone();
	String memPwd  	= m.getMemPwd();
	
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
    .input1 {
        color: rgba(0, 0, 0, 0.95);
        border-color: rgb(241, 249, 255);
        border-radius: 0.28571429rem;
        background: #FFFFFF;
        -webkit-box-shadow: 0px 0em 0em 0em rgba(0, 0, 0, 0.35) inset;
        box-shadow: 0px 0em 0em 0em rgba(236, 243, 250, 0.35) inset;
        width: 250px;
        height: 30px;
        margin-top: 10px;
        border-radius: 10px;
    }
   
    #mommy{
    border:2px solid gray;
    display:-webkit-box;
    -webkit-box-orient:horizontal;
    widows: 650px;
    height: 200px;
    -webkit-box-align:center;
    border-radius: 10px;
    }
    #mommy1{
    border:2px solid gray;
    display:-webkit-box;
    -webkit-box-orient:horizontal;
    widows: 650px;
    height: 110px;
    -webkit-box-align:center;
    border-radius: 10px;
    
    }
     #mommy2{
    border:2px solid gray;
    display:-webkit-box;
    -webkit-box-orient:horizontal;
    widows: 650px;
    height: 110px;
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
    position: relative;
    background :white;
 	top:-20px;
    margin:10px;
    width:65px;
    height:75px;
	right:200px;
    }
    #kid3{
    border: 2px solid white;
    position: relative;
    background :white;
    margin:10px;
    top:10px;
    width:65px;
    height:75px;
	right:200px;
    }
    #kid4{
    border: 2px solid white;
    position: relative;
    background :white;
    margin:10px;
    top:10px;
    width:65px;
    height:75px;
	right:200px;
    }
    
    p{
    color:orange;
    }
    
    #updateBtn, #cancelBtn{
    color:white; 
    border-radius: 10px;
    cursor:pointer;
    background-color:orange;
    }
    
    #pwdBtn{
    color:black; 
    cursor:pointer;
    background-color:white;
    }
    #name, #phone, #id{
    border-radius: 5px;
    width:185px;
    }
    
    
  
	





</style>
 
</head>
<body>
    	<%-- 헤더,메뉴바 --%>
	<%@ include file="../main/header.jsp" %>
	
    <div class="main-content" role="main">
        <div class="main-wrap">
            <hr>
            <h1> &nbsp; &nbsp; <span class="text-danger">Jeju</span>Boram 내 정보 수정</h1><br>
            <form id="updateForm" action="<%= contextPath %>/update.me" method="post">
            <hr>
            <ul class="item-link">
                    <li id="item-myme" class="item-list">
                <div id="mommy">
                    <div id="kid1">
                    	<h3>세부 정보</h3>                   
                        <p>세부 정보를 변경합니다.</p>
                    </div>
                    
                    <div class="detail2" id="kid2">
                    	<div class="input1">
                    	  <b>아이디 :</b>
                    	  <input type="text" id="id" name="memId" value="<%=memId%>" readonly><!--아아디 데이터값 -->
						  <b>이&nbsp;&nbsp;&nbsp;&nbsp;름 :</b>
                          <input type="text" id="name" name="memName" value="<%=memName%>" ><!--이름데이터값-->
                          <b>핸드폰 :</b>
                          <input type="text" id="phone" name="memPhone" value="<%=memPhone%>"><!-- 전화번호 데이터값 -->
                        </div>                                   
                    </div>
                </div>
                    </li>
                    <hr>
                    
                    <li id="item-mypay" class="item-list">
                    <div id="mommy1">
                        <div id="kid1" >
                            <h3>국 적</h3>         
                            <p>국적을 변경합니다.</p>
                        </div>
                        <div id="kid3">
                            <div class="input1">

                                         <label for="inputNation"><b>국적 : </b></label>
					                      <select name="nationCode" style="width:90px" required>
					                       	<option value="0" disabled>-------</option>
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
                        </div>
                    </div>
                    </li>
                    <hr>
                    
                   <li id="item-myheart" class="item-list">
                   <div id="mommy2">
                        <div id="kid1" >
                            <h3>비밀번호</h3>
                            <p>비밀번호를 변경합니다</p>
                        </div>
                        <br>
                        <div id="kid4">                            
                               <input id="pwdBtn" type="button" onclick="updatePwd();" value="비밀번호 변경">
                        </div>
                    </li>
                </ul>
               </div>
            
	       		<div align="center">
	                <input type="submit" value="수정하기" id="updateBtn" onclick="goMain()">
	                <input type="submit" value="취소" id="cancelBtn" onclick="goMyMe();">
	            </div>
            </div>
            </form>
        </div>
    
    
    <script>

		function goMain(){
			
			location.href="<%= request.getContextPath()%>";	
		}
		
		function updatePwd(){
			

			window.open("views/member/myPwdUp.jsp", "비밀번호 변경창", "width=500, height=250");
		}


		
	</script>
    
    
    
    
    
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