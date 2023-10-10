<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>와인 정보</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            
        }

        .wine-container {
          display: flex;
            flex-wrap: wrap;
            max-width: 60%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            height: 100vh;
        }

        .wine-image {
            max-width: 100%;
            max-height: 300px;
            object-fit: contain;
            border-radius: 10px 10px 0 0;
        }

        .wine-details {
           flex-basis: 50%; /* 오른쪽 위 */
            padding: 20px;
        }

        .wine-name {
             font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
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

        .store-link {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            font-size: 18px;

        }
    </style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
    <%@include file="/WEB-INF/include/nav.jsp" %>
    <c:forEach var="info" items="${wineInfo }">
    <h1 style="text-align: center; margin-top: 60px;">와인 정보</h1>
    <div class="wine-container">
        <img class="wine-image" src="${info.w_image}" alt="와인 사진">
        <div class="wine-details">
            <div class="wine-name">${info.w_name }</div>
            <div class="wine-winery">${info.w_winery}</div>
            <div class="wine-location">${info.w_location }</div>
            <div class="wine-vintage">${info.w_vintage }</div>
        </div>
        </c:forEach>
        
        <c:forEach var="storeList" items="${storeList }">
         <ul> <!-- forEach  -->
        <li><a class="store-link" href="/매장페이지">매장 이름 : ${storeList.s_name }</a><span>가격 : ${storeList.w_price }</span></li>
    </ul> 
 		 </c:forEach>
 		 </div>
 		 
                

</body>
</html>