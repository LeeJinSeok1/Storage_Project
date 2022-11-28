<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-15
  Time: 오전 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
  <script src="/resources/js/jqurey.js"></script>
</head>
<body>
<jsp:include page="../layout/sideBar.jsp" flush="false"></jsp:include>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container" id="detail">
  <table class="table table-hover">
    <tr>
      <th>id</th>
      <td>${product.id}</td>
    </tr>
    <tr>
      <th>고객사</th>
      <td>${product.productClient}</td>
    </tr>
    <tr>
      <th>사진</th>
      <td><img src="${pageContext.request.contextPath}/upload/${product.fakeFileName}" alt="" width="300" height="300"></td>
    </tr>
    <tr>
      <th>상품명</th>
      <td>${product.productName}</td>
    </tr>
    <tr>
      <th>상품수량</th>
      <td>${product.productCount}</td>
    </tr>
    <tr>
      <th>상품위치</th>
      <td>${product.productLocation}</td>
    </tr>




  </table>
</div>
<script>

</script>

</body>
</html>
