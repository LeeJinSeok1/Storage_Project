<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-15
  Time: 오전 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
    <script src="/resources/js/jqurey.js"></script>
</head>
<body>
<jsp:include page="../layout/sideBar.jsp" flush="false"></jsp:include>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<div class="container" style="padding-top:100px">
    <h2 style="text-align: center">비밀번호 찾기</h2>
    <form action="/updatePass" method="post" style="width: 500px" class="form-control"  name="memberUpdateForm">
        <br>
        이메일 입력
        <input type="text"  class="form-control" id="email" name="memberEmail">
        <span id="1"></span>
        <br>
        비밀번호 입력
        <input type="text"  class="form-control"  id="pass" name="memberPass">
        <span id="2"></span>
        <br>
        수정할 비밀번호 입력
        <input type="text"  class="form-control" id="upPass" name="updatePass">
        <span id="3"></span>
        <br>
        <input type="button" onclcik="passCk" class="btn btn-primary" value="수정하기" >
    </form>
</div>
</body>
<script>

</script>
</html>
