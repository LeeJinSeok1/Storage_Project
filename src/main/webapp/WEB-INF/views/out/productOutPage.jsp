<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-14
  Time: 오후 2:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>product_In_Page</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container mt-5">
  <form action="/outSave" method="get" class="form-control" style="width: 500px">
    담당 매니저명: <br>
    <input type="text" name="memberName" class="form-control mt-3">
    상품명: <br>
    <input type="text" name="productName" class="form-control mt-3">
    출고수량: <br>
    <input type="text" name="outCount" class="form-control mt-3">
    <br>
    <input type="submit" value="등록하기" class="btn btn-success mt-3" onclick="outSave()" >
  </form>
</div>
</body>
<script>
  const outSave = () => {
    alert("출고완료")
  }
</script>
</html>
