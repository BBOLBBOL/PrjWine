<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 위 nav (비로그인)-->
<c:choose>
  <c:when test="${ sloginVo eq null }">
   <ul class="nav justify-content-end">
     <li class="nav-item">
       <a class="nav-link active" aria-current="page" href="/UserLoginForm"><b>고객로그인</b></a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="/StoreLoginForm"><b>가게로그인</b></a>
     </li>
   </ul>
  </c:when>
  <c:otherwise>
    <ul class="nav justify-content-end">
     <li class="nav-item">
        <br>
        <b> ${ sloginVo.s_name } 님 환영합니다 </b>
     </li>
     <li class="nav-item">
       <img src="/img/logon.png" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          <ul class="dropdown-menu">
          	<li><a class="dropdown-item" href="/StoreCheck"><b>매장정보</b></a></li>
            <li><a class="dropdown-item" href="/StoreWineRegister"><b>매장와인 등록</b></a></li>
            <li><a class="dropdown-item" href="/StoreWineManage"><b>보유와인 확인/수정</b></a></li>
            <li><a class="dropdown-item" href="/Store/SalesHistory"><b>판매기록</b></a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/StoreLogOut"><b>로그 아웃</b></a></li>
          </ul>     
     </li>
   </ul>
  </c:otherwise>
</c:choose>


<!-- 위 nav -->


<!-- 아래nav -->
<ul class="nav justify-content-center" >
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/StoreList"><b>매장찾기</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/WineList"><b>전체와인</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/CouponForm"><b>쿠폰 발급</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#"><b>시음회 정보</b></a>
  </li>

</ul>
<!-- 아래 nav -->






