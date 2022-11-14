<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
  <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-4">Storage_Project</span>
    </a>

    <ul class="nav nav-pills">
      <c:if test="${sessionScope.loginEmail != null}">
        <li class="nav-item"><a href="mainPage" class="nav-link active" aria-current="page">Main</a></li>
      </c:if>
      <li class="nav-item"><a href="#" class="btn btn-primary">목록</a></li>
      <c:if test="${sessionScope.loginEmail == null}">
        <li class="nav-item"><a href="#" class="btn btn-primary">로그인</a></li>
      </c:if>
      <c:if test="${sessionScope.loginEmail != null}">
        <li class="nav-item"><a href="#" class="btn btn-danger">로그아웃</a></li>
      </c:if>
      <c:if test="${sessionScope.loginEmail != null}">
        <li></li>
        <li><strong>${sessionScope.loginEmail}</strong>님 환영합니다.</li>
      </c:if>



<%--      <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>--%>
<%--      <li class="nav-item"><a href="#" class="nav-link">About</a></li>--%>
    </ul>
  </header>
</div>

</body>
</html>
