<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>와인 수정</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
            width: 300px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
        }

        form#search-form button[type="submit"] {
            padding: 5px 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
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

        /* 매장 홈으로 버튼 스타일 */
        .back-home-button {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>
     <%@ include file="/WEB-INF/include/nav.jsp" %> 
     
<h1>  수정 </h1>

<main>


    <!-- 검색 폼 -->
    <form id="search-form" action="/search" method="get">
        <input type="text" name="query" placeholder="검색어 입력">
        <button type="submit">검색</button>
    </form>

    <!-- 검색 조건 드롭다운 버튼 -->
    <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">국가</button>
        <!-- 국가 드롭다운 메뉴 내용 -->
    </div>
    <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">품종</button>
        <!-- 품종 드롭다운 메뉴 내용 -->
    </div>
    <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">가격순</button>
        <!-- 가격순 드롭다운 메뉴 내용 -->
    </div>

    <!-- 와인 목록 테이블 -->
      <form action="/WineUpdate?s_no=1&wl_idx=1" method="POST">
    <table id="table">
        <tr>
            <th>와인명</th>
            <th>국가</th>
            <th>품종</th>
            <th>수량</th>
            <th>가격</th>
            <th>빈티지</th>
            <th>수정/삭제</th>
        </tr>

        <!-- 예시 와인 데이터 -->
        <c:forEach var="wine" items="${ wineList }">
        <tr>
            <td>${wine.w_name }</td>
            <td>${wine.w_location}</td>
            <td>${wine.w_kind}</td>
            <td><input type="text" name="w_amount" value="${wine.w_amount}"></td>
            <td><input type="text" name="w_price" value="${wine.w_price }"></td>
            <td>${wine.w_vintage}</td>
            
             <td class="edit-delete-buttons">
             <button type="submit" class="btn btn-primary">수정</button>       
             <a class="btn btn-danger" href="/WineDelete">삭제</a>
             
          
            </td>
            
        </tr>
        </c:forEach>
        <!-- 다른 와인 데이터 추가 -->
    </table>
    </form>

    <!-- 매장 홈으로 버튼 -->
    <a href="/" class="btn btn-primary " style="">매장 홈으로</a>
</main>
</body>
</html>