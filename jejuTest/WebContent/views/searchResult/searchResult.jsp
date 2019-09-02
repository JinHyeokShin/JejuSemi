<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, accommodation.model.vo.*, java.util.Date"%>
    
<%
	ArrayList<Acm> acmList = (ArrayList<Acm>)request.getAttribute("acmList");
	ArrayList<AcmImg> acmThumbnailImgList = (ArrayList<AcmImg>)request.getAttribute("acmThumbnailImgList");
	String checkIn = (String)request.getAttribute("checkIn");
	String checkOut = (String)request.getAttribute("checkOut");
	int adult = Integer.parseInt(request.getParameter("adult"));
	int child = Integer.parseInt(request.getParameter("child"));	
%>
    
<!DOCTYPE html>
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
         aside {
           float: left;
         }
         .star{
           color:gold;
           font-size: 22px;
           line-height: initial;
         }
         .searchForm{
           border: 1px solid lightgray;
           width: 100%;
         }
         .result{
          border: 1px solid lightgray;
          width: 85%;
         }
         .searchPhoto{
          border: 1px solid lightgray;
          width: 300px;
          height: 200px;
         }         
         li{
            list-style-type: none;
        }
        .resultWrap{
            width: 100%;
            height: 250px;
        }
        .d1{
            width: 75%;
            height: 100%;
        }
        .d2{
            width: 25%;
            height: 100%;
        }        
        .d3{
            height: 20%;
        }
        .d4{
            height: 80%;
        }
        .d5{
            width: 50%;
            height: 100%;
            padding: 15px;
            padding-top: 0px;
        }
        .d6{
            width: 50%;
            height: 100%;
            padding: 15px;
        }
        .d7{
        	height:70%;
        	text-align: right;
        	padding:15px;
        	line-height: initial;
        }
        .d8{
        	height: 30%;
        	text-align:center;
        }
        .imgDiv{
            /* width: 300px; */
            height: 175px;
            margin:auto;
            margin-top: 10px;
        }
        .dd{
            float: left;
        }
        .title{
        	text-indent: 20px;
        	line-height: initial;
        	padding-top: 7px;
        }
        .detailBtn{
        	margin:auto;
        }
        .resultSection{
        	/* height:100%; */
        }
        #resultAcmDiv{
        	background:#f2f4fb;
        }
        .pricePerNight{
        	font-size: 30px;
        	font-weight: bold;
        	color:#4492b8;
        }
        .etc{
        	padding-left:0;
        }
        .wrap-loading{		
		    position: fixed;
		    left:0;
		    right:0;
		    top:0;
		    bottom:0;
		    background: rgba(0,0,0,0.2);
		}
		.wrap-loading div{
			position: fixed;
	        top:50%;
	        left:50%;
	        margin-left: auto;
	        margin-right: auto;
	        margin-top: -21px;
	    }	
	    .display-none{
	        display:none;
	        timeToHide:2000;
	    }
