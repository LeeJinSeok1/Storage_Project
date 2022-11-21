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
    <script src="/resources/js/jqurey.js"></script>
</head>
<body>
<jsp:include page="../layout/sideBar.jsp" flush="false"></jsp:include>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container mt-5">
    <form action="/inSave" method="get" class="form-control" style="width: 500px" name="inForm">
        담당 매니저명: <br>
        <input type="text" name="memberName" class="form-control mt-3" id="memberName" >
        상품명: <br>
        <input type="text" name="productName" class="form-control mt-3" id="productName">
        입고수량: <br>
        <input type="text" name="inCount" class="form-control mt-3" id="count" >
        <br>
        <input type="button" value="등록하기" class="btn btn-success mt-3" onclick="inSave()" >
    </form>
</div>
</body>
<script>
    const inSave = () => {
        const memberName = document.getElementById("memberName").value;
        const productName = document.getElementById("productName").value;
        const count = document.getElementById("count").value;

       if(memberName==""){
            alert("필수값입니다.")
        }else if(count==""){
            alert("필수값입니다.")
        }

        $.ajax({
            type:"get",
            url:"/productCk",
            data:{
                productName:productName
            },
            dateType: "text",
            success: function (ck) {
                if(ck=="good"){
                    document.inForm.submit();
                }else if(ck=="no"){
                    alert("입력하신 상품이 없습니다.")
                }
            },
            error: function (ck) {

            }
        })
    }
</script>
</html>
