<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-14
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>productListPage</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<form action="/searchProduct" method="get" class="form-group mt-5">
    <select name="type" class="form-select-lg">
        <option value="productClient">고객사명</option>
        <option value="productName">상품명</option>
        <option value="memberName">담당매니저</option>
    </select>

    <input type="text" name="q" class="form-control-lg" placeholder="Search..">
    <input type="submit" class="btn btn-success" value="검색하기">
</form>
<table class="table table-striped table-hover text-center mt-5">
    <tr>

        <th>id</th>
        <th>고객사 명</th>
        <th>상품 명</th>
        <th>수량</th>
        <th>로케이션</th>
        <th>담당 매니저</th>

    </tr>


    <c:forEach items="${product}" var="products">
        <tr>
            <td>${products.id}</td>
            <td>${products.productClient}</td>
            <td>${products.productName}</td>
            <td>${products.productCount}</td>
            <td>${products.productLocation}</td>
            <td>${products.memberName}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
