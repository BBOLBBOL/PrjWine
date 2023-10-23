<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>와인 목록</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
    crossorigin="anonymous">
<style>
    /* 전체 페이지 스타일 */
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    /* 제목 스타일 */
    h1 {
        text-align: center;
        margin-top: 60px;
        margin-bottom: 60px;
    }

    /* 검색 폼 스타일 */
    form#search-form {
   text-align: center;
   margin-bottom: 20px;
}

form#search-form input[type="text"] {
   width: 218px;
   padding: 5px;
   border: 1px solid #ccc;
   border-radius: 5px;
   margin-right: 10px;
}

    .dropdown-group {
        text-align: center;
        margin-top: 20px;
    }

    /* 드롭다운 버튼 스타일 */
    .dropdown {
        display: inline-block;
        margin-right: 10px;
    }

    /* 테이블 스타일 */
    #table {
        width: 70%;
        margin: 0 auto;
        border-collapse: collapse;
        margin-bottom: 30px; /* 간격 추가 */
    }

    /* 테이블 헤더 스타일 */
    #table th {
        background-color: #f2f2f2;
        border: 1px solid #dddddd;
        padding: 10px;
        text-align: center;
        font-weight: bold;
    }

    /* 테이블 셀 스타일 */
    #table td {
        border: 1px solid #dddddd;
        padding: 10px;
        text-align: center;
    }

    /* 수정/삭제 버튼 스타일 */
    .edit-delete-buttons {
        display: flex;
        justify-content: center;
    }

    .edit-delete-buttons form {
        display: inline-block;
        margin-right: 5px;
    }

    .edit-delete-buttons button {
        padding: 5px 10px;
        background-color: #ff0000;
        color: #ffffff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    /* 매장 홈으로 버튼 스타일 */
    .back-home-button {
        text-align: center;
        margin-top: 20px;
    }
</style>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체매장</h1>
                  <br>
                  <p>Store Information</p>
               </div>
      </div>
   </div>
   <br>
   <br>

    <main>

        <table id="table">
            <tr>
                <th>와인명</th>
                <th>국가</th>
                <th>품종</th>
                <th>수량</th>
                <th>가격</th>
                <th>빈티지</th>
                <th></th>
            </tr>

            <!-- 검색하지 않았을떄  -->
            <c:if test="${not empty wineList }">
                <c:forEach var="wine" items="${wineList }">
                    <tr>
                        <td>${wine.w_name }</td>
                        <td>${wine.w_location}</td>
                        <td>${wine.w_kind}</td>
                        <td>${wine.w_amount}</td>
                        <td>${wine.w_price }</td>
                        <td>${wine.w_vintage}</td>
                        <td>
                            <c:choose>
                                <c:when test="${not empty loginVo.u_no}">
                                    <form action="/AddCart" method="POST">
                                        <input type="hidden" name="u_no" value="${loginVo.u_no}">
                                        <input type="hidden" name="w_no" value="${wine.w_no}">
                                        <input type="hidden" name="s_no" value="${wine.s_no}">
                                        <input type="hidden" name="wl_idx" value="${wine.wl_idx}">
                                        <input id="text1" type="text" name="c_count" placeholder="수량 입력" autocomplete="off">
                                        <input type="submit" value="장바구니에 추가" onclick="myFunction()">
                                    </form>
                                </c:when>
                                <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq wine.s_no }">
                                    <a href="/WineUpdateForm?s_no=${wine.s_no}&wl_idx=${wine.wl_idx}"
                                        class="btn btn-primary">수정</a>
                                </c:when>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
        <!-- 매장 홈으로 버튼 -->
        <div class="back-home-button">
            <button class="btn btn-primary" onclick="history.back();">매장 홈으로</button>
        </div>
    </main>
    <script>
        function myFunction() {
            alert("장바구니에 추가되었습니다");
        }
    </script>
</body>
</html>