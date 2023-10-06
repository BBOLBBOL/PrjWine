<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>

.logintitle {
	text-align: center;
	margin-top: 40px;
}
.container{
   margin: 0 auto; /* 상하여백 좌우여백 */
}
table{
   margin: 0 auto;
   border: 2px solid;
   border-collapse: collapse;
}
tr > td:nth-child(1) {
   text-align: center;
}
tr, td{
   border: 2px solid;
}
.redFont{
   color: red;
   font-size: 12px;
   font-style: italic;
}
textarea{
   resize: none;
}
 
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
 <%@include file="/WEB-INF/include/nav.jsp" %>

<h2 class="logintitle">매장 정보확인</h2>
<div class="container">
 <form action="/UserJoin" method="POST">
 	<br><br>
	<p><b>매장 아이디:</b></p> 
	<p><b>매장 이름:</b></p>
	<p><b>매장 사업자번호:</b></p>
	<p><b>매장 주소:</b></p>
	<p><b>매장 연락처:</b></p>
	<p><b>매장 소개:</b></p>
	<p><b>매장 사진:</b></p>
	<div style="text-align: center;">
	<input type="button" value="메인화면가기" onclick="location.href='/'" style="margin: auto">
	<input type="button" value="수정하러가기" onclick="location.href='/StoreCheckUpdate'" style="margin: auto">
	</div>
</div>


		

  <script>
	function itemChange(){
		 
		var seoul = ["강남","서초","송파"];
		var busan = ["동래","서면","광안리","해운대"];
		var zezu = ["애월","서귀포","땡땡"];
		 
		var selectItem = $("#u_si").val();
		 
		var changeItem;
		  
		if(selectItem == "서울"){
		  changeItem = seoul;
		}
		else if(selectItem == "부산"){
		  changeItem = busan;
		}
		else if(selectItem == "제주"){
		  changeItem =  zezu;
		}
		 
		$('#u_gu').empty();
		 
		for(var count = 0; count < changeItem.length; count++){                
		                var option = $("<option>"+changeItem[count]+"</option>");
		                $('#u_gu').append(option);
		            }
	}
  </script>
</body>
</html>









