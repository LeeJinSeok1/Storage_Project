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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
    </style>
</head>
<body>
<%--<jsp:include page="layout/sideBar.jsp" flush="false"></jsp:include>--%>
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
        <a href="/myPage?memberEmail=${sessionScope.loginEmail}" class="btn btn-primary" style="margin-left: 20px">내정보</a>
    </c:if>
    <a href="/paging5" class="btn btn-primary" style="margin-left: 20px">게시판</a>
</div>
<div class="form-group mt-5">
</div>

<%--<div style="text-align: center;">--%>
<%--    <img src="https://appservice-img.s3.amazonaws.com/apps/RuGfOHzXD62V57cMfaQ3GF/ko/screenshot2/image?1652935584" id="pt">--%>
<%--    <img style="width: 500px " style="height: 700px">--%>
<%--</div>--%>

<div class="container form-group" style="width: 1000px; height: 700px ">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1" ></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" ></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3" ></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://s3.ap-northeast-2.amazonaws.com/cloimage/home/rails/clo/public/ckeditor_assets/pictures/838/content_.jpg." class="d-block w-100" alt="..." id="1" style=" width: 1200px;  height: 700px;">
            </div>
            <div class="carousel-item">
                <img src="https://byline.network/wp-content/uploads/2019/10/wekeep-fulfillment-1200x640.jpg" class="d-block w-100" alt="..." id="2"  style=" width: 1200px;  height: 700px;">
            </div>
            <div class="carousel-item">
                <img src="http://www.kbanker.co.kr/news/photo/202210/206985_55768_2827.jpg" class="d-block w-100" alt="..." id="3" style=" width: 1200px;  height: 700px;">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev" >
            <span class="carousel-control-prev-icon " style="background-color: dodgerblue" aria-hidden="true" ></span>
            <span class="visually-hidden" >Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next" >
            <span class="carousel-control-next-icon" style="background-color: dodgerblue" aria-hidden="true" ></span>
            <span class="visually-hidden" >Next</span>
        </button>
    </div>
</div>

</body>
</html>
