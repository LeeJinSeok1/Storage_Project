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
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container" id="detail">
    <table class="table table-hover">
        <tr>
            <th>id</th>
            <td>${member.id}</td>
        </tr>
        <tr>
            <th>이름</th>
            <td>${member.memberName}</td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td>${member.memberPhone}</td>
        </tr>
        <tr>
            <th>이메일</th>
            <td>${member.memberEmail}</td>
        </tr>
        <tr>
            <th>비밀번호 수정</th>
            <td>
                <input type="text" placeholder="수정시 비밀번호 입력"  class="form-control" id="passCk">
                <button class="btn btn-warning mt-3" onclick="ckPass()">체크</button>
<%--                <a href="/updateMember?id=${member.id}" class="btn btn-warning">수정</a>--%>
            </td>
        </tr>


    </table>
</div>
<script>
    const ckPass = () => {
        const passCk = document.getElementById("passCk").value;
        const pass = ${member.memberPass}
        if(pass !=passCk) {
            alert("비밀번호가 틀립니다.")
        }else {
            location.href="/updateMember?id=${member.id}"
        }

    }
</script>

</body>
</html>
