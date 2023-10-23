<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>시음회 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
   <!-- fontawesome -->
   <link rel="stylesheet" href="assets/css/all.min.css">
   <!-- bootstrap -->
   <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
   <!-- owl carousel -->
   <link rel="stylesheet" href="assets/css/owl.carousel.css">
   <!-- magnific popup -->
   <link rel="stylesheet" href="assets/css/magnific-popup.css">
   <!-- animate css -->
   <link rel="stylesheet" href="assets/css/animate.css">
   <!-- mean menu css -->
   <link rel="stylesheet" href="assets/css/meanmenu.min.css">
   <!-- main style -->
   <link rel="stylesheet" href="assets/css/main.css">
   <!-- responsive -->
   <link rel="stylesheet" href="assets/css/responsive.css">
<style>
.logintitle {
    text-align: center;
    margin-top: 40px;
}

.container1 {
    margin: 0 auto; /* 상하여백 좌우여백 */
    max-width: 600px; /* 최대 폭 지정 */
}

form {
    padding: 20px;
    border: 2px solid #ccc;
    border-radius: 5px;
    background-color: #f2f2f2;
}

form div {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

textarea {
    resize: vertical; /* 세로 크기 조절 허용 */
    min-height: 100px; /* 최소 높이 지정 */
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table, th, td {
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: center;
    background-color: #f2f2f2;
}
.centered-text {
  display: flex;
  justify-content: center; /* 수평 가운데 정렬 */
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
   <!-- jquery -->
   <script src="assets/js/jquery-1.11.3.min.js"></script>
   <!-- bootstrap -->
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   <!-- count down -->
   <script src="assets/js/jquery.countdown.js"></script>
   <!-- isotope -->
   <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
   <!-- waypoints -->
   <script src="assets/js/waypoints.js"></script>
   <!-- owl carousel -->
   <script src="assets/js/owl.carousel.min.js"></script>
   <!-- magnific popup -->
   <script src="assets/js/jquery.magnific-popup.min.js"></script>
   <!-- mean menu -->
   <script src="assets/js/jquery.meanmenu.min.js"></script>
   <!-- sticker js -->
   <script src="assets/js/sticker.js"></script>
   <!-- main js -->
   <script src="assets/js/main.js"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
     <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>시음회 게시판</h1>
                  <br>
                  <p>Wine Tasting Forum</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>

<div class="container1">
<c:forEach var="tast" items="${tastingBoard}">
               <h1 class="centered-text">${tast.t_title}</h1>
   <table>
        <tr>
            <th>No.</th>
            <td>${tast.t_idx}</td>
        </tr>
        <tr>
            <th>시음회 이름</th>
            <td>${tast.t_title}</td>
        </tr>
        <tr>
            <th>시음회 내용 설명</th>
            <td>${tast.t_cont}</td>
        </tr>
        <tr>
            <th>와인이름</th>
            <td>${tast.w_name}</td>
        </tr>
        <tr>
            <th>제조국가</th>
            <td>${tast.w_location}</td>
        </tr>
        <tr>
            <th>와인종류</th>
            <td>${tast.w_kind}</td>
        </tr>
        <tr>
            <th>빈티지</th>
            <td>${tast.w_vintage}</td>
        </tr>
        <tr>
            <th>시음회장소</th>
            <td>${tast.s_address}${tast.s_detailaddress}</td>
        </tr>
        <tr>
            <th>시음회시간</th>
            <td>${tast.t_date}</td>
        </tr>
        <tr>
            <th>참가비</th>
            <td>${tast.t_cost}</td>
        </tr>
</div>
</div>
    </table>
<div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: left; margin: 0 auto; max-width: 600px;">
   <c:choose>
       <c:when test="${not empty loginVo.u_no}">
           <form action="/UserTastingRequest?u_no=${loginVo.u_no}&t_idx=${tast.t_idx}" method="POST">
              <button type="submit" class="btn btn-primary" id="applyButton">신청</button>
<script>
document.addEventListener("DOMContentLoaded", function () {
    var applyButton = document.getElementById("applyButton");

    applyButton.addEventListener("click", function(event) {
        if (confirm("신청하시겠습니까?")) {
            alert("신청이 완료되었습니다.");
        } else {
            alert("신청이 취소되었습니다.");
            event.preventDefault();
        }
    });

    function goBack() {
        window.history.back();
    }
});
</script>
              <span>신청인원 : ${count }명</span>
           </form>
        </c:when>
       <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq tast.s_no}">
           <a href="TastingRequestList?s_no=${sloginVo.s_no }&t_idx=${tast.t_idx}" class="btn btn-primary">신청자 목록 </a>
           <form action="/TastingListDelete?t_idx=${tast.t_idx}" method="POST">
              <button type="submit" class="btn btn-primary" id="delete-confirm">삭제</button>
              <button type="button" class="btn btn-primary" onclick="history.back()">뒤로가기</button>
<script>
document.addEventListener("DOMContentLoaded", function () {
var deleteButton = document.getElementById("delete-confirm");

deleteButton.addEventListener("click", function(event) {
    if (confirm("삭제하시겠습니까?")) {
        alert("삭제가 완료되었습니다.");
    } else {
        alert("삭제가 취소되었습니다.");
        event.preventDefault();
    }
});
});
</script>
           </form>
        </c:when>
   </c:choose>
    </c:forEach>
</div>
</body>

</html>