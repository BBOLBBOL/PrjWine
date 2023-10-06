<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            max-width: 40%; /* 이미지의 가로 크기를 최대 50%로 제한 */
            max-height: 50vh; /* 이미지의 세로 크기를 화면 높이의 최대 50%로 제한 */
            object-fit: cover; /* 이미지를 비율을 유지하면서 컨테이너에 맞춥니다. */
            border-radius: 10px;
            flex-basis: 50%; /* 왼쪽 위 */
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
    <%@include file="/WEB-INF/include/nav.jsp" %>
</head>
<body>
    <h1 style="text-align: center; margin-top: 60px;">와인 정보</h1>
    <div class="wine-container">
        <img class="wine-image" src="/img/test.jpg" alt="와인 사진">
        <div class="wine-details">
            <div class="wine-name">와인 이름</div>
            <div class="wine-description">와인 설명 Lorem ipsum dolor sit amet, consectetur adipiscing elit
            Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
            <div class="wine-price">와인 가격</div>
            <div class="wine-amount">와인 수량</div>
       
            <ul>
        <li><a class="store-link" href="/매장페이지">와인을 보유한 매장1</a></li>
        <li><a class="store-link" href="/매장페이지">와인을 보유한 매장2</a></li>
        <li><a class="store-link" href="/매장페이지">와인을 보유한 매장3</a></li>
        <li><a class="store-link" href="/매장페이지">와인을 보유한 매장4</a></li>
        <li><a class="store-link" href="/매장페이지">와인을 보유한 매장5</a></li>
    </ul>      
 </div>
  </div>

</body>
</html>