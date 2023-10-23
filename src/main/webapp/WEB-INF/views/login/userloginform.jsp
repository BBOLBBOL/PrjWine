<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');


.login-store {
  font-family: 'Noto Sans KR', sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
   margin-top: -230px; /* 50px 위로 이동 */
}

.login-form h1 {
  font-size: 32px;
  text-align: center;
  margin-bottom: 50px;
}

.int-area {
  width: 400px;
  position: relative;
  margin-top: 20px;
}

.int-area:first-child {
  margin-top: 0;
}

.int-area input {
  width: 100%;
  padding: 20px 10px 10px;
  background-color: transparent;
  border: none;
  border-bottom: 1px solid black;
  font-size: 18px;
  outline: none;
}

.int-area label {
  position: absolute;
  left: 10px;
  top: 15px;
  font-size: 18px;
  transition: top 0.5s ease;
}

.int-area label.warning {
  color: red !important;
  animation: warning 0.3s ease;
  animation-iteration-count: 3;
}

@keyframes warning {
  0% {
    transform: translateX(-8px);
  }
  25% {
    transform: translateX(8px);
  }
  50% {
    transform: translateX(-8px);
  }
  75% {
    transform: translateX(8px);
  }
}

.int-area input:focus + label,
.int-area input:valid + label {
  top: -2px;
  font-size: 13px;
  color: #166caa;
}

.btn-area {
  margin-top: 30px;
}

.btn-area button {
  width: 100%;
  height: 50px;
  margin: 0px 0px;
  color: #fff;
  background: #166caa;
  border: none;
  border-radius: 20px;
  font-size: 20px;
  cursor: pointer;
}

.caption {
  margin-top: 20px;
  text-align: center;
}

.caption a {
  margin: 0 20px;
  font-size: 15px;
  color: blue;
  text-decoration: none;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>고객 로그인</h1>
               <br>
               <p>User Login</p>
            </div>
         </div>
      </div>
<br>
<br>

<div class="login-store">
<section class="login-form">
  <form action="/UserLogin" method="POST" >
   <div class="int-area">
            <input type="text" name="u_id" placeholder="Input your ID" autocomplete="off">
            <label for="id">I D</label>
      </div>
      <div class="int-area">   
            <input type="password" name="u_pw" placeholder="Input your password" autocomplete="off">
            <label for="pw">P W</label> 
       </div>
       <div class="btn-area">
            <button type="submit">로그인</button>
         </div>
        </form>
       <div class="caption">
            <a href="/UserJoinForm">회원가입</a>
       </div>     
</section>
</div>      


</body>
</html>
