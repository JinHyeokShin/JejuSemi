<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String msg = (String)request.getAttribute("msg");
%>    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>error</title>

<style>

body{
	color: #fd7e14; 
    background: #eaeaea;
    font-family: 'Ruda', sans-serif;
}

</style>

<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
  
</head>

<body style="back-ground:#eaeaea">
  <div class="container" style="text-align:center; margin-top:150px">
    <div class="row">
      <div class="col-lg-6 col-lg-offset-3 p404 centered">
        <img src="<%= request.getContextPath() %>/resources/images/500.png">
        <h1 style="font-size:36px;">잘못된 페이지입니다</h1>
        <h3 style="font-family: monospace; font-size:24px; padding-bottom:10px;"><%= msg %></h3>      
        
        <h5 class="mt" style="font-family: monospace; font-size:14px;">Hey, maybe you will be interested in these pages:</h5>
        <p><a href="<%=request.getContextPath() %>" style="font-size:13px; text-decoration:none; color: royalblue;">MainPage</a> | 
           <a href="#" style="font-size:13px; text-decoration:none; color: royalblue;" onclick="history.go(-1);">previous page</a>
        </p>
      </div>
    </div>
  </div>


  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>