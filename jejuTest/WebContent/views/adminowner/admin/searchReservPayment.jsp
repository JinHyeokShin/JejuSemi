<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Come To Jeju -</title>
<style>
ul.sidebar-menu li a.active1, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus
	{
	background: #fd7e14;
	color: #fff;
	display: block;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	-ms-transition: all 0.3s ease;
	transition: all 0.3s ease;
	cursor: pointer;
}

ul.sidebar-menu li ul.sub li.active a {
	color: #fd7e14;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	-ms-transition: all 0.3s ease;
	transition: all 0.3s ease;
	display: block;
	cursor: pointer;
}

.panel-heading {
	margin: 15px;
}
</style>
</head>
<body>
<script>
//PaymentAjax

$(function(){
	ajax();
});


var pCurrentPage;
var ppBoardLimit;
var pPageLimit;
var pMaxPage;
var pStartPage;
var pEndPage;
var pBoardLimit; 
function ajax(){
	$.ajax({
		url:"paymentAjax.ad",
		dataType:"json",
		type:"get",
		data:{pCurrentPage:pCurrentPage},
		success:function(data){
			var $tableBody = $("#myTable1 tbody");
			$tableBody.html("");
			
			$.each(data.pArr, function(index,value) {//data [index]
				var $tr = $("<tr>");//<tr></tr>
				
				var $pCurrentPageTd = $("<td>").text(value.pCurrentPage);
				var $pCountTd = $("<td>").text(value.pCount);
				var $pPageLimitTd = $("<td>").text(value.pPageLimit);
				var $pMaxPageTd = $("<td>").text(value.pMaxPage);
				var $pStartPageTd = $("<td>").text(value.pStartPage);
				var $pEndPageTd = $("<td>").text(value.pEndPage);
				var $pBoardLimitTd = $("<td>").text(value.pBoardLimit);

				$tr.append($pCurrentPageTd);
				$tr.append($pCountTd);
				$tr.append($pPageLimitTd);
				$tr.append($pMaxPageTd);
				$tr.append($pStartPageTd);
				$tr.append($pEndPageTd);
				$tr.append($pBoardLimitTd);

				$tableBody.append($tr);
			});
			pCurrentPage = data.pObj.pCurrentPage;
			ppBoardLimit = data.ppBoardLimit;
			pPageLimit = data.pObj.pPageLimit;
			pMaxPage = data.pObj.pMaxPage;
			pStartPage = data.pObj.pStartPage;
			pEndPage  = data.pObj.pEndPage;
			pBoardLimit = data.pObj.pBoardLimit;
			
			
			if(pCurrentPage==1){
				$('#prev').attr('disabled',true);
			}else{
				$('#prev').attr('disabled',false);
			}
			if(pCurrentPage==pMaxPage){
				$('#next').attr('disabled',true);
			}else{
				$('#next').attr('disabled',false);
			}
			
			$('#btnArea').empty();
			var $div =$('#btnArea')
			for(var i = pStartPage ; i <= pEndPage ; i++){        //시작페이지부터 종료페이지까지 반복문
	        	if(pCurrentPage == i){                            //현재페이지가 반복중인 페이지와 같다면
	               	$div.append("<button class=\"btn\" disabled >"+i+"</button>");    //버튼 비활성화
	        	}else{
	               	$div.append("<button class=\"btn\" onclick=\"pgBtn("+i+");\">"+i+"</button>");    //버튼 비활성화
	        	}
	        }
		}//success end
	});//$ajax end
};//function ajax() end
function pgBtn(i){
	pCurrentPage=i;
	ajax();
};
function prev(){
	pCurrentPage =pCurrentPage-1;
	ajax();
}
function next(){
	pCurrentPage =pCurrentPage+1;
	ajax();
	
}
</script>
</script>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!-- main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div class="row mt">
					<h3>>>공지사항</h3>
					<!-- /col-lg-12 -->
					<div class="col-lg-12 mt">
						<div class="row content-panel">
							<div class="panel-heading">
								<ul class="nav nav-tabs nav-justified">
									
									<li id="li1" class="active">
									<a data-toggle="tab"  href="#paymentList" class="contact-map">결제 조회</a>
									</li>
									
									<li id="li2" >
									<a data-toggle="tab" href="#reservationList">예약 조회</a>
									
									</li>
								</ul>

							</div>
							<!-- /panel-heading -->
							<div class="panel-body">
								<div class="tab-content">
								
									<div id="paymentList" class="tab-pane active">
										<div class="col-md-12 mt">
											<div id="hide1" class="content-panel">
												<table id="myTable1" class="table table-bordered display"
													style="font-size: 15px;">
													<thead>
														<tr>
															<th>결제 번호</th>
															<th>예약 번호</th>
															<th>결제 금액</th>
															<th>승인 번호</th>
															<th>결제 수단</th>
															<th>결제 취소</th>
															<th>결제일시</th>
															<th>결체 취소일</th>
														</tr>
													</thead>
													<tbody>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- /tab-pane -->



									<!-- 									공지사항작성 -->
									<div id="reservationList" class="tab-pane">
										<div class="col-md-12 mt">
											<div id="hide2" class="content-panel">
												<table id="myTable2" class="table table-bordered display"
													style="font-size: 10px;">
													<thead>
														<tr>
															<th>번호</th>
															<th>숙소</th>
															<th>룸</th>
															<th>예약자</th>
															<th>인원</th>
															<th>체크인</th>
															<th>체크아웃</th>
															<th>가격</th>
															<th>예약일</th>
															<th>취소</th>
															<th>취소일</th>
															<th>요구사항</th>
															<th>노쇼</th>
															<th>상태</th>
														</tr>
													</thead>
													<tbody>
													</tbody>
												</table>
											</div>
											<!-- /col-lg-8 -->
										</div>
									</div>

								</div>
								<!-- /tab-content -->
							</div>
							<!-- /panel-body -->
						</div>
						<!-- /col-lg-12 -->
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</section>
			<!-- /wrapper -->
		</section>
		<!-- main content end-->
		<%@ include file="../../../views/adminowner/common/footer.jsp"%>
	</section>

</body>
</html>