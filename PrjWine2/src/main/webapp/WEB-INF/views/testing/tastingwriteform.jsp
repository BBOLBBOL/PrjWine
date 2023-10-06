<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>시음회 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
.logintitle {
    text-align: center;
    margin-top: 40px;
}

.container {
    margin: 0 auto; /* 상하여백 좌우여백 */
    max-width: 600px; /* 최대 폭 지정 */
}

form {
    padding: 20px;
    border: 2px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
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
}

button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-weight: bold;
    margin: 20px auto;
    display: block;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>

<h2 class="logintitle">시음회 등록</h2><br>
<div class="container">
    <form action="/WineJoin" method="POST">
        <div>
            <label for="eventName">시음회 이름</label>
            <input type="text" id="eventName" name="eventName" placeholder="시음회 이름을 입력하세요">
        </div>
        <div>
            <label for="eventDescription">시음회 내용 설명</label>
            <textarea id="eventDescription" name="eventDescription" placeholder="시음회 내용 설명을 입력하세요"></textarea>
        </div>
        <table>
            <tr>
                <th>와인이름</th>
                <th>국가</th>
                <th>품종</th>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
        </table>
        <div>
            <label for="eventDateTime">시음회 날짜/시간</label>
            <input type="text" id="eventDateTime" name="eventDateTime" placeholder="날짜/시간을 입력하세요">
        </div>
        <div>
            <label for="eventFee">참가비</label>
            <input type="number" id="eventFee" name="eventFee" placeholder="숫자만입력:>">
        </div>
        <button type="submit">등록</button>
    </form>
</div>
</body>
</html>
