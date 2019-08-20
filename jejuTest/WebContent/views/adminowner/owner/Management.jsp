<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<%@ include file="../../../views/adminowner/common/ownerSidebar.jsp" %>

	<link href='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
	<link href='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
	<link href="<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	    <link href="<%= request.getContextPath() %>/resources/adminowner/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/adminowner/lib/advanced-datatable/css/DT_bootstrap.css" />
	
	<script src='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/moment.min.js'></script>
	<script src='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/jquery.min.js'></script>
	<script src='<%= request.getContextPath() %>/resources/adminowner/lib/fullcalendar/fullcalendar.min.js'></script>
	
	
	<link href='../fullcalendar.min.css' rel='stylesheet' />
<link href='../fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='../lib/moment.min.js'></script>
<script src='../lib/jquery.min.js'></script>
<script src='../fullcalendar.min.js'></script>
<script>

	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
			defaultDate: '2019-08-20',
			navLinks: true, // can click day/week names to navigate views
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'All Day Event',
					start: '2019-08-01'
				},
				{
					title: '신진혁, 010-7316-0813',
					start: '2019-08-24',
					end: '2019-08-25'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-04-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-04-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2017-04-11',
					end: '2017-04-13'
				},
				{
					title: 'Meeting',
					start: '2017-04-12T10:30:00',
					end: '2017-04-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2017-04-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2017-04-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2017-04-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2017-04-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2017-04-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2017-04-28'
				}
			]
		});
		
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}
ul.sidebar-menu li a.active2, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
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

</style>
</head>
<body>
  <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Calendar</h3>
        <!-- page start-->
        <div class="row mt">
          <aside class="col-lg-12 mt">
            <section class="panel">
              <div class="panel-body">
                <div id="calendar"></div>
              </div>
            </section>
          </aside>
         </div>
        </section>
    </section>
</body>
</html>
