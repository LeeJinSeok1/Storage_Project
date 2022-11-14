<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-14
  Time: 오전 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>productSavePage</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
  <script src="/resources/js/jqurey.js"></script>

</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<div class="container mt-5">
  <h2 style="float: left">입고등록</h2>
</div>
<div class="container mt-5" style="width: 500px">
  <form action="/productSave" method="get" class="form-control">
    고객사 이름 입력: <br>
    <input type="text" class="form-control mt-3" name="productClient" >
    상품 이름 입력: <br>
    <input type="text" class="form-control mt-3" name="productName" >
    상품 위치: <br>
    <input type="text" class="form-control mt-3" name="productLocation" >
    매니저 이름:
    <select name="memberName" id="" class="form-select mt-3">
      <option value="이진석">이진석</option>
      <option value="성정연">성정연</option>
      <option value="김준영">김준영</option>
      <option value="조용준">조용준</option>
    </select>
    <input type="submit" value="완료" class="btn btn-primary mt-5" onclick="productSave()">
  </form>
</div>
<script>
  const productSave = () => {
    alert("등록완료")
  }
</script>

</body>

</html>
