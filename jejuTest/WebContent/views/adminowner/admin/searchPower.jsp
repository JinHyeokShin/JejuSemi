<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
/* //fd7e14 */
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

.table table-bordered>buttons {
	background: #fd7e14;
	color: #fd7e14;
}

.content-panel {
	padding: 10px;
}
.inline {
display:inline;
align:right;
}
.pagingArea{
	align:right;
	float:right;
}
</style>
<%@ include file="../../../views/adminowner/common/adminSidebar.jsp"%>

</head>
<body>
<script>
	var currentPage;
	var listCount;
	var pageLimit;
	var maxPage;
	var startPage;
	var endPage;
	var boardLimit; 

	$(function(){
		ajax();
	});

	function ajax(){
		$.ajax({
			url:"powerAjax.ad",
			dataType:"json",
			type:"get",
			data:{currentPage:currentPage},
			success:function(data){
				console.log("ajax succ");
				var $tableBody = $("#powerTable tbody");
				$tableBody.html("");
				
				$.each(data.pArr, function(index,value) {//data [index]
					var $tr = $("<tr>");//<tr></tr>
					
					var $pNumTd = $("<td>").text(value.pNum);
					var $acmNameTd = $("<td>").text(value.acmName);
					var $payNumTd = $("<td>").text(value.payNum);
					var $sDateTd = $("<td>").text(value.sDate);
					var $eDateTd = $("<td>").text(value.eDate);
					var $pStatTd = $("<td>").text(value.pStat);
					var $pFlagTd = $("<td>").text(value.pFlag);
	
					$tr.append($pNumTd);
					$tr.append($acmNameTd);
					$tr.append($payNumTd);
					$tr.append($sDateTd);
					$tr.append($eDateTd);
					$tr.append($pStatTd);
					$tr.append($pFlagTd);
	
					$tableBody.append($tr);
				});
				currentPage = data.pObj.currentPage;
				listCount = data.pObj.listCount;
				pageLimit = data.pObj.pageLimit;
				maxPage = data.pObj.maxPage;
				startPage = data.pObj.startPage;
				endPage  = data.pObj.endPage;
				boardLimit = data.pObj.boardLimit;
				
				
				if(currentPage==1){
					$('#prev').attr('disabled',true);
				}else{
					$('#prev').attr('disabled',false);
				}
				if(currentPage==maxPage){
					$('#next').attr('disabled',true);
				}else{
					$('#next').attr('disabled',false);
				}
				
				$('#btnArea').empty();
				var $div =$('#btnArea')
				for(var i = startPage ; i <= endPage ; i++){        //시작페이지부터 종료페이지까지 반복문
		        	if(currentPage == i){                            //현재페이지가 반복중인 페이지와 같다면
		               	$div.append("<button class=\"btn\" disabled >"+i+"</button>");    //버튼 비활성화
		        	}else{
		               	$div.append("<button class=\"btn\" onclick=\"pgBtn("+i+");\">"+i+"</button>");    //버튼 비활성화
		        	}
		        }
				
				
				
			}//success end
		});//$ajax end
	};//function ajax() end
	function pgBtn(i){
		currentPage=i;
		ajax();
	};
	function prev(){
		currentPage =currentPage-1;
		ajax();
	}
	function next(){
		currentPage =currentPage+1;
		ajax();
		
	}
</script>
	<section id="main-content">
		<section class="wrapper site-min-height">
			<h3>
				<i class="fa fa-angle-right"></i> 파워 조회
			</h3>
			<br>
			<div class="col-lg-12 mt">
				<div class="row content-panel">
					<table id="powerTable" class="table table-bordered display">
						<thead>
						<tr>
							<th>#</th>					
							<th>숙소</th>					
							<th>결제번호</th>					
							<th>시작일시</th>					
							<th>종료일시</th>					
							<th>일수</th>					
							<th>상태</th>					
						</tr>					
						</thead>
						<tbody>
						
						</tbody>
					</table>
					
					<div id="pagingArea" class="pagingArea inline" align="right">
						<button id="prev" class="btn btn-default" onclick="prev();" >&lt; previous</button>
						
						<div id = "btnArea" class="inline"></div>
						
						<button id="next" class="btn btn-default" onclick="next();" >next &gt;</button>
					</div>					
				</div>
			</div>
		</section>
	</section>
	<%@ include file="../../../views/adminowner/common/footer.jsp"%>

</body>
</html>
