<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>매장 찾기</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<<<<<<< HEAD
<style>
.search-container {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	width: 95%;
	margin-top: 50px;
}

.search-container input[type="search"] {
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

.search-container input[type="submit"] {
	background-color: #FFA500; /* 배경색 */
	color: #FFF; /* 글자색 */
	padding: 10px 15px;
	border-radius: 5px;
	border: 2px solid #FFA500;
	/* 원하는 다른 스타일 속성들을 추가할 수 있습니다. */
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
	display: flex;
	flex-direction: column;
}

.card:hover {
	transform: scale(1.05);
}

.card-img-top {
	max-width: 100%;
	height: 200px;
	object-fit: cover;
}

.card-body {
	flex-grow: 1;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	padding: 1rem;
}

.card-title {
	font-size: 1.25rem;
}

.card-text {
	max-height: 3em;
	overflow: hidden;
	line-height: 1.5;
}

.btn {
	align-self: flex-end;
	background-color: #007BFF;
	color: #fff;
	padding: 8px 16px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none;
	font-size: 16px;
}

.btn:hover {
	background-color: #0056b3;
}

.card-info {
	text-decoration: none;
	font-size: 18px; /* 글씨 크기 조절 */
	color: #000; /* 글씨 색상 추가 */
}
=======
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
    width: 95%;
    margin-top: 50px;
}

.search-container input[type="search"] {
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

.search-container input[type="submit"] {
    background-color: #FFA500; /* 배경색 */
    color: #FFF; /* 글자색 */
    padding: 10px 15px;
    border-radius: 5px;
    border: 2px solid #FFA500;
    /* 원하는 다른 스타일 속성들을 추가할 수 있습니다. */
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
    display:flex;
    flex-direction: column;
}

.card:hover {
    transform: scale(1.05);
}

.card-img-top {
    max-width: 100%;
    height: 200px;
    object-fit: cover;
}

.card-body {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 1rem;
}

.card-title {
    font-size: 1.25rem;
}

.card-text {
    max-height: 3em;
    overflow: hidden;
    line-height: 1.5;
}

.btn {
    align-self: flex-end;
    background-color: #007BFF;
    color: #fff;
    padding: 8px 16px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    text-decoration: none;
    font-size: 16px;
}
.btn:hover {
    background-color: #0056b3;
}

.card-info {
  text-decoration: none;
   font-size: 18px; /* 글씨 크기 조절 */
   color: #000; /* 글씨 색상 추가 */
}

>>>>>>> refs/remotes/origin/G
</style>
</head>
<body>
<<<<<<< HEAD
	<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<br>
						<h1>전체매장</h1>
						<br>
						<p>Store Information</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>

	<div class="container">
		<div class="search-container">
			<form action="/SnameSearch" method="POST">
				<input type="search" name="sname_Search" placeholder="매장 이름">
				<input type="submit" value="매장 검색">
			</form>
		</div>
	</div>
	<!-- 매장 검색 종료 -->

	<!-- 매장 리스트 -->
	<div class="container card-container">
		<c:forEach var="store" items="${snameSearch}">
			<div class="card">
				<a href="/StoreInfo?s_no=${store.s_no}" class="card-info"> <img
					src="/imgpage/${store.s_simgname}" alt="매장 사진" class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">${store.s_name}</h5>
						<p class="card-text">${store.s_cont}</p>
						<p class="card-text">${store.s_phone}</p>
						<p class="card-text">${store.s_address}
							${store.s_detailAddress}</p></a>
				<c:choose>
					<c:when test="${not empty loginVo.u_no}">
						<a
							href="/UserFavoritesInsert?u_no=${loginVo.u_no}&s_no=${store.s_no}"
							class="btn btn-info" onclick="return confirmAndRedirect();">관심
							매장</a>
					</c:when>
				</c:choose>
			</div>
	</div>
	</c:forEach>
	</div>
	<br>

	<div class="pagination">
		<c:choose>
			<c:when test="${not empty pds && pds.startPage != 1 }">
				<a
					href="/StoreList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
			</c:when>
		</c:choose>
		<c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
			<c:choose>
				<c:when test="${p == pds.nowPage }">
					 <a>${p}</a>
				</c:when>
				<c:when test="${p != pds.nowPage }">
					<a href="/StoreList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when
				test="${not empty pds && pds.endPage != pds.lastPage && pds.endPage != 0 }">
				<a
					href="/StoreList?nowPage=${pds.endPage+1 }&cntPerPage${pds.cntPerPage}">&gt;</a>
			</c:when>
		</c:choose>
	</div>
=======
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체매장</h1>
                  <br>
                  <p>Store Information</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>

  <div class="container">
        <div class="search-container">
            <form action="/SnameSearch" method="POST">
                <input type="search" name="sname_Search" placeholder="매장 이름">
                <input type="submit" value="매장 검색">
            </form>
        </div>
    </div>
    <!-- 매장 검색 종료 -->

    <!-- 매장 리스트 -->
    <div class="container card-container">
        <c:forEach var="store" items="${snameSearch}">
            <div class="card">
                <a href="/StoreInfo?s_no=${store.s_no}" class="card-info">
                <img src="/imgpage/${store.s_simgname}" alt="매장 사진" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">${store.s_name}</h5>
                    <p class="card-text">${store.s_cont}</p>
                    <p class="card-text">${store.s_phone}</p>
                    <p class="card-text">${store.s_address} ${store.s_detailAddress}</p>
                   </a>
                    <c:choose>
                        <c:when test="${not empty loginVo.u_no}">
                            <a href="/UserFavoritesInsert?u_no=${loginVo.u_no}&s_no=${store.s_no}" class="btn btn-info" onclick="return confirmAndRedirect();">관심 매장</a>
                        </c:when>
                    </c:choose>
                </div>
            </div>
        </c:forEach>
    </div>
    <br>
    
    <div style="display: block; text-align: center;">
    <c:choose>
        <c:when test="${not empty pds && pds.startPage != 1 }">
            <a href="/StoreList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
        </c:when>
    </c:choose>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
        <c:choose>
            <c:when test="${p == pds.nowPage }">
                <b>${p}</b> 
            </c:when>
            <c:when test="${p != pds.nowPage }">
                <a href="/StoreList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
            </c:when>
        </c:choose>
    </c:forEach>
    <c:choose>
        <c:when test="${not empty pds && pds.endPage != pds.lastPage && pds.endPage != 0 }">
            <a href="/StoreList?nowPage=${pds.endPage+1 }&cntPerPage${pds.cntPerPage}">&gt;</a>
        </c:when>
    </c:choose>
</div>
>>>>>>> refs/remotes/origin/G


</body>
<script>
<<<<<<< HEAD
	function confirmAndRedirect() {
		if (confirm('관심매장 등록하시겠습니까?')) {
			alert('등록되었습니다');
		} else {
			alert("취소하였습니다");
			return false; // 링크를 직접 실행하지 않음
		}
	}
=======
function confirmAndRedirect() {
    if (confirm('관심매장 등록하시겠습니까?')) {
        alert('등록되었습니다');
    } else  {
    	alert("취소하였습니다");
        return false; // 링크를 직접 실행하지 않음
    }
}

>>>>>>> refs/remotes/origin/G
</script>
</html>