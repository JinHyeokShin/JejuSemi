<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jeue Boram에 지원하세요</title>
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
/* The Modal (background) */
.popModal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 2; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: hidden; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 10% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	/* width: 30%; */ /* Could be more or less, depending on screen size */
	width: 745px;
	height: 450px;
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
	text-align: right;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.nav-item {
	cursor: pointer;
}


/* 온라인 지원 */

 #container {
	margin: 0 auto;
	width: 1000px;
	*zoom: 1;
} 

 #container:after {
	display: block;
	content: '';
	clear: both;
} 

.apply {
	line-height: 1.7
}

.apply .check {
	margin-top: 10px;
}

.p, .h2, .h3, .h4, .h5, .ul, li, .table, .tr, .th, .td, .form, .input, textarea{
	margin: 0;
	padding: 0;
	color: #666;
}

.content {
	float: left;
	width: 100%;
	padding: 40px 0;

}

.section {
    padding: 0.6em 0;
}

.tit_top {
	padding-bottom: 7px;
	margin-bottom: 7px;
	border-bottom: 1px solid gray;
}

.tit_top .h2tit {
	float: left;
	margin-bottom: 0;
	font-size: 25px;
	font-weight: normal;
	color: #313131;
}

.h2tit {
	margin-bottom: 15px;
	font-size: 25px;
	color: #313131;
	font-weight: bold;
}

.h2 {
	display: block;
	font-size: 1.5em;
	margin-block-start: 0.83em;
	margin-block-end: 0.83em;
	font-weight: bold;
}

.location {
	float: right;
	margin-top: 15px;
}

.p {
	display: block;
	margin-block-start: 0.7em;
	margin-block-end: 0.5em;
	font-size:14px;
}

.h3 {
	display: block;
	font-size: 1.17em;
	margin-block-start: 1em;
	margin-block-end: 1em;
	font-weight: bold;
	margin-bottom: 10px;
	font-size: 18px;
	font-weight: bold;
	color: #313131;
}

.form {
	display: block;
	margin-top: 1.5em;
}

.h4 {
	display: block;
	margin-block-start: 1.33em;
	margin-block-end: 1.33em;
	font-weight: bold;
	margin-bottom: 5px;
	font-size: 16px;
	font-weight: bold;
	color: #000;
}

.underline {
	text-decoration: underline !important;
}

.h5 {
	margin-top: 5px;
	font-size: 14px;
	font-weight: bold;
	color: #000;
	font-size: 1em;
	margin-block-start: 0.7em;
	margin-block-end: 0.5em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

input[type="checkbox"], input[type="radio"] {
	margin: 0;
	padding: 0;
	vertical-align: middle;
	width: 13px;
	height: 13px;
	line-height: 13px;
}

input[type="radio" i] {
	background-color: initial;
	cursor: default;
	-webkit-appearance: radio;
	box-sizing: border-box;
	margin: 3px 3px 0px 5px;
	padding: initial;
	border: initial;
}

.input {
	vertical-align: middle;
	background-color: white;
	cursor: text;
	font: 400 13.3333px Arial;
	height:24px;
}

.grid {
	border-top: 1px solid gray;
}

.grid .tb_row {
	width: 100%;
	border: 0;
}

.table {
	width: 100%;
	border-spacing: 0px;
	display: table;
	border-color: grey;
}

.tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}

.grid .tb_row tr th {
	height: 19px;
	line-height: 19px;
	padding: 11px 10px 8px 10px;
	text-align: left;
	font-size: 15px;
	background: #fafafa;
	color: #000;
}

.grid .tb_row  tr th, .grid .tb_row tr td {
	border-bottom: 1px solid #ccc;
	color: #646464;
	border-top: 0;
}

.th {
	display: table-cell;
	vertical-align: inherit;
	font-weight: bold;
	text-align: -internal-center;
}

.grid .tb_row tr td {
	height: 19px;
	line-height: 20px;
	padding: 10px 15px 9px 15px;
	vertical-align: top;
	border-right: 0;
}

.btn_page {
	position: relative;
	padding: 40px 10px;
	text-align: center;
}

.btnRed {
	display: inline-block;
	height: 36px;
	padding: 0 15px;
	vertical-align: middle;
}

