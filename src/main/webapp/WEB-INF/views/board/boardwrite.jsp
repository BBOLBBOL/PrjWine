<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>공지사항 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
.container1 {
    margin: 20px auto;
    max-width: 800px;
    padding: 20px;
    background-color: #f2f2f2;
    border: 2px solid #ccc;
    border-radius: 5px;
}

.container1 form {
    width: 50%;
    height: auto;
    margin: 0 auto;
    padding: 20px;
}

.container1 form table {
    width: 100%;
}

.container1 form label {
    display: block;
    margin-bottom: 10px;
}

.container1 form input[type="text"],
.container1 form textarea {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
    margin-bottom: 10px;
}

.container1 form textarea {
    height: 400px;
}

.container1 form #submit-button {
    color: #fff;
    border: none;
}

</style>
</head>
<body>
    <%@include file="/WEB-INF/include/nav.jsp"%>
    <div class="breadcrumb-section breadcrumb-bg">
        <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
                <br>
                <h1>공지사항</h1>
                <br>
                <p>Announcement</p>
            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="container1" id="board">
        <form action="/BoardWrite?s_no=${sloginVo.s_no}" method="POST" id="search-form">
            <table>
                <tr>
                    <label>공지사항 제목</label>
                    <input type="text" name="b_title" placeholder="공지사항 제목을 입력하세요" autocomplete="off">
                </tr>
                <tr>
                    <label>공지사항 내용 설명</label>
                    <textarea name="b_cont" placeholder="공지사항 내용을 입력하세요" autocomplete="off"></textarea>
                </tr>
            </table>
            <div style="text-align: center;">
            <a type="submit" class="btn btn-secondary" onclick="goBack()">뒤로가기</a>
            <input type="submit" class="btn btn-primary" value="등록" id="submit-button">
            </div>
        </form>
    </div>
	<script>
		document.getElementById('submit-button').addEventListener(
				'click',
				function(event) {
					var titleInput = document
							.querySelector('input[name="b_title"]');
					var contentTextarea = document
							.querySelector('textarea[name="b_cont"]');

					if (!titleInput.value || !contentTextarea.value) {
						alert("빈 칸을 모두 채워주세요.");
						event.preventDefault();
					} else {
						var confirmation = confirm("등록하시겠습니까?");
						if (!confirmation) {
							event.preventDefault(); // "아니요"를 선택한 경우에는 이벤트 막음
						}
					}
				});
	    function goBack() {
	        window.history.back();
	    }	
		
	</script>
</body>
</html>
