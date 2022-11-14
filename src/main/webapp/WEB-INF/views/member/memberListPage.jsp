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
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<form action="/searchMember" method="get" class="form-control form-group">
    <input type="text" placeholder="searchName.." name="memberName">
    <input type="submit" class="btn btn-success" value="검색">
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
