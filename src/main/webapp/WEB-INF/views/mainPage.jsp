<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오후 4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>

<div class="form-group form-control mt-5" style="text-align: center">
    <a href="/saveProductPage" class="btn btn-primary">상품 등록하기</a>
    <a href="/paging2" class="btn btn-primary">매니저 조회</a>
    <a href="/paging" class="btn btn-primary">재고 조회</a>
    <a href="/inPage" class="btn btn-primary">입고 등록</a>
    <a href="/outPage" class="btn btn-primary">출고 등록</a>
    <a href="/paging3" class="btn btn-primary">입고기록 조회</a>
    <a href="/paging4" class="btn btn-primary">출고기록 조회</a>
</div>
<div class="form-group mt-5">

</div>
</body>
</html>
