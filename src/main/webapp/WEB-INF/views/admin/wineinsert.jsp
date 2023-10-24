<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html> 
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

	<style>
 .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ddd;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 5px;
        }

        #preview {
            max-width: 300px;
            display: block;
            margin: 10px auto;
        }

        #btn1 {
            display: block;
            margin: 0 auto;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        
         h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        
    </style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>고객 센터(매장)</h1>
               <br>
               <p>Customer Service</p>
            </div>
         </div>
      </div>
<br>
<br>
		 <div class="container">
        <h2>와인 등록</h2>
        <form action="/AdminWineInsert" method="POST">
            <table>
                <tr>
                    <th>Winery</th>
                    <th>Wine</th>
                    <th>Vintage</th>
                    <th>Average</th>
                    <th>Reviews</th>
                    <th>Location</th>
                    <th>Image</th>
                    <th>Kind</th>
                </tr>
                <tr>
                    <td><input type="text" name="w_wineery" autocomplete="off"></td>
                    <td><input type="text" name="w_name" autocomplete="off"></td>
                    <td><input type="text" name="w_vintage" autocomplete="off"></td>
                    <td><input type="text" name="w_avg" autocomplete="off"></td>
                    <td><input type="text" name="w_reviews" autocomplete="off"></td>
                    <td><input type="text" name="w_location" autocomplete="off"></td>
                    <td>
                        <input type="text" name="w_image" autocomplete="off">
                    </td>
                    <td>
                        <select name="w_kind">
                            <option value="kind">Kind</option>
                            <option value="PORT">PORT</option>
                            <option value="DESSERT">DESSERT</option>
                            <option value="RED">RED</option>
                            <option value="ROSE">ROSE</option>
                            <option value="WHITE">WHITE</option>
                            <option value="SPARKLING">SPARKLING</option>
                        </select>
                    </td>
                </tr>
            </table>
            <br>
            <button id="btn1" type="submit" class="btn btn-primary" onclick="myconfirm();">등록</button>
        </form>
    </div>
</body>
<script>
var wineery = document.querySelector('input[name="w_wineery"]').value;
var wine = document.querySelector('input[name="w_name"]').value;
var vintage = document.querySelector('input[name="w_vintage"]').value;
var avg = document.querySelector('input[name="w_avg"]').value;
var reviews = document.querySelector('input[name="w_reviews"]').value;
var location = document.querySelector('input[name="w_location"]').value;
var kind = document.querySelector('select[name="w_kind"]').value;

function myconfirm() {
if (wineery === '' || wine === '' || vintage === '' || avg === '' || reviews === '' || location === '' || kind === 'kind') {
    alert("입력 필드를 모두 작성하세요.");
} else {
    if (confirm('등록하시겠습니까?')) {
        alert("등록되었습니다.");
    } else {
        alert("등록 실패");
        event.preventDefault(); // 링크를 직접 실행하지 않음
    }
}
}


// 선택한 옵션을 입력 필드에 설정하는 JavaScript 코드
document.getElementById("kind").addEventListener("change", function () {
    var selectedValue = this.value;
    document.getElementsByName("w_kind")[0].value = selectedValue;
});


</script>
</html>