</style>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">

	<%-- 헤더,메뉴바 --%>
    <%@ include file="../main/header.jsp" %>
	    
    
    <section class="section resultSection container" id="searchResult"">
        
		<div class="wrap-loading display-none">
		    <div><img src="<%=contextPath%>/resources/images/loading.gif"></div>
		</div>
		
          <aside>
            <hr>
              <label style="font-weight:bold">숙소유형</label><br>
              <input type="checkbox" id="hotel" class="sFilter acmType" value="'H'"><label for="hotel">&nbsp;호텔</label><br> 
              <input type="checkbox" id="resort" class="sFilter acmType" value="'R'"><label for="resort">&nbsp;리조트</label><br> 
              <input type="checkbox" id="condo" class="sFilter acmType" value="'C'"><label for="condo">&nbsp;콘도</label><br> 
              <input type="checkbox" id="hostel" class="sFilter acmType" value="'G'"><label for="hostel">&nbsp;호스텔</label><br> 
              <input type="checkbox" id="minbak" class="sFilter acmType" value="'M'"><label for="minbak">&nbsp;민박</label><br> 
              
              <hr>
              
              <label style="font-weight:bold">구역</label><br>
              <input type="checkbox" id="jeju" class="sFilter dist" value="'제주'"><label for="jeju">&nbsp;제주시</label><br>
              <input type="checkbox" id="seoguipo" class="sFilter dist" value="'서귀포'"><label for="seoguipo">&nbsp;서귀포시</label><br>
              
              <hr>
              
              <label style="font-weight:bold">1박요금</label><br>
              <font size=2 id="minPrice_view">최소가격 : &#8361;0</font><br>
              <input oninput='ShowSliderValueMin(this.value)' class="sFilter price" id="minPrice" type="range" min='1' max='100' value='1' step="1">
              <br>
              <font size=2 id="maxPrice_view">최대가격 : &#8361;0</font><br>
              <input oninput='ShowSliderValueMax(this.value)' class="sFilter price" id="maxPrice" type="range" min='1' max='100' value='1' step="1">

              <script>
                  function ShowSliderValueMin(sVal){
	                  var obValueView = document.getElementById("minPrice_view");
                    if(sVal == '100'){
                      sVal = '1,00';
                      obValueView.innerHTML = "최소가격 : &#8361;"+sVal+"0,000+"
                    }else{
	                    obValueView.innerHTML = "최소가격 : &#8361;"+sVal+"0,000"
                    }
                  }
                  function ShowSliderValueMax(sVal){
	                  var obValueView = document.getElementById("maxPrice_view");
                    if(sVal == '100'){
                      sVal = '1,00';
                      obValueView.innerHTML = "최대가격 : &#8361;"+sVal+"0,000+"
                    }else{
	                    obValueView.innerHTML = "최대가격 : &#8361;"+sVal+"0,000"
                    }
                  }
              </script>
              <br>
              <hr>
              <label style="font-weight:bold">등급</label><br>
              <input type="checkbox" name="avgStar" value="5" class="sFilter starr" id="5star"><label for="5star"><span class="star">&nbsp;★★★★★</span></label><br>
              <input type="checkbox" name="avgStar" value="4" class="sFilter starr" id="4star"><label for="4star"><span class="star">&nbsp;★★★★</span></label><br>
              <input type="checkbox" name="avgStar" value="3" class="sFilter starr" id="3star"><label for="3star"><span class="star">&nbsp;★★★</span></label><br>
              <input type="checkbox" name="avgStar" value="2" class="sFilter starr" id="2star"><label for="2star"><span class="star">&nbsp;★★</span></label><br>
              <input type="checkbox" name="avgStar" value="1" class="sFilter starr" id="1star"><label for="1star"><span class="star">&nbsp;★</span></label><br>
              <hr>

			<script>
				var page = 1;	/* 페이지 변수 */				
				
				$(".sFilter").change(function(){
					page = 1;
					listReload();			
					$('html, body').animate( { scrollTop : 750 }, 400 );	/* 필터 클릭시 스크롤 위로 올려줌 */
				});					
				
				
				function listReload() {		/* 필터 선택 or 스크롤 페이징 시 ajax실행 메소드 */	
					
					/* 숙소 타입 필터 */
					var arrType = new Array("ACM_TYPE IN");
					var arrDist = new Array("ACM_DISTRICT=");
					var arrStar = new Array("ACM_GRADE IN");
					var arrPrice = new Array("HAVING MIN(ROOM_PRICE)");
			
					var arr1 = document.getElementsByClassName("acmType");
					
					for(var i in arr1){						
						if(arr1[i].checked){
							arrType.push(arr1[i].value);
							console.log(arr1[i].value);
							
						}else{
							for(var j in arrType){
								if(arrType[j] == arr1[i].value){
									arrType.splice(arrType.indexOf(arr1[i].value),1);									
								}
							}
						}
					}
					console.log(arrType);
										
					/* 숙소 구역 필터 */
					var arr2 = document.getElementsByClassName("dist");
					
					for(var i in arr2){
						if(arr2[i].checked){
							arrDist.push(arr2[i].value);
						}else{
							for(var j in arrDist){
								if(arrDist[j] == arr2[i].value){
									arrDist.splice(arrType.indexOf(arr2[i].value),1);									
								}
							}
						}
					}
					console.log(arrDist);
					
					/* 숙소 등급 필터 */
					var arr3 = document.getElementsByClassName("starr");
					
					for(var i in arr3){
						if(arr3[i].checked){
							arrStar.push(arr3[i].value);
						}else{
							for(var j in arrStar){
								if(arrStar[j] == arr3[i].value){
									arrStar.splice(arrType.indexOf(arr3[i].value),1);									
								}
							}
						}
					}
					console.log(arrStar);
					
					/* 숙소 가격 필터 */
					var minPrice = 0;
					var maxPrice = 0;
					
					var minP = document.getElementById("minPrice");
					var maxP = document.getElementById("maxPrice");
										
					if(maxP.value != 1 && minP.value >= maxP.value){
						alert("최대 가격이 최소 가격 보다 커야합니다.");
					}else if(minP.value == 1 && maxP.value != 1){
						maxPrice = (maxP.value)*10000;
					}else if(minP.value != 1 && maxP.value == 1){
						minPrice = (minP.value)*10000;
					}else if(minP.value == 1 && maxP.value == 1){
						minPrice = 0;
						maxPrice = 0;
					}else{
						minPrice = (minP.value)*10000;
						maxPrice = (maxP.value)*10000;
					}
					arrPrice.push(minPrice);
					arrPrice.push(maxPrice);
					console.log(arrPrice);
					
						
					
					/* ajax 통신  */
					
					$.ajax({
						url:"option.ac",
			    		type:"get",
			    		data:{checkIn:"<%=checkIn%>",
			    			  checkOut:"<%=checkOut%>",
			    			  adult:<%=adult%>,
			    			  child:<%=child%>,
			    			  page:page,
			    			  arrType:arrType,
			    			  arrDist:arrDist,
			    			  arrStar:arrStar,
			    			  arrPrice:arrPrice
			    			 },
			    		success:function(result){
			    				  
					    			if(page == 1){
					    				$("#resultWrap").html("");
					    			}
					    				
					    				if(result != null){
					    										    					
					    					var str = "";
					    					
					    					$.each(result["acmList"], function(index, value){
				    							
								    			str += '<li>'+
															'<div class="test resultWrap aa" id="resultAcmDiv">'+
															'<div class="test d1 dd aa">'+
																'<div class="test d3 aa title">'+
																	'<a href="#" style="font-weight: bold; font-size: 1.5em;">'+value.acmName +'</a>'+'<br>'+
																	'<label style="font-size:10px;">'+value.acmAddress+'</label>'+
																'</div>'+
																'<div class="test d4 aa">'+
																	'<div class="test dd d5 aa">';
																		$.each(result["imgList"],function(index2, value2){
																			if(value.acmNum == value2.acmNum){
																			str +='<div class="test imgDiv aa"><img src="'+value2.imgPath+'" style="width:100%; height: 100%;"></div>';
																			}
																		});															
															str +='</div>'+
																			'<div class="test dd d6">설명'+
																				'<ul class="etc">'+
																					'<li>'+value.acmGrade+'성급</li>'+
																					'<li>'+value.acmDistrict+'시</li>'+
																				'</ul>'+							
																			'</div>'+
																		'</div>'+
																	'</div>'+							
																	'<div class="test d2 dd aa">'+
																		'<div class="test d7 aa">1박 가격 <br><span class="pricePerNight">&#8361;'+value.minPrice+'원</span></div>'+
																		'<div class="test d8 aa">'+
																			'<input type="hidden" value="'+value.acmNum+'">'+
																			'<button class="asdf btn btn-primary btn-block text-white"	style="width:70%;">상세보기</button>'+
																		'</div>'+'</div>'+'</div>'+'</li>'+'<br>';
					    						});		/* $.each close */
						    											    				
						    					$("#resultWrap").append(str);
						    					
						    					$(".asdf").addClass('detailBtn');
					    					
						    				}else{
						    					page--;
						    				}
							},	/* success close */
				    		error:function(){
				    			alert("검색하신 조건에 맞는 숙소가 없습니다.");
				    			/*console.log("통신실패");*/
				    		},	/* error close */
				    		beforeSend:function(){
				    			$('.wrap-loading').removeClass('display-none');
				    			window.setTimeout(function(){
			    					  $('.wrap-loading').addClass('display-none');
			    				  },800);
				    		},
				    		complete:function(){
				    			
				    			
				    		}
							
						});		/* ajax close */
						
					}	/* function close */
				
				
				
			
			</script>


          </aside>
          <div class="row justify-content-center mb-5">
             
             
             
            <!-- </div> -->
			<div align="left" style="width:100%; padding-left:40px;">
				<label style="font-size:18px"><%=checkIn %> ~ <%=checkOut %>&nbsp;&nbsp;&nbsp;성인 : <%=adult %>&nbsp;&nbsp;어린이/청소년 : <%=child %>&nbsp;&nbsp;검색 결과</label>
			</div>
			
				<ul class="resultWrap" id="resultWrap">
					<%if(acmList == null) {%>
						<div align="center"><b style="font-size: 3em">예약 가능한 숙박업소가 없습니다.</b></div>
					<%} else {%>
					
						<%for(Acm acm : acmList) {%>

							<li>
								<div class="test resultWrap aa" id="resultAcmDiv">
									<div class="test d1 dd aa">
										<div class="test d3 aa title">
											<a href="#" style="font-weight: bold; font-size: 1.5em;"><%=acm.getAcmName()%></a>
											<br>
											<label style="font-size:10px;"><%=acm.getAcmAddress()%></label>
										</div>
										<div class="test d4 aa">
											<div class="test dd d5 aa">
												<%for(AcmImg acmImg : acmThumbnailImgList){ %>
													<%if(acm.getAcmNum() == acmImg.getAcmNum()){ %>
														<div class="test imgDiv aa"><img src="<%=acmImg.getImgPath()%>" style="width:100%; height: 100%;"></div>														
													<%} %>												
												<%} %>
											
											</div>
											<div class="test dd d6">
												<ul class="etc">
													<li><%=acm.getAcmGrade() %>성급</li>
													<li><%=acm.getAcmDistrict() %>시</li>
												</ul>										
											</div>
										</div>
									</div>
		
									<div class="test d2 dd aa">
										<div class="test d7 aa">1박 가격 <br><span class="pricePerNight">&#8361;<%=acm.getMinPrice()%>원</span></div>
										<div class="test d8 aa">
											<input type="hidden" value="<%=acm.getAcmNum()%>">
											<button class="detailBtn btn btn-primary btn-block text-white"
												style="width:70%;">상세보기</button>
										</div>
									</div>
								</div>
							</li>
							<br>
						<%}	%>
					<%} %>
					
				</ul>
				
				<script>
						
					
					$(document).on('ready',function(){
						
						
						$(window).on('scroll',function() {
							console.log("page = "+page);
							
							var maxHeight = $(document).height();
						    var currentScroll = $(window).scrollTop() + $(window).height();
						    
						    console.log(maxHeight);
						    console.log(currentScroll);
						    
						    /* (currentScroll-1 <= maxHeight && maxHeight < currentScroll) */
							
						    if(maxHeight <= currentScroll+0.5){
						    	
						    	console.log("스크롤 페이징");
						    	
						    	page++;
						    	
						    	
						    	listReload();
							}
						});
					});
					
					
					
					$(document).on('click','.detailBtn',function() {						
						location.href="<%=contextPath%>/detail.ac?acmNum="+$(this).prev().val()+"&checkIn=<%=checkIn%>&checkOut=<%=checkOut%>&adult=<%=adult%>&child=<%=child%>";
					});
					
				</script>

			</div>          
       
    
    </section>
    

   
      <br clear="both">
     <%-- 풋터 --%>
    <%@ include file="../main/footer.jsp" %>

	<%-- <section class="section bg-image overlay" style="background-image: url('<%= request.getContextPath() %>/resources/images/hero_4.jpg');" id="section-apply">
        <div class="container" >
          <div class="row align-items-center">
            <div class="col-12 col-md-6 text-center mb-4 mb-md-0 text-md-left" data-aos="fade-up">
              <h2 class="text-white font-weight-bold">제주에서 놀면서 일하실분!</h2>
            </div>
            <div class="col-12 col-md-6 text-center text-md-right" data-aos="fade-up" data-aos-delay="200">
              <!-- Extra large modal -->
              <a href="#" class="btn btn-outline-white-primary py-3 text-white px-5" data-toggle="modal" data-target="#reservation-form">지금 지원하기</a>
            </div>
          </div>
        </div>
      </section> --%>
	

	

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