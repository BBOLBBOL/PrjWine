<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>매장 정보</title>
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

        .store-container {
            display: flex;
            flex-wrap: wrap;
            max-width: 70%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            height: 100vh;
        }

        .store-image {
            max-width: 40%;
            border-radius: 10px;
            flex-basis: 50%; /* 왼쪽 위 */
            margin-bottom: 30px;
        }

        .store-content {
            flex-basis: 40%; /* 오른쪽 위 */
            padding: 5%;
            margin-left: 50px;
            
        }

        .store-name {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .store-description {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .store-phone {
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .store-map {
            width: 40%;
            height: 40%;
            border-radius: 10px;
            margin-bottom: 20px;
        }

.store-button {
    /* 가로 크기 설정 */
    width: 180px;
    /* 세로 크기 설정 */
    height: 80px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    font-size: 20px;
    margin: 10px 20px 15px 55px;
}
    </style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<%@include file="/WEB-INF/include/nav.jsp" %>
  <body>
<h1 style="text-align: center; margin-top: 60px;">매장찾기</h1>
  <div class="store-allconatiner">
    <div class="store-container">
        <img class="store-image" src="/img/test.jpg" alt="매장 사진">
        <div class="store-content">
            <div class="store-name">매장 이름</div>
            <div class="store-description">매장 설명 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
            <div class="store-phone">매장 전화번호: 123-456-7890</div>
        </div>
        <iframe class="store-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d102460.15656306557!2d-74.00661062525746!3d40.712775410728714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2589e2bde4b93%3A0xde1d3d6e5c60703b!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sin!4v1577490317840!5m2!1sen!2sin" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        <a class="store-button" href="#">보유한와인리스트 보기</a>
    </div>
    </div>
    </body>

</html>