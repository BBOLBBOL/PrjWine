<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
        .event-button ul {
            list-style-type: none;
            padding: 0;
        }

        .event-button ul li {
            display: inline;
            margin-right: 10px;
        }

    .promotion-link {
        flex: 1;
        text-align: center; /* 가운데 정렬 */
    }

    .promotion-link a {
        display: block;
        text-decoration: none;
        color: #000;
        font-weight: bold;
        padding: 10px; /* 내부 여백 설정 */
        border: 1px solid #ccc;
        border-radius: 5px;
    }

        .container1 {
            display: flex;
            flex-wrap: wrap;
        }

        .col-lg-6 {
            width: 50%;
            padding: 10px;
        }

        .event-card {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            text-align: center;
        }

        .event-card img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .event-card h3 {
            margin-top: 10px;
            font-size: 1.5rem;
        }

        .event-card p {
            font-style: italic;
            margin-top: 5px;
        }

        .event-card a {
            text-decoration: none;
        }

        .event-card a:hover {
            background-color: #f9f9f9;
        }

        .event-button {
            margin-bottom: 20px;
        }

        .event-button ul {
            display: flex;
        }

        .event-button ul li {
            margin-right: 20px;
        }

.back-home-button {
 	text-align: center; /* 가로 중앙 정렬 */
	display: flex;
	justify-content: center; /* 가로 중앙 정렬 */
	margin-top: 20px; 
}	
</style>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>종료된 프로모션</h1>
               <br>
               <p>Promotion</p>
            </div>
         </div>
      </div>
<br>
<br>
   <div class="event-button">
        <ul>
            <li class="promotion-link"><a href="/EventList">이달의 프로모션</a></li>
            <li class="promotion-link"><a href="/EventListEnd">종료된 프로모션</a></li>
        </ul>
    </div>
    <form action="/EventInsertForm" method="POST">
        <div class="container1">
            <div class="row">
                <c:forEach var="event" items="${eventList}">
                    <div class="col-lg-6">
                        <a href="/EventCont?e_idx=${event.e_idx}&e_bimg=${e_bimg}">
                            <div class="event-card">
                                <img src="/imgpage/${event.e_fimg}" alt="이미지">
                                <h3>${event.e_title}</h3>
                                <p><fmt:formatDate value="${event.e_sdate}" pattern="yyyy.MM.dd" />~<fmt:formatDate
                                        value="${event.e_edate}" pattern="yyyy.MM.dd" /></p>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </form>
</body>
</html>