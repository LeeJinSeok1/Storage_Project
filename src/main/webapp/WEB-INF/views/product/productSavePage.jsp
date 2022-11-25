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
<jsp:include page="../layout/sideBar.jsp" flush="false"></jsp:include>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<div class="container mt-5">
  <h2 style="float: left">상품등록</h2>
</div>
<div class="container mt-5" style="width: 500px">
  <form action="/productSave" method="post" class="form-control" name="productSaveForm" enctype="multipart/form-data">
    고객사 이름 입력: <br>
    <input type="text" class="form-control mt-3" name="productClient" id="client" >
    상품 이름 입력: <br>
    <input type="text" class="form-control mt-3" name="productName" id="product">
    상품 위치: <br>
    <input type="text" class="form-control mt-3" name="productLocation" id="location">
    매니저 이름:
    <select name="memberName"  class="form-select mt-3" >
      <option value="이진석">이진석</option>
      <option value="성정연">성정연</option>
      <option value="김준영">김준영</option>
      <option value="조용준">조용준</option>
    </select>
    상품 사진:
    <input type="file" class="form-control mt-3" name="productFile">
    <input type="button" value="완료" class="btn btn-primary mt-5" onclick="productSave()">
  </form>
</div>
<script>
  const productSave = () => {
    const client = document.getElementById("client").value;
    const product = document.getElementById("product").value;
    const location = document.getElementById("location").value;
    if(client==""){
      alert("고객사를 입력해주세요")
    }else if(product=="") {
      alert("상품명을 입력해주세요")
    }else if(location=="") {
      alert("로케이션을 입력해주세요")
    }else{
      document.productSaveForm.submit();
    }
  }
</script>

</body>

</html>
