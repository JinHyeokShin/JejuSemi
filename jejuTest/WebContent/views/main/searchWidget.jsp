<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.text.SimpleDateFormat"%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	Calendar c = Calendar.getInstance();
	Date date = new Date();
	String today = sdf.format(date);	
	Date date1 = sdf.parse(today);
	
	c.setTime(date1);
	c.add(Calendar.DATE,1);
	String tomorrow = sdf.format(c.getTime());
	
	/* System.out.println(today);
	System.out.println(tomorrow); */
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<section class="section bg-light pb-0"  >
	<div class="container">                 
          <div class="row check-availabilty" id="next">
            <div class="block-32" data-aos="fade-up" data-aos-offset="-200">
            
              <form action="<%= request.getContextPath() %>/search.ac" method="post" id="searchForm">
                <div class="row">
                  <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                    <label for="checkin_date" class="font-weight-bold text-black">Check In</label>
                    <div class="field-icon-wrap">
                      <div class="icon"><span class="icon-calendar"></span></div>
                      <input type="text" id="checkin_date" class="form-control dal datedate" name="checkInDate" value="<%=today%>">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                    <label for="checkout_date" class="font-weight-bold text-black">Check Out</label>
                    <div class="field-icon-wrap">
                      <div class="icon"><span class="icon-calendar"></span></div>
                      <input type="text" id="checkout_date" class="form-control dal datedate" name="checkOutDate" value="<%=tomorrow%>">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3 mb-md-0 col-lg-3">
                    <div class="row">
                      <div class="col-md-6 mb-3 mb-md-0">
                        <label for="adults" class="font-weight-bold text-black">Adults</label>
                        <div class="field-icon-wrap">
                          <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                          <select name="adult" id="adult" class="form-control">
                            <option value="0">0</option>
                            <option value="1" selected="true">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6 mb-3 mb-md-0">
                        <label for="children" class="font-weight-bold text-black">Children</label>
                        <div class="field-icon-wrap">
                          <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                          <select name="child" id="child" class="form-control">
                              <option value="0">0</option>
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                              <option value="5">5</option>
                              <option value="6">6</option>
                              <option value="7">7</option>
                              <option value="8">8</option>
                              <option value="9">9</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-3 align-self-end">
                    <button class="btn btn-primary btn-block text-white" id="searchBtn">Check Availabilty</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
	</section>
	
	<script>
		$("#searchBtn").click(function() {
			$("#searchForm").submit();
		});
		
		$(".datedate").change(function(){
		 		
	 		var strDate1 = $("#checkin_date").val();
	 		var strDate2 = $("#checkout_date").val();
	 		var arr1 = strDate1.split('-');
	 		var arr2 = strDate2.split('-');
	 		
	 		/* console.log(arr1);
	 		console.log(arr2); */
	 		
	 		var dat1 = new Date(arr1[0], arr1[1]-1, arr1[2]);
	 		var dat2 = new Date(arr2[0], arr2[1]-1, arr2[2]);
	 	
	 		/* console.log(dat2);	 */
	 		
	 	    // 날짜 차이 알아 내기
	 	    var diff = dat2.getTime() - dat1.getTime();
	 	    var result = Math.floor(diff/1000/60/60/24);
	 	    
	 	    
	 	    if(diff <= 0){
	 	    	
	 	    	dat2.setDate(dat1.getDate()+1);
	 	    	
	 	    	var year = dat2.getFullYear();
	 	    	var month = dat2.getMonth()+1;
	 	    	var day = dat2.getDate();
	 	    		 	    	
		 	    var month1 = month;
		 	    var day1 = day;
		 	    
		 	    	if(month1 < 10){
		 	    		month1 = "0"+month1;
		 	    	}
		 	    	if(day1 < 10){
		 	    		day1 = "0"+day1;
		 	    	}
		 	    	
	 	    	var dat2_2 = (year + "-" + month1 + "-" + day1);
	 	    	$("#checkout_date").val(dat2_2); // 하루 밀린 날짜 출력(string)
	 	    	
	 	    	//var dat2_3 = new Date(dat1.getFullYear(),month1,day1); // 실제 날짜로 만들어서 계산
	 	    	
	 	    	/* diff = dat2.getTime() - dat1.getTime();
	 	    	result = Math.floor(diff/1000/60/60/24);
	 	    	$("#numNight").text(result+'박'); */
	 	    } /* else{
		 		$("#numNight").text(result+'박');
	 	    }
	 	     */
	 	    
	 	    
	 	    /* 요일 나타내기 */
			/* var week = ['일', '월', '화', '수', '목', '금', '토'];
			var checkInDay = week[new Date(strDate1).getDay()];
			var checkOutDay = week[new Date(strDate2).getDay()];
			
			$(".checkin_day").text(checkInDay+'요일');
			$(".checkout_day").text(checkOutDay+'요일'); */
	 	});
	</script>
	
	
	
	
	
</body>
</html>