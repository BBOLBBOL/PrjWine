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
  .inputRound {
   border-radius: 5px;
  }
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
 <%@include file="/WEB-INF/include/nav.jsp" %>

<h1 style="text-align: center; margin-top: 60px;">전체와인</h1>
<br><br>

<!-- 와인 검색start -->
<div class="container">
  <!-- 버튼 검색 --> 
  <div>
    <button type="button" onclick="location.href=''" class="btn btn-outline-secondary">all</button>
   	<button type="button" onclick="location.href=''" class="btn btn-outline-secondary">레드와인</button>
 	<button type="button" onclick="location.href=''" class="btn btn-outline-secondary">화이트와인</button>
 	<button type="button" onclick="location.href=''" class="btn btn-outline-secondary">스파클링</button>
 	<button type="button" onclick="location.href=''" class="btn btn-outline-secondary">로제</button>
 	<button type="button" onclick="location.href=''" class="btn btn-outline-secondary">기타와인</button>

  </div>
  <br><br>
  <!-- input 검색 -->
  <div>
    <form action="" method="POST">
      <input type="search" name="" placeholder="와인이름" class="inputRound">
      <input type="submit" value="찾기" class="inputRound">
    </form>
  </div>
</div>
<!-- 와인 검색end -->


<!--  와인 리스트  -->
<div class="container" style="margin-top: 60px; display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px;">	
	<div class="card" style="width: 18rem;">
	  <img src="/img/test.jpg" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">와인이름(wine.name)</h5>
	    <p class="card-text">와인설명(wine.cont)</p>
	 	<ul class="list-group list-group-flush">
	    	<li class="list-group-item">가격</li>
	      	<li class="list-group-item">입고수량</li>
	      	<li class="list-group-item"></li>
	    </ul>    
	    <a href="/WineInfo?w_no=1" class="btn btn-primary">와인 보기</a>
	  </div>
	</div>

	<div class="card" style="width: 18rem;">
	  <img src="/img/test.jpg" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">와인이름(wine.name)</h5>
	    <p class="card-text">와인설명(wine.cont)</p>
	 	<ul class="list-group list-group-flush">
	    	<li class="list-group-item">가격</li>
	      	<li class="list-group-item">입고수량</li>
	      	<li class="list-group-item"></li>
	    </ul>    
	    <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
	  </div>
	</div>
	
	<div class="card" style="width: 18rem;">
	  <img src="/img/test.jpg" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">와인이름(wine.name)</h5>
	    <p class="card-text">와인설명(wine.cont)</p>
	 	<ul class="list-group list-group-flush">
	    	<li class="list-group-item">가격</li>
	      	<li class="list-group-item">입고수량</li>
	      	<li class="list-group-item"></li>
	    </ul>    
	    <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
	  </div>
	</div>
	
	<div class="card" style="width: 18rem;">
	  <img src="/img/test.jpg" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">와인이름(wine.name)</h5>
	    <p class="card-text">와인설명(wine.cont)</p>
	 	<ul class="list-group list-group-flush">
	    	<li class="list-group-item">가격</li>
	      	<li class="list-group-item">입고수량</li>
	      	<li class="list-group-item"></li>
	    </ul>    
	    <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
	  </div>
	</div>
	
	<div class="card" style="width: 18rem;">
	  <img src="/img/test.jpg" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">와인이름(wine.name)</h5>
	    <p class="card-text">와인설명(wine.cont)</p>
	 	<ul class="list-group list-group-flush">
	    	<li class="list-group-item">가격</li>
	      	<li class="list-group-item">입고수량</li>
	      	<li class="list-group-item"></li>
	    </ul>    
	    <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
	  </div>
	</div>
	
	<div class="card" style="width: 18rem;">
	  <img src="/img/test.jpg" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">와인이름(wine.name)</h5>
	    <p class="card-text">와인설명(wine.cont)</p>
	 	<ul class="list-group list-group-flush">
	    	<li class="list-group-item">가격</li>
	      	<li class="list-group-item">입고수량</li>
	      	<li class="list-group-item"></li>
	    </ul>    
	    <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
	  </div>
	</div>
	
	
</div>
<!--  와인 리스트  -->	
</div>



<!--  와인 리스트  -->
<div class="container" style="margin-top: 60px; display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px;">   
   <div class="card" style="width: 18rem;">
     <img src="/img/test.jpg" class="card-img-top" alt="...">
     <div class="card-body">
       <h5 class="card-title">와인이름(wine.name)</h5>
       <p class="card-text">와인설명(wine.cont)</p>
       <ul class="list-group list-group-flush">
          <li class="list-group-item">가격</li>
            <li class="list-group-item">입고수량</li>
            <li class="list-group-item"></li>
       </ul>    
       <a href="/WineInfo" class="btn btn-primary">와인 보기</a>
     </div>
   </div>

   <div class="card" style="width: 18rem;">
     <img src="/img/test.jpg" class="card-img-top" alt="...">
     <div class="card-body">
       <h5 class="card-title">와인이름(wine.name)</h5>
       <p class="card-text">와인설명(wine.cont)</p>
       <ul class="list-group list-group-flush">
          <li class="list-group-item">가격</li>
            <li class="list-group-item">입고수량</li>
            <li class="list-group-item"></li>
       </ul>    
       <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
     </div>
   </div>
   
   <div class="card" style="width: 18rem;">
     <img src="/img/test.jpg" class="card-img-top" alt="...">
     <div class="card-body">
       <h5 class="card-title">와인이름(wine.name)</h5>
       <p class="card-text">와인설명(wine.cont)</p>
       <ul class="list-group list-group-flush">
          <li class="list-group-item">가격</li>
            <li class="list-group-item">입고수량</li>
            <li class="list-group-item"></li>
       </ul>    
       <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
     </div>
   </div>
   
   <div class="card" style="width: 18rem;">
     <img src="/img/test.jpg" class="card-img-top" alt="...">
     <div class="card-body">
       <h5 class="card-title">와인이름(wine.name)</h5>
       <p class="card-text">와인설명(wine.cont)</p>
       <ul class="list-group list-group-flush">
          <li class="list-group-item">가격</li>
            <li class="list-group-item">입고수량</li>
            <li class="list-group-item"></li>
       </ul>    
       <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
     </div>
   </div>
   
   <div class="card" style="width: 18rem;">
     <img src="/img/test.jpg" class="card-img-top" alt="...">
     <div class="card-body">
       <h5 class="card-title">와인이름(wine.name)</h5>
       <p class="card-text">와인설명(wine.cont)</p>
       <ul class="list-group list-group-flush">
          <li class="list-group-item">가격</li>
            <li class="list-group-item">입고수량</li>
            <li class="list-group-item"></li>
       </ul>    
       <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
     </div>
   </div>
   
   <div class="card" style="width: 18rem;">
     <img src="/img/test.jpg" class="card-img-top" alt="...">
     <div class="card-body">
       <h5 class="card-title">와인이름(wine.name)</h5>
       <p class="card-text">와인설명(wine.cont)</p>
       <ul class="list-group list-group-flush">
          <li class="list-group-item">가격</li>
            <li class="list-group-item">입고수량</li>
            <li class="list-group-item"></li>
       </ul>    
       <a href="/Storegoinfo" class="btn btn-primary">매장페이지 가기</a>
     </div>
   </div>
   
   
</div>
<!--  와인 리스트  -->   


      


</body>
</html>








