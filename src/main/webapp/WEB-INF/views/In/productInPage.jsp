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
    <form action="/inSave" method="get" class="form-control" style="width: 500px">
        담당 매니저명: <br>
        <input type="text" name="memberName" class="form-control mt-3">
        상품명: <br>
        <input type="text" name="productName" class="form-control mt-3">
        입고수량: <br>
        <input type="text" name="inCount" class="form-control mt-3">
        <br>
        <input type="submit" value="등록하기" class="btn btn-success mt-3" onclick="inSave()" >
    </form>
</div>
</body>
<script>
    const inSave = () => {
        alert("등록완료")
    }
</script>
</html>
