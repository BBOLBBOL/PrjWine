<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>고객용 회원가입</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
/* Style for the container */
.container1 {
	margin: auto;
	width: 50%; /* Reduced width */
	padding: 20px;
	border: 1px solid #ccc;
	background-color: #f9f9f9;
}

/* Style for the form */
form {
	padding: 20px;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
}

/* Style for table elements */
table {
	width: 100%;
	hieght: 700px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

td {
	padding: 5px;
}

/* Style for required fields (add an asterisk) */
.redFont {
	color: #7A001E; /* Red color */
}

/* Style for buttons */
.btn {
	padding: 10px 20px;
	background-color: #7A001E; /* Red color */
	color: #fff;
	border: none;
	border-radius: .25rem;
	cursor: pointer;
	margin-top: 5px;
}

/* Style for the "뒤로가기" button */
.btn, .btn-secondary {
	margin: 12px !important;
}

/* Style for text inputs and textareas */
input[type="text"], input[type="password"], textarea {
	width: 100%;
	padding: 6px;
	margin: 5px 0;
	border: 1px solid #7A001E; /* Red border */
	border-radius: 5px;
}

/* Style for the image preview */
#preview {
	max-width: 300px;
	margin-top: 10px;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>고객용 회원가입</h1>
				<br>
				<p>User Join</p>
			</div>
		</div>
	</div>
	<br>
	<br>

	<div class="container1">

		<form action="/UserJoin" method="POST" onsubmit="validateForm()">
			<table class="tb1">
				<colgroup>
					<col width="25%">
					<col width="*">
				</colgroup>
				<tr>
					<td colspan="2"
						style="background-color: #cee3f6; font-weight: bold;"><span
						class="redFont">(*필수입력)</span> 회원기본정보</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>아이디:</td>
					<td><input type="text" name="u_id" id="u_id"
						style="width: 200px" required>
						<button type="button" onclick="checkId()" class="btn btn-dark">중복
							체크</button>
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>비밀번호:</td>
					<td><input type="password" name="u_pw" id="user_pw1"
						style="width: 200px" required> <span id=pwdcheck_1></span>
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>비밀번호 확인:</td>
					<td><input type="password" id="user_pw2" style="width: 200px"
						onKeyUp="fn_compare_pwd();" required> <span
						id="pwdcheck_2"></span></td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>이름:</td>
					<td><input type="text" name="u_name" id="u_name"
						style="width: 200px" required></td>
				</tr>
				<tr>
					<td>생일:</td>
					<td>
						<div>
							<input type="text" name="u_birth" placeholder="태어난년도"
								style="width: 200px">
						</div>
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>주소:</td>
					<td>
						<div>
							<input type="text" id="u_postcode" name="u_postcode"
								placeholder="우편번호" required> <input type="button"
								onclick="u_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="u_address" name="u_address"
								placeholder="주소"><br> <input type="text"
								id="u_detailAddress" name="u_detailAddress" placeholder="상세주소"
								required> <input type="text" id="u_extraAddress"
								name="u_extraAddress" placeholder="참고항목">
						</div>
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>연락처:</td>
					<td>
						<div>
							<input type="text" name="u_phone" placeholder="(-)빼고 입력" required>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div style="display: flex; justify-content: center;">
							<a type="button" class="btn btn-secondary"
								onclick="location.href='/';">메인 화면</a>
							<button type="submit" class="btn btn-primary">회원가입</button>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<div style="display: flex; justify-content: center;"></div>
	</div>





	<script>
		$("#user_pw1")
				.blur(
						function() {
							let pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;

							if ($("#user_pw1").val() == "") {
								$("#pwdcheck_1").text("비밀번호를 입력하세요.");
								user_pwd1 = false;
							} else if (!pwdCheck.test($("#user_pw1").val())) {
								$("#pwdcheck_1").text(
										"문자,숫자,특수문자를 포함한 8글자 이상 사용하여주세요");
								user_pwd1 = false;
							} else {
								$("#pwdcheck_1").text("안전한 비밀번호 입니다")
								user_pwd1 = true;
							}
						});

		$("#user_pw2").blur(
				function() {
					if ($("#user_pw2").val() == "") {
						$("#pwdcheck_2").css("color", "red");
						$("#pwdcheck_2").text("필수정보입니다");
						user_pw2 = false;
					} else if (user_pwd1 == true
							&& $("#user_pw1").val() == $("#user_pw2").val()) {
						$("#pwdcheck_2").css("color", "blue");
						$("#pwdcheck_2").text("비밀번호 일치");
						user_pw2 = true;
					} else {
						$("#pwdcheck_2").text("비밀번호 다시 확인해주세요");
						$("#pwdcheck_2").css("color", "red");
						$("#user_pw2").val("");
						user_pw2 = false;
					}
				});

		function checkId() {
			var u_id = $('#u_id').val();
			$.ajax({
				url : '/UserIdChk',
				type : 'post',
				data : {
					u_id : u_id
				},
				success : function(cnt) {
					if (cnt == 0) {
						$('.id_ok').css("display", "inline-block");
						$('.id_already').css("display", "none");
						alert("중복되지 않은 아이디입니다");
						isIdAvailable = true;
					} else {
						$('.id_already').css("display", "inline-block");
						$('.id_ok').css("display", "none");
						alert("아이디를 다시 입력해주세요");
						isIdAvailable = false;
						$('#u_id').val('');
						
					}
					$('#u_id').prop('readonly', isIdAvailable);
				},
				error : function() {
					alert("에러입니다!");
				}
			});
		}

		function checkIdcg() {
			$('#u_id').prop('readonly', false);
		}

		function u_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("u_extraAddress").value = extraAddr;

							} else {
								document.getElementById("u_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('u_postcode').value = data.zonecode;
							document.getElementById("u_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("u_detailAddress").focus();
						}
					}).open();
		}

		 var isIdChecked  =  false;
		   
		   function validateForm() {
		      var requiredFields = document.querySelectorAll('input[required]');
		      for (var i = 0; i < requiredFields.length; i++) {
		          if (requiredFields[i].value.trim() === '') {
		              alert("필수 입력란을 작성하세요.");
		              event.preventDefault();
		              return false;
		          }
		      }
		      if (!$('#u_id').prop('readonly')){
		         alert('아이디 중복 체크를 먼저 진행하세요');
		         event.preventDefault();
		         return false;
		      }
		      return true;
		  }
		   

	</script>

</body>
</html>

