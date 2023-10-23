<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>시음회 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
.container1 {
    margin: 20px auto;
    max-width: 800px;
    padding: 20px;
    background-color: #f2f2f2;
    border: 2px solid #ccc;
    border-radius: 5px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: #ffffff;
}

th, td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
}

th {
    background-color: #f2f2f2;
}

.btn-container {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}

.btn-container button {
    width: auto;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script>
	document.addEventListener("DOMContentLoaded", function() {
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
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
    <div class="col-lg-8 offset-lg-2 text-center">
        <div class="breadcrumb-text">
            <br>
            <h1>시음회 게시판</h1>
            <br>
            <p>Wine Tasting Forum</p>
        </div>
    </div>
</div>
<br>
<br>

<div class="container1">
    <c:forEach var="tast" items="${tastingBoard}">
        <h1>${tast.t_title}</h1>
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
        </table>
        <div class="btn-container">
            <c:choose>
                <c:when test="${not empty loginVo.u_no}">
                    <form action="/UserTastingRequest?u_no=${loginVo.u_no}&t_idx=${tast.t_idx}" method="POST">
                        <button type="submit" class="btn btn-primary" id="applyButton">신청</button>
                        <span>신청인원: ${count}명</span>
                    </form>
                </c:when>
                <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq tast.s_no}">
                    <a href="TastingRequestList?s_no=${sloginVo.s_no }&t_idx=${tast.t_idx}" class="btn btn-primary">신청자 목록</a>
                    <form action="/TastingListDelete?t_idx=${tast.t_idx}" method="POST">
                        <button type="submit" class="btn btn-danger" id="delete-confirm">삭제</button>
                    </form>
                </c:when>
            </c:choose>
            <button class="btn btn-secondary" onclick="window.history.back()">뒤로가기</button>
        </div>
    </c:forEach>
</div>
</body>
</html>