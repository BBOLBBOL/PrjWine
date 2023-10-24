<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        h1 {
            font-size: 36px;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            text-align: center;
            position: relative; /* 추가: 상대 위치 설정 */
        }

        .homeimg {
            max-width: 100%;
                  position: relative; /* 이미지의 상대 위치 설정 */
            top: -200px; /* 이미지를 위로 200px 이동 */
        }

        .overlay-text {
             position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            padding: 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<<<<<<< HEAD
<%@include file="/WEB-INF/include/nav.jsp" %>
<div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>와인 이야기</h1>
                  <br>
                  <p>Wine Story</p>
               </div>
            </div>
   </div>
   <br>
   <br>
=======
 <%@include file="/WEB-INF/include/nav.jsp" %>
 <div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
            </div>
         </div>
      </div>
<br>
<br>
 

>>>>>>> refs/remotes/origin/G

    <div class="container">
        <img src="/imgpage/WineStorypage.jpg" class="homeimg">
      <div class="overlay-text">
            <h2>환영합니다</h2>
            <p>이 페이지는 아무런 의미나 내용을 갖지 않는 간단한 화면입니다.</p>
        </div>
    </div>
</body>
</html>