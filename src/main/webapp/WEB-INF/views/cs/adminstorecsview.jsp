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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>

	<div class="container1" id="board" style="width: 50%; height: 350px; float: center;">
			 <table id="table">
		         <c:forEach var="scs" items="${admincsstoreviewList}">
            	 <label>문의사항 제목</label>
                 <input type="text" value="${scs.scs_title}" readonly="readonly">
            	 <label>카테고리</label>
                 <input type="text" value="${scs.scs_category}" readonly="readonly">
            	 <label>문의날짜</label>
                 <input type="text" value="${scs.sw_date}" readonly="readonly">
                <div>
                 <label>문의사항 내용 </label>
                 <textarea readonly="readonly">${scs.scs_cont}</textarea>
                </div>
                <label>문의사진</label>
              <img id="imagePreview" src="/imgpage/${scs.scs_img}" alt="Image Preview" />
              <c:choose>
            <c:when test="${not empty scs.response}">
            <div>
            <label>답변 내용 </label>
                 <textarea readonly="readonly">${scs.response}</textarea>
                            </div>
                             <label>답변날짜</label>
                 <input type="text" value="${scs.res_date}" readonly="readonly">
           </c:when>
             <c:when test="${empty scs.response}">
             <form action="/AdminCsResponse?scs_idx=${scs.scs_idx }" method="POST">
             <div>
             <label>문의사항 내용 </label>
              <textarea name="response" autocomplete="off" ></textarea></div>
              <button type="submit" class="btn btn-primary" onclick="confirmSubmit();">등록</button>
              </form>
             </c:when>
           </c:choose>
                  </c:forEach>
              
			  </table>
              <button onclick="history.back();">뒤로가기</button>
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
