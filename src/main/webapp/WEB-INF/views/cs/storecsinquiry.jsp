<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>고객 문의</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<<<<<<< HEAD
<style>
.logintitle {
	text-align: center;
	margin-top: 40px;
}

.container1 {
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

input[type="text"], textarea {
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

table {
	border: 1px solid #ccc;
}

input[type="submit"] {
	display: block;
	margin: 0 auto;
}

#category {
	display: block;
	margin: 0 auto;
	text-align: center;
}
</style>
=======
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
.logintitle {
    text-align: center;
    margin-top: 40px;
}

.container1 {
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

table {
    border: 1px solid #ccc;
}


input[type="submit"] {
  display: block;
  margin: 0 auto; 
}
#category {
    display: block;
    margin: 0 auto;
    text-align: center;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
>>>>>>> refs/remotes/origin/G
</head>
<body>
<<<<<<< HEAD
	<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>고객 센터</h1>
				<br>
				<p>Store Service</p>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container1" id="board"
		style="width: 50%; height: 350px; float: center;">
		<form action="/StoreCsInquiry?s_no=${s_no }" method="POST"
			enctype="multipart/form-data">
=======
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
	<div class="container1" id="board" style="width: 50%; height: 350px; float: center;">
			<form action="/StoreCsInquiry?s_no=${s_no }" method="POST" enctype="multipart/form-data" >
>>>>>>> refs/remotes/origin/G
			<input type="hidden" name="scs_idx" value="${scs_idx }">
			<table id="table">
				<div>
					<select id="category" name="scs_category">
						<option value="no">카테고리</option>
						<option value="계정관리">계정관리</option>
						<option value="결제/환불">결제/환불</option>
						<option value="고객관련문의">고객관련문의</option>
						<option value="건의사항">건의사항</option>
						<option value="고객센터">고객센터</option>
					</select>
				</div>
				<div>
					<label>문의사항 제목</label> <input type="text" name="scs_title"
						placeholder="공지사항 제목을 입력하세요" autocomplete="off">
					<div>
						<label>문의사항 내용 </label>
						<textarea name="scs_cont" placeholder="공지사항 내용을 입력하세요"
							autocomplete="off"></textarea>
					</div>
					<label>문의사진</label> <input type="file" name="upfile"
						accept="image/*" onchange="readURL(this)"
						enctype="multipart/form-data"> <br> <img id="preview"
						style="max-width: 300px;">
			</table>
			<input type="submit" value="등록" onclick="confirmSubmit();"
				class="btn btn-primary">
		</form>
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
			var category = document.getElementById('category').value;
			if (confirm('등록하시겠습니까?')) {
				if (category != "no") {
					alert("등록되었습니다");
				} else {
					alert("카테고리를 선택해주세요")
					event.preventDefault();
				}
			} else {
				alert("등록 실패!")
				event.preventDefault();
			}

		}
	</script>
</body>
</html>
