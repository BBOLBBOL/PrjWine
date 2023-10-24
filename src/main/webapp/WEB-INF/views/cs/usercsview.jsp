<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>고객 문의</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
.container {
    width: 80%;
    margin: 0 auto;
    padding: 20px;
    background-color: #f5f5f5;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    justify-content: center; /* 가로 중앙 정렬 */
    align-items: center; /* 수직 중앙 정렬 */
    text-align: center; /* 가로 중앙 정렬 */
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

td {
    padding: 10px;
    border: 1px solid #ddd;
    background-color: #fff;
}

label {
    font-weight: bold;
}

input[type="text"],
textarea {
    width: 100%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 5px 0;
    text-align: center; /* 가로 중앙 정렬 */
}

textarea {
    height: 150px;
}

img#imagePreview {
    max-width: 100%;
    height: auto;
    display: block;
    margin: 10px 0;
}

button {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
}

button:hover {
    background-color: #0056b3;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
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
	<div class="container" id="board" >
			 <table id="table">
		         <c:forEach var="ucs" items="${csviewList}">
            	 <label>문의사항 제목</label>
                 <input type="text" value="${ucs.ucs_title}" readonly="readonly">
                 	 <label>카테고리</label>
                 <input type="text" value="${ucs.ucs_category}" readonly="readonly">
            	 <label>문의날짜</label>
                 <input type="text" value="${ucs.uw_date}" readonly="readonly">
                <div>
                 <label>문의사항 내용 </label>
                 <textarea readonly="readonly">${ucs.ucs_cont}</textarea>
                </div>
                <label>문의사진</label>
              <img id="imagePreview" src="/imgpage/${ucs.ucs_img}" alt="Image Preview" />
              <c:choose>
            <c:when test="${not empty ucs.response}">
            <div>
            <label>답변 내용 </label>
                 <textarea readonly="readonly">${ucs.response}</textarea>
                            </div>
                             <label>답변날짜</label>
                 <input type="text" value="${ucs.res_date}" readonly="readonly">
           </c:when>
             <c:when test="${empty ucs.response}">
             <div>
             <label>문의사항 내용 </label>
              <textarea readonly="readonly">답변 대기중</textarea></div>
             </c:when>
           </c:choose>
                  </c:forEach>
              
			  </table>
              <button onclick="history.back();" class="btn btn-secondary">뒤로가기</button>
    </div>
<script>
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById('preview').src = e.target.result;
		};
		reader.readAsDataURL(input.files[0]);
	} else {
		document.getElementById('preview').src = "";
	}
}
function confirmSubmit() {
	if(confirm('등록하시겠습니까?')) {
		alert("등록되었습니다");
	} else {
		alert("등록 실패!")
		event.preventDefault();
	}
}

</script>
</body>
</html>
