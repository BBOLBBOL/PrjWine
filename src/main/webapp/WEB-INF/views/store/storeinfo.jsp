<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>매장 정보</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<<<<<<< HEAD
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e1bc19bc313fda7048dd34538eebc17&libraries=services"></script>
<style>
.store-container {
	display: grid;
	grid-template-columns: repeat(2, 350px); /* 2개의 열을 생성, 각 열의 너비를 동일하게 1fr로 설정 */
    grid-template-rows: repeat(2, 350px); /* 2개의 행을 생성, 각 행의 높이를 동일하게 1fr로 설정 */
	gap: 20px;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #f9f9f9;
	width: 800px;
	height: 800px;
	place-items: center; /* 화면 중앙으로 배치합니다 */
	margin: auto;
}

.store-image {
	max-width: 100%;
	max-height: 100%;
	object-fit: cover;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.wine-details {
    width: 95%;
	height: 95%;
	display: flex;
	flex-direction: column;
	padding: 20px;
}

.store-name {
	font-size: 1.5rem;
	font-weight: bold;
	margin-bottom: 10px;
}

.store-cont {
	line-height: 1.5;
	margin-bottom: 10px;
}

.store-address {
	font-style: italic;
	margin-bottom: 10px;
}

.store-detailAddress {
	margin-bottom: 10px;
}

.winelist-link {
	display: block;
	margin-top: 10px;
}

#map {
	width: 95%;
	height: 95%;
	float: left;
	margin:auto;
}

#board {
    width: 95%;
	height: 95%;
	float: right;
	margin:auto;
}

table {
	width: 100%;
}

table th, table td {
	text-align: center;
}
.ellipsis {
  white-space: nowrap; /* 텍스트를 한 줄로 표시 */
  overflow: hidden; /* 넘치는 텍스트를 숨김 */
  text-overflow: ellipsis; /* 넘치는 텍스트에 "..." 표시 */
  max-width: 80px; /* 최대 너비를 설정 (원하는 너비로 조정) */
}

.table-container {
	position: sticky;
	bottom: 0;
	background-color: white;
	padding: 10px;
	text-align: center;
}
.tr1 th {
	background-color: #800021 !important;
    color: #f2f2f2 !important;
}
#div1 { 
  position: sticky;
  bottom: 0;
  background-color: #F9F9F9;
  padding: 10px;
  text-align: center;
}
</style>
=======
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<style>
 .store-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: 1fr 1fr; /* 그리드 행의 높이를 동일하게 설정 */
    gap: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #f9f9f9;
    max-width: 1000px; /* 가로 최대 너비 설정 (조절 가능) */
    margin: auto;
}

.store-image {
    max-width: 100%;
    max-height: 100%;
    object-fit: cover;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.wine-details {
    display: flex;
    flex-direction: column;
    padding: 20px;
}

.store-name {
    font-size: 1.5rem;
    font-weight: bold;
    margin-bottom: 10px;
}

.store-cont {
    line-height: 1.5;
    margin-bottom: 10px;
}

.store-address {
    font-style: italic;
    margin-bottom: 10px;
}

.store-detailAddress {
    margin-bottom: 10px;
}

.winelist-link {
    margin-top: 10px;
}

#map {
    width: 100%;
    height: 300px; /* 지도의 높이 조절 (조절 가능) */
}

#board {
    width: 100%;
    height: 300px; /* 게시판의 높이 조절 (조절 가능) */
}

table {
    width: 100%;
    border-collapse: collapse;
}

table th, table td {
    text-align: center;
    padding: 8px;
    border: 1px solid #ddd;
}

.table-container {
    position: sticky;
    bottom: 0;
    background-color: white;
    padding: 10px;
    text-align: center;
}
</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>

>>>>>>> refs/remotes/origin/G
</head>
<body>
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
	<main>

		<c:forEach var="info" items="${storeInfo}">
			<div class="store-container">
				<img class="store-image" src="/imgpage/${info.s_simgname}"
					alt="매장사진" />

