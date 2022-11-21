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
    <title>memberListPage</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
    <script src="/resources/js/jqurey.js"></script>
</head>
<body>
<jsp:include page="../layout/sideBar.jsp" flush="false"></jsp:include>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<form action="/searchMember" method="get" class="form-group mt-5">
    <select name="type" class="form-select-lg">
        <option value="memberName">매니저이름</option>
        <option value="memberEmail">이메일</option>
        <option value="memberPhone">전화번호</option>
    </select>

    <input type="text" name="q" class="form-control-lg" placeholder="Search..">
    <input type="submit" class="btn btn-success" value="검색하기">
</form>
<table class="table table-striped table-hover text-center mt-5">
    <tr>

        <th>id</th>
        <th>이름</th>
        <th>전화번호</th>
        <th>이메일</th>

    </tr>


    <c:forEach items="${members}" var="member">
        <tr>
            <td>${member.id}</td>
            <td>${member.memberName}</td>
            <td>${member.memberPhone}</td>
            <td>${member.memberEmail}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
