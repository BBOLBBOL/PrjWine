<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
   crossorigin="anonymous">
<style>
.search-container {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    width: 100%;
}

.search-container input[type="search"] {
    background-color: #F5F5F5;
    border: 2px solid #FFA500;
    color: #333;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 16px;
    font-weight: bold;
    placeholder-color: #FFA500;
    width: 60%;
    text-align: right;
    margin-right: 10px; /* 오른쪽 여백을 주기 위해 margin-right 사용 */
}

.search-container button {
    /* 버튼에 스타일을 적용하세요. */
    background-color: #FFA500;
    color: #FFF;
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 16px;
    font-weight: bold;
}

.inputRound {
   border-radius: 5px;
}

.product-section
{
margin-top: 50px;
}
</style>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
   crossorigin="anonymous"></script>
<script>
    // all 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="all_click"]').addEventListener('click', function() {
        location.href = '/All_Click';
    });
    
    // Red 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="red_click"]').addEventListener('click', function() {
        location.href = '/Red_Click';
    });

    // White 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="white_click"]').addEventListener('click', function() {
        location.href = '/White_Click';
    });

    // Sparkling 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="sparkling_click"]').addEventListener('click', function() {
        location.href = '/Sparkling_Click';
    });

    // Rose 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="rose_click"]').addEventListener('click', function() {
        location.href = '/Rose_Click';
    });

    // Other 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="other_click"]').addEventListener('click', function() {
        location.href = '/Other_Click';
    });
    
function goToPage(pageNumber) {
	
    // 페이지 번호를 눌렀을 때 이동할 URL을 생성
    var url = '?name_Search=${name_Search}&nowPage=' + pageNumber + '&cntPerPage=${pds.cntPerPage}';

    // 페이지 이동
    window.location.href = url;
}
</script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체와인</h1>
                  <br>
                  <p>Wine Information</p>
               </div>
            </div>
   </div>
   <br>
   <br>
   <!-- 와인 검색start -->
   <div class="container">
      <!-- 버튼 검색 -->
      <div class="product-section mb-150">
		<div class="container">

			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <li onclick="window.location.href = '/All_Click';"       name="All_click">all</li>
                            <li onclick="window.location.href = '/Red_Click';"       name="red_click">레드와인</li>
                            <li onclick="window.location.href = '/White_Click';"     name="white_click">화이트와인</li>
                            <li onclick="window.location.href = '/Sparkling_Click';" name="sparkling_click">스파클링</li>
                            <li onclick="window.location.href = '/Rose_Click';"      name="rose_click">로제와인</li>
                            <li onclick="window.location.href = '/Other_Click';"     name="other_click">기타와인</li>
                        </ul>
                    </div>
                </div>
            </div>
      <!-- input 검색 -->
         	<div class="container">
	<div class="search-container">
         <form action="/NameSearch" method="POST">
            <input type="search"   name="name_Search" placeholder="와인이름">
            <input type="submit"   value="전체와인검색">
   
   <!-- 와인 검색end -->
   
   <c:set var="wine" value="" />

	<c:choose>
    <c:when test="${not empty redClick}">
        <c:set var="wine" value="${redClick}" />
    </c:when>
    <c:when test="${not empty whiteClick}">
        <c:set var="wine" value="${whiteClick}" />
    </c:when>
    <c:when test="${not empty sparkClick}">
        <c:set var="wine" value="${sparkClick}" />
    </c:when>
    <c:when test="${not empty roseClick}">
        <c:set var="wine" value="${roseClick}" />
    </c:when>
    <c:when test="${not empty otherClick}">
        <c:set var="wine" value="${otherClick}" />
    </c:when>
    <c:when test="${not empty nameSearch}">
        <c:set var="wine" value="${nameSearch}" />
    </c:when>
    <c:otherwise>
        <c:set var="wine" value="${allClick}" />
    </c:otherwise>
</c:choose>

	<div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${wine}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
   				 <img src="${wine.w_image}" alt="와인이미지" style="width: 300px; height: 300px; object-fit: contain;">
			</div>
            <div class="card-body">
               <h5 class="card-title" style="max-height: 3em; overflow: hidden; line-height: 3em;">${wine.w_name}</h5>
              <c:choose>
    			<c:when test="${empty wine.w_wineery}">
        		  <p class="card-text" style="max-height: 1em; overflow: hidden; line-height: 1em;">&nbsp;</p>
    			</c:when>
    			<c:otherwise>
        		  <p class="card-text" style="max-height: 1em; overflow: hidden; line-height: 1em;">${wine.w_wineery}</p>
    			</c:otherwise>
			  </c:choose>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="cart-btn">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
         </form>
      </div>
     </div>
   </div>
  </div>
</div>
<div style="display: block; text-align: center;">

   <c:if test="${pds.startPage != 1}">
    <a href="#" onclick="goToPage(${pds.startPage - 1}, '${wine}'); return false;">&lt;</a>
</c:if>

<c:forEach begin="${pds.startPage}" end="${pds.endPage}" var="p">
    <c:choose>
        <c:when test="${p == pds.nowPage}">
            <b>${p}</b>
        </c:when>
        <c:when test="${p != pds.nowPage}">
             <a href="#" onclick="goToPage(${p}, '${wine}'); return false;">${p}</a>
        </c:when>
    </c:choose>
</c:forEach>

<c:if test="${pds.endPage != pds.lastPage}">
    <a href="#" onclick="goToPage(${pds.endPage + 1}, '${wine}'); return false;">&gt;</a>
</c:if>
</div>
</body>
</html>