<<<<<<< HEAD
				<div class="wine-details">
					<div class="store-name">${info.s_name }</div>
					<div class="store-cont">${info.s_cont}</div>
					<div class="store-address">${info.s_address }</div>
					<div class="store-detailAddress">${info.s_detailAddress }
						<a class="winelist-link" href="/StoreWineManage?s_no=${info.s_no}"
							class="btn btn-primary">매장보유 와인</a>
					</div>
				</div>
				<div id="map"></div>
				<div id="board">
					<table id="table" class="table table-striped table-hover">
							<tr class="tr1">
								<th>공지사항 제목</th>
								<th>글작성자</th>
							</tr>
							<c:forEach var="board" items="${boardList}" varStatus="loop">
							<c:if test="${loop.index < 5 }">
								<tr onclick="window.location='/BoardCont?b_idx=${board.b_idx}&s_no=${board.s_no}'">
									<td class="ellipsis">${board.b_title}</td>
									<td class="ellipsis">${board.s_name}</td>
								</tr>
							</c:if>
							</c:forEach>
					</table>
					<div id="div1">
						<c:choose>
							<c:when
								test="${not empty sloginVo.s_no and sloginVo.s_no eq info.s_no}">
								<form action="/BoardWriteForm?s_no=${sloginVo.s_no}"
									method="POST">
									<input type="submit" class="btn btn-primary" value="새글작성">
								</form>
							</c:when>
						</c:choose>
					</div>
				</div>
			</div>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					level : 3
				// 지도의 확대 레벨
				};
=======
         <div class="wine-details">
            <div class="store-name">${info.s_name }</div>
            <div class="store-cont">${info.s_cont}</div>
            <div class="store-address">${info.s_address }</div>
            <div class="store-detailAddress">${info.s_detailAddress } <a class="winelist-link" href="/StoreWineManage?s_no=${info.s_no}"
            class="btn btn-primary">매장보유 와인</a></div>
         </div>
          <div id="map" ></div>
         <div id="board" >
          <table id="table">
           <div class="container">
            <tr>
             <th>No.</th>
             <th>공지사항 제목</th>
             <th>글작성자</th>
            </tr>
           </div>
           <div class="container">
            <c:forEach var="board" items="${boardList}">
             <tr>
              <td>${board.b_idx}</td>
              <td><a href="/BoardCont?b_idx=${board.b_idx}&s_no=${board.s_no}">${board.b_title}</a></td>
              <td>${board.s_name}</td>
             </tr>
            </c:forEach>
           </div>
          </table>
          <div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: center;">
           <c:choose>
            <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq info.s_no}">
            <form action="/BoardWriteForm?s_no=${sloginVo.s_no}" method="POST">
             <input type="submit" class="btn btn-primary" value="새글작성">
            </form>
            </c:when>
           </c:choose>
          </div>
          </div>
      </div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e1bc19bc313fda7048dd34538eebc17&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  
>>>>>>> refs/remotes/origin/G

				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption);

				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();

				// 주소로 좌표를 검색합니다
				geocoder
						.addressSearch(
								'${info.s_address}',
								function(result, status) {

									// 정상적으로 검색이 완료됐으면 
									if (status === kakao.maps.services.Status.OK) {

										var coords = new kakao.maps.LatLng(
												result[0].y, result[0].x);

										// 결과값으로 받은 위치를 마커로 표시합니다
										var marker = new kakao.maps.Marker({
											map : map,
											position : coords
										});

										// 인포윈도우로 장소에 대한 설명을 표시합니다
										var infowindow = new kakao.maps.InfoWindow(
												{
													content : '<div style="width:150px;text-align:center;padding:6px 0;">${info.s_name}</div>'
												});
										infowindow.open(map, marker);

										// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
										map.setCenter(coords);
									}
								});
			</script>

		</c:forEach>


	</main>
</body>
</html>