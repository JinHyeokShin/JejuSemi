<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
var bDisplay=ture;
function doDisplay(){
 var con = document.getElementById("myDIV");
 if(con.style.display=='none'){
     con.style.display = 'block';
 }else{
     con.style.display = 'none';
 }
}
</script>

<style>
    .main-content{
        border:1px solid lightgray;
        display:block;
        padding:5px;
        margin :0 auto;
        color:gray;
        width: 800px;
        height: 700px;
        background:rgb(255, 204, 110);
    }
    .main-wrap{
        border:1px solid white;
        display:block;
        padding:5px;
        margin : 15px;
        color:gray;
        width: 750px;
        height:650px;
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
        border:25px solid white;
        display:block;
    }
 
    h2{
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
</style>
 
</head>
<body>
    
    <div class="main-content" role="main">
        <div class="main-wrap">
            <div class="main-user">
                &nbsp; 사용자 데이터
            </div>
            <h2>  &nbsp; &nbsp; 내 계정 설정</h2><br><br>
    
            <ul class="item-link">
                   <div>
                    <li id="item-myme" class="item-list">
                    <div style="width: 30%; border:1px solid white; float: left;">
                        <h3>세부 정보</h3>
         
                    </div>
                    <div class="detail2" style="width: 65%; border:1px solid white; float: right;">
                    <div id="myDIV">
                        	이름 데이터<br>
                           	국적 데이터<br>
                        <input type="button" id="myDIV" placeholder="세부 정보 수정" ></input>    
                    </div>
                    <div class="detail2">

                            <div class="form-group">
                                <label for="inputName">이름</label><br>
                                <input type="text" placeholder="임종민"> <!--이름데이터값-->
                            </div>                                                   

                            <div class="form-group">
                                <label for="inputMobile">휴대폰 번호</label><br>
                                <input type="tel" ><!--전화번호 데이터값-->
                            </div>
                            
                            <div class="form-group">

                                <label for="inputNation">국적</label>
                                <br>
                                <select name="nationCode" style="width:90px">
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
                        </div>
                    
                   
                
                    <li id="item-mypay" class="item-list">
                    <div>
                        <li id="item-myme" class="item-list">
                        <div style="width: 30%; border:1px solid white; float: left;">
                            <h3>이메일 주소</h3>
                        </div>
                        <div style="width: 65%; border:1px solid white; float: right;">
                               	<br> 이메일 데이터<br>
                                <a href="">이메일 주소 수정</a>
                        </div>
              

                   <li id="item-myheart" class="item-list">
                   <div>
                        <li id="item-myme" class="item-list">
                        <div style="width: 30%; border:1px solid white; float: left;">
                            <h3>비밀번호</h3>
                        </div>
                        <div style="width: 65%; border:1px solid white; float: right;">
                               <br>
                                <a href="">비밀번호 변경</a>
                        </div>
                    </li>

              
                        </div>
                    </li>               
            </ul>
        </div>
    </div>



</body>
</html>