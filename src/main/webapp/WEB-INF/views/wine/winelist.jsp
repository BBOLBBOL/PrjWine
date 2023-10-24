<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
.search-container1 {
	width: 90%;
	margin-top: 50px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

body {
	margin-bottom: 5% !important;
}

.search-container1 input[type="search"] {
	background-color: #F5F5F5;
	border: 2px solid #FFA500;
	color: #333;
	padding: 7px 15px;
	border-radius: 5px;
	font-size: 16px;
	font-weight: bold;
	placeholder-color: #FFA500;
	width: 200px;
	text-align: right;
	margin-right: 10px; /* 오른쪽 여백을 주기 위해 margin-right 사용 */
}

.search-container1 input[type="submit"] {
	background-color: #FFA500; /* 배경색 */
	color: #FFF; /* 글자색 */
	padding: 10px 15px;
	border-radius: 5px;
	border: 2px solid #FFA500;
	/* 원하는 다른 스타일 속성들을 추가할 수 있습니다. */
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
	float: left;
}

.inputRound {
	border-radius: 5px;
}

.product-section {
	margin-top: 50px;
}

.product-filters {
	margin-bottom: 80px;
}

.product-filters ul {
	margin: 0;
	padding: 0;
	list-style: none;
	text-align: center;
}

.product-filters ul li {
	display: inline-block;
	font-weight: 700;
	font-size: 18px;
	margin: 15px;
	border: 2px solid #051922;
	color: #323232;
	cursor: pointer;
	padding: 8px 20px;
	border-radius: 25px;
	transition: all 0.3s;
}

.product-filters ul li:hover {
	background-color: #933149;
	color: #fff;
}

.single-product-item {
	margin-bottom: 30px;
}

.card-container {
	margin-top: 60px;
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
	gap: 20px;
	justify-content: start;
}

.card {
	width: 18rem;
	border: 1px solid #ccc;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: transform 0.2s;
}

.card:hover {
	transform: scale(1.05);
}

.card-title {
	font-size: 1.25rem;
}

.card-text {
	max-height: 3em;
	overflow: hidden;
	line-height: 1.5;
}
.card-info {
  text-decoration: none;
	font-weight: bold;
	font-size: 18px; /* 글씨 크기 조절 */
	color: #000; /* 글씨 색상 추가 */
}

.product-filters {
  margin-bottom: 80px;
}

.product-filters ul {
  margin: 0;
  padding: 0;
  list-style: none;
  text-align: center;
}

.product-filters ul li {
  display: inline-block;
  font-weight: 700;
  font-size: 18px;
  margin: 15px;
  border: 2px solid #051922;
  color: #323232;
  cursor: pointer;
  padding: 8px 20px;
  border-radius: 25px;
  transition: all 0.3s;
}

.product-filters ul li:hover {
  background-color: #933149;
  color: #fff; 
}
.single-product-item {
  margin-bottom: 30px;
}


</style>
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
<<<<<<< HEAD
	<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>전체와인</h1>
				<br>
				<p>Wine Information</p>
=======
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체와인</h1>
                  <br>
                  <p>Wine Information</p>
               </div>
            </div>
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
>>>>>>> refs/remotes/origin/G
			</div>
		</div>
	</div>
	<br>
	<br>
	<!-- 와인 검색start -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="product-filters">
					<ul>
						<li onclick="window.location.href = '/All_Click';"
							name="All_click">all</li>
						<li onclick="window.location.href = '/Red_Click';"
							name="red_click">레드와인</li>
						<li onclick="window.location.href = '/White_Click';"
							name="white_click">화이트와인</li>
						<li onclick="window.location.href = '/Sparkling_Click';"
							name="sparkling_click">스파클링</li>
						<li onclick="window.location.href = '/Rose_Click';"
							name="rose_click">로제와인</li>
						<li onclick="window.location.href = '/Other_Click';"
							name="other_click">기타와인</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 버튼 검색 -->
		<div class="product-section mb-150">

			<!-- input 검색 -->
			<div class="search-container1">
				<form action="/NameSearch" method="POST">
					<input type="search" name="name_Search" placeholder="와인이름">
					<input type="submit" value="전체검색">
				</form>
			</div>
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

				<div class="container card-container">
					<c:forEach var="wine" items="${wine}">
						<div class="card" style="width: 18rem;">
			<a href="/WineInfo?w_no=${wine.w_no}" class="card-info">
							<div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
								<img src="${wine.w_image}" alt="와인이미지"
									style="width: 300px; height: 300px; object-fit: contain;">
							</div>

							<div class="card-body">
								<h5 class="card-title">${wine.w_name}</h5>
								<p class="card-text">${wine.w_wineery}</p>
								<p class="card-text">${wine.w_kind}</p>
			</a>
							</div>
						</div>
					</c:forEach>
				</div>
		</div>
		<div class="pagination">

			<c:if test="${pds.startPage != 1}">
				<a href="#"
					onclick="goToPage(${pds.startPage - 1}, '${wine}'); return false;">&lt;</a>
			</c:if>

			<c:forEach begin="${pds.startPage}" end="${pds.endPage}" var="p">
				<c:choose>
					<c:when test="${p == pds.nowPage}">
						<a>${p}</a>
					</c:when>
					<c:when test="${p != pds.nowPage}">
						<a href="#" onclick="goToPage(${p}, '${wine}'); return false;">${p}</a>
					</c:when>
				</c:choose>
			</c:forEach>

			<c:if test="${pds.endPage != pds.lastPage}">
				<a href="#"
					onclick="goToPage(${pds.endPage + 1}, '${wine}'); return false;">&gt;</a>
			</c:if>
		</div>
	</div>
</body>
</html>