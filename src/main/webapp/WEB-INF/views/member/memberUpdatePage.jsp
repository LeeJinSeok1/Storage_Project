<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-15
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
<jsp:include page="../layout/sideBar.jsp" flush="false"></jsp:include>
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
      <th>수정 비밀번호</th>
      <td>
        <form action="/updateMember" method="post">
        <input type="text" value="${member.id}" name="id" hidden>
        <input type="text" class="form-control" placeholder="수정하실 비밀번호" name="memberPass">
          <input type="submit" class="btn btn-warning mt-3" value="수정하기!">
        </form>
      </td>
    </tr>


  </table>
</div>


</body>
</html>
