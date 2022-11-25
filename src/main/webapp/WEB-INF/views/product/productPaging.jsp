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
<jsp:include page="../layout/sideBar.jsp" flush="false"></jsp:include>
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


    <c:forEach items="${productList}" var="products">
        <tr>
            <td>${products.id}</td>
            <td>${products.productClient}</td>
            <td><a href="/productDetail?id=${products.id}">${products.productName}</a></td>
            <td>${products.productCount}</td>
            <td>${products.productLocation}</td>
            <td>${products.memberName}</td>
        </tr>
    </c:forEach>
</table>
<div class="container">
    <ul class="pagination justify-content-center">
        <c:choose>
            <%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
            <c:when test="${paging.page<=1}">
                <li class="page-item disabled">
                    <a class="page-link">[이전]</a>
                </li>
            </c:when>
            <%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
            <c:otherwise>
                <li class="page-item">
                    <a class="page-link" href="/paging?page=${paging.page-1}">[이전]</a>
                </li>
            </c:otherwise>
        </c:choose>

        <%--  for(int i=startPage; i<=endPage; i++)      --%>
        <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
            <c:choose>
                <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>
                <c:when test="${i eq paging.page}">
                    <li class="page-item active">
                        <a class="page-link">${i}</a>
                    </li>
                </c:when>

                <c:otherwise>
                    <li class="page-item">
                        <a class="page-link" href="/paging?page=${i}">${i}</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>

        <c:choose>
            <c:when test="${paging.page>=paging.maxPage}">
                <li class="page-item disabled">
                    <a class="page-link">[다음]</a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item">
                    <a class="page-link" href="/paging?page=${paging.page+1}">[다음]</a>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>
</body>
</html>