.btn2 {
	display: inline-block;
	padding: 11px 30px 13px;
	margin: 0 5px;
	min-width: 60px;
	font-size: 16px;
	line-height: 1;
	font-weight: bold;
	color: #fff;
	background: #fd7e14;
	text-align: center;
	border-radius:7px;
} 

label{
	font-size:13px;
	font-weight:bold;
	color: #000;
	margin-bottom: 0rem;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
colgroup {
    display: table-column-group;
}
select {
    border: 1px solid #ccc;
    height: 26px;
    padding: 2px 2px 2px 4px;
    vertical-align: middle;
    color: #666;
    font-size:14px;
}
.li{
	font-size:14px;
}
</style>

</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200" class="body">

	<%-- 헤더,메뉴바 --%>
    <%@ include file="../main/header.jsp" %>
    
    <script>

		$(function(){
			$('html, body').animate( { scrollTop : 750 }, 400 );
		});
	</script>
 

<!-- ------------------------------------------------------ -->


<div id="container" class="apply div">
	<div class="content ">
		<h2 class="h2tit h2">온라인입사지원</h2>		
		<div class="tit_top  div">
		</div>

		<div class="section  div">
			<h3 class="h3">개인정보 보호법에 의한 개인정보 활용에 대한 동의</h3>
			<div class="section  div">
				<h4 class="h4">[개인정보 수집,이용에 대한 동의(필수)]</h4>
				<div class=" div" style="overflow-y:auto; width:100%; height:100px; padding:10px; border:0.5px solid gray;">

					<h5 class="h5">입사 지원 시 수집하는 개인정보의 범위</h5>
					<ul class="ul">
						<li class="li">(1) 필수항목: 성명(한글, 영문, 한문), 생년월일, 성별, Email주소, 비밀번호, 사진, 주소, 핸드폰 번호, 전화번호, 학력사항, 자기소개, 장애인 구분, 보훈 구분, 병역 구분</li>
						<li class="li">(2) 선택항목: 취득학점, 외국어능력, 자격증, 경력사항</li>
					</ul>

					<h5 class="h5">개인정보의 수집목적 및 이용목적</h5>
					<p class="p">회사는 다음과 같은 목적을 위하여 개인정보를 수집합니다.</p>
					<ul class="mgB5 ul">
						<li class="bul_dot li">본인확인 및 식별절차에 이용</li>
						<li class="bul_dot li">지원자와의 의사소통 및 정보전달에 이용</li>
						<li class="bul_dot li">서류전형, 면접전형 등 지원자 평가에 이용</li>
						<li class="bul_dot li">기타 개인맞춤 서비스 제공에 이용</li>
					</ul>
					<p class="mgB5 p">
						회사는 귀하가 회사의 개인정보처리방침 또는 이용약관의 내용에 대해 「동의한다」 또는 「동의하지 않는다」 버튼을 클릭할 수 있는 절차를 마련하여 귀하가 「동의한다」 버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다. <br />
					</p>
					<p>
						단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보 (인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등) 는 수집하지 않습니다.
					</p>
					<h5 class="h5">개인정보의 보유 및 이용기간</h5>
					<p class="p">이용자의 개인정보는 다음 내용에 따라 보존/파기 됩니다.</p>
					<ul class="mgB5 li">
						<li class="bul_dot li">보존항목 : 입사지원서 및 각종 증빙서류</li>
						<li class="bul_dot font120 li"><span class="underline">보존기간 : 채용 완료 후 3개월</span></li>
						<li class="bul_dot font120 li"><span class="underline">기간경과시 : 지체없이 파기</span></li>
					</ul>
					<p class="p">위 보유기간에도 불구하고 계속 보유하여야 할 필요가 있을 경우에는 이용자의 동의를 받겠습니다. 다만, 회사는 관계법령의 규정에 의하여 보존할 필요가 있는 경우는 해당 법령에서 정한 바에 의하여 개인정보를 보관할 수 있습니다. 또한, 입사지원을 한 경우에는, 지원시 별도로 공지되고 동의하신 내용에 따라서 보유기간이 달라 질 수 있습니다. <br />* 귀하는 이에 대한 동의를 거부할 수 있으며, 다만, 동의하지 않는 경우 당사의 채용전형 진행이 불가능할 수도 있음을 알려드립니다.</p>
				</div>
				<div class="check div">
					<input id="check1 input" type="radio" value="Y" name="check1" class="input">
					<label for="check1" class="label">동의합니다.</label>&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="check1N input" type="radio" value="N" name="check1" class="input">
					<label for="check1N" class="label">동의하지 않습니다.</label>
				</div>
			</div>
			<div class="section div">
				<h4 class="h4">[민감정보 처리에 대한 동의(필수)]</h4>
				<div class="div" style="overflow-y:auto; width:100%; height:100px; padding:10px; border:0.5px solid gray;">
					<h5 class="underline font120 h5">민감정보 수집/이용 목적</h5>
					<p class="underline font120 p">채용 및 채용관리</p>
					<h5 class="h5">수집/이용할 민감정보 항목</h5>
					<p class="p">장애정보,학력사항,보훈여부 등</p>
					<h5 class="underline font120 h5">민감정보 보유 및 이용기간</h5>
					<p class="underline font120 p">채용 완료 후 3개월까지</p>
					<p class="p">* 귀하는 이에 대한 동의를 거부할 수 있으며, 다만, 동의하지 않는 경우 당사의 채용전형 진행이 불가능할 수도 있음을 알려드립니다.</p>
				</div>
				<div class="check div">
					<input id="check2" class="input" type="radio" value="Y" name="check2" class="input">
					<label for="check2" class="label">동의합니다.</label>&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="check2N" class="input" type="radio" value="N" name="check2" class="input">
					<label for="check2N" class="label">동의하지 않습니다.</label>
				</div>
			</div>
			
		</div>
		<!-- form 어디로 넘겨줄지 -->
			<form id="defaultFrm" class="form" name="defaultFrm" action="hireEmail.hi" method="post">
				<div class="grid  div">
					<table class="tb_row table">
<!-- 					<tr class="tr"> -->
<!-- 						<th class="th">구분</th> -->
<!-- 						<td class="td"> -->
<!-- 					    <select name="recruitType" id="recruitType" class="select" required> -->
<!-- 						   <option value="0" selected="selected">전체</option> -->
<!-- 						   <option value="10"  >신입</option> -->
<!-- 						   <option value="20"  >경력</option> -->
<!-- 						   <option value="30"  >상시모집</option> -->
<!-- 						</select> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					<tr class="tr">
				        <th class="th">지원분야</th>
				        <td class="td"><div class="item div">
				            <select name="categorySrlList" id="categorySrlList" class="select" required>
				            	<option value="choice">선택하세요</option>
                                <option value="deginer" label="UX/UI디자이너" class="label">
                                <option value="publisher" label="퍼블리셔" class="label">
                                <option value="frontdeveloper" label="프론트개발자" class="label">
                                <option value="backdeveloper" label="백엔드개발자" class="label">
							</select>
				          </div></td>
				      </tr> 
				      <tr class="tr">
				        <th class="th">이름</th>
				        <td class="td"><div class="item div">
				            <input class="i_text input" id="txtUserName" type="text" name="txtUserName" required>
				          </div></td>
				      </tr>
				      <tr class="tr">
				        <th class="th">생년월일</th>
				        <td class="td"><div class="item div">
				            <input class="i_text input" id="txtRegNumberArry0" type="text" 
				            name="txtRegNumberArry0" maxlength="6" onkeydown="return showKeyCode(event);" 
				            onkeyup="removeChar(event);" style="ime-mode: disabled;" required> ex) 1990년 10월 26일 : 901026
				          </div></td>
				      </tr>
				      <tr class="tr">
					      <th class="th">비밀번호</th>
					      <td class="td"><div class="item div">
					          <input class="i_text input" id="txtUserPass" type="password" name="txtUserPass" maxlength="20" size="20" required>
					      </div></td>
				      </tr>
				      <tr class="tr">
					      <th class="th">첨부파일</th>
					      <td class="td"><div class="item div">
					          <input class="i_text input" id="txtUserPass" type="file" name="file" style="color:red">
					      </div></td>
				      </tr>
				 </table>
				 </div>
				 <div class="btn_page div">
					 <a href="#" class=" btnRed" id="btn_apply" name="btn_apply" onclick="return false;">
					 	<span class="btn2">지원하기</span>
					 </a>
				 </div>
			</form>
		</div>
	</div>


<!-- 지원하기 버튼 -->
<script>
    $("#btn_apply").bind("click", function(){
			board.goNextStep();
			return false;
	}); 

</script>
<!-- ------------------------------------------------------ -->


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