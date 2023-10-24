<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>와인 정보</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
body {
   font-family: Arial, sans-serif;
   background-color: #fff;
   text-align: center;
   margin: 0;
   padding: 0;
   display: flex;
   flex-direction: column;
}

.wine-container1 {
    display: flex;
    flex-wrap: nowrap;
    width: 1200px;
    height: 500px;
    margin: 40px auto;
    padding: 40px;
    background-color: #fff;
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
   }

.wine-image {
   max-width: 400px;
   max-height: 600px;
   margin: 0 100px 50px;
   object-fit: contain;
   border-radius: 10px 10px 0 0;
   float: left;
}

.wine-details {
<<<<<<< HEAD
   flex-basis: 40%; /* 오른쪽 위 */
   padding: 0px;
   margin-bottom: 100px;
=======
	flex-basis: 40%; /* 오른쪽 위 */
	padding: 0px;
	margin-bottom: 100px;
>>>>>>> refs/remotes/origin/G
}

.wine-name {
<<<<<<< HEAD
   font-size: 36px;
   font-weight: bold;
   margin-bottom: 50px;
   margin-top: 30px;
=======
	font-size: 36px;
	font-weight: bold;
	margin-bottom: 50px;
	margin-top: 30px;
>>>>>>> refs/remotes/origin/G
}

.wine-amount {
   font-size: 26px;
   margin-bottom: 80px;
}

.wine-price {
   font-size: 26px;
   font-weight: bold;
   margin-bottom: 30px;
}

.wine-description {
   font-size: 18px;
   margin-bottom: 70px;
}

.store-list-item {
    flex-basis: calc(33.33% - 20px); /* 아이템 3분할로 정렬, 간격 제거 */
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 10px; /* 리스트 아이템에 더 둥근 테두리 적용 */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-bottom: 40px;
    margin-top: 20px;
}

ul {
    list-style-type: none;
    padding-left: 0;
}

.btn-primary {
    margin-top: 10px; /* 장바구니 버튼과 다른 내용 간 간격 조정 */
}
</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
     <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>와인정보</h1>
                  <br>
                  <p>Wine Information</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>
   <div class="wine-container1">
   <c:forEach var="info" items="${wineInfo }">
         <img class="wine-image" src="${info.w_image}" alt="와인 사진">
         <div class="wine-details">
            <div class="wine-name">${info.w_name }</div>
            <div class="wine-winery">${info.w_wineery}</div>
            <div class="wine-location">${info.w_location }</div>
            <div class="wine-location">${info.w_avg }</div>
            <div class="wine-location">${info.w_reviews }</div>
            <div class="wine-vintage">${info.w_vintage }</div>
         </div>
   </c:forEach>

<<<<<<< HEAD
      <ul>
         <c:forEach var="storeList" items="${storeList }" varStatus="loop">
         <c:if test="${loop.index < 3 }">
         <!-- forEach  -->
         <li class="store-list-item"><a class="store-link"
            href="/StoreInfo?s_no=${storeList.s_no}">매장 이름 :
               ${storeList.s_name }</a> <span>가격 : ${storeList.w_price }</span><br>
             <c:choose>
               <c:when test="${not empty loginVo.u_no}">
                  <a href="/AddCartForm?u_no=${loginVo.u_no}&s_no=${storeList.s_no}&w_no=${storeList.w_no}&wl_idx=${storeList.wl_idx}" class="btn btn-primary">장바구니</a><br>
               </c:when>
            </c:choose>
                </li>
            </c:if>
   </c:forEach>
      </ul>
   </div>
=======
		<ul>
			<c:forEach var="storeList" items="${storeList }" varStatus="loop">
			<c:if test="${loop.index < 3 }">
			<!-- forEach  -->
			<li class="store-list-item"><a class="store-link"
				href="/StoreInfo?s_no=${storeList.s_no}">매장 이름 :
					${storeList.s_name }</a> <span>가격 : ${storeList.w_price }</span><br>
			    <c:choose>
					<c:when test="${not empty loginVo.u_no}">
						<a href="/AddCartForm?u_no=${loginVo.u_no}&s_no=${storeList.s_no}&w_no=${storeList.w_no}&wl_idx=${storeList.wl_idx}" class="btn btn-primary">장바구니</a><br>
					</c:when>
				</c:choose>
		    		</li>
				</c:if>
	</c:forEach>
		</ul>
	</div>
>>>>>>> refs/remotes/origin/G

</body>
</html>