<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오후 4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
    <script src="/resources/js/jqurey.js"></script>
    <style>
        #pt{
            width: 1000px;
            height: 700px;
        }
    </style>
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>

<div class="form-group form-control mt-5" style="text-align: center">
    <a href="/saveProductPage" class="btn btn-primary" style="margin-left: 20px">상품 등록하기</a>
    <a href="/paging2" class="btn btn-primary" style="margin-left: 20px">매니저 조회</a>
    <a href="/paging" class="btn btn-primary" style="margin-left: 20px">재고 조회</a>
    <a href="/inPage" class="btn btn-primary" style="margin-left: 20px">입고 등록</a>
    <a href="/outPage" class="btn btn-primary" style="margin-left: 20px">출고 등록</a>
    <a href="/paging3" class="btn btn-primary" style="margin-left: 20px">입고기록 조회</a>
    <a href="/paging4" class="btn btn-primary" style="margin-left: 20px">출고기록 조회</a>
    <c:if test="${sessionScope.loginEmail != null}">
        <a href="/myPage?memberEmail=${sessionScope.loginEmail}" class="btn btn-warning" style="margin-left: 20px">내정보</a>
    </c:if>
</div>
<div class="form-group mt-5">
</div>

<%--<div style="text-align: center;">--%>
<%--    <img src="https://appservice-img.s3.amazonaws.com/apps/RuGfOHzXD62V57cMfaQ3GF/ko/screenshot2/image?1652935584" id="pt">--%>
<%--    <img style="width: 500px " style="height: 700px">--%>
<%--</div>--%>

<div class="container">
    <div id="carouselExampleControls" class="carousel slide " data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://appservice-img.s3.amazonaws.com/apps/RuGfOHzXD62V57cMfaQ3GF/ko/screenshot2/image?1652935584" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://wowtale.net/wp-content/uploads/2021/08/wekeep.jpeg" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

</div>

</div>
</body>
</html>
