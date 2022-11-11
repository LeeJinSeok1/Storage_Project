<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오후 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
    <script src="/resources/js/jqurey.js"></script>
    <style>
        #loginBox{
            margin-right: auto;
            margin-left: auto;
        }
    </style>
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<div class="container" style="padding-top: 100px">
    <h2 style="text-align: center">Storage Program</h2>
    <br>
    <form action="/memberLogin" method="post" name="loginForm" class="form-control" style="width: 500px" id="loginBox">
        <br>
        <input type="text" class="form-control" placeholder="이메일입력" name="memberEmail" id="memberEmail">
        <span></span>
        <br>
        <input type="text" class="form-control" placeholder="비밀번호입력" name="memberPass" id="memberPass">
        <span></span>
        <br>
        <div class="form-group">
            <input type="button" onclick="loginCk()" value="로그인" class="btn btn-success">
            <div class="form-group" style="float: right">
                <a href="/memberSavePage" class="btn btn-success">회원가입</a>
                <a href="" class="btn btn-warning">비밀번호 찾기</a>
            </div>
        </div>
    </form>
</div>
</body>
<script>
    const loginCk = () => {
        const memberEmail =document.getElementById("memberEmail").value;
        const memberPass =document.getElementById("memberPass").value;
        $.ajax({
            type:"get",
            url:"/memberCk",
            data:{
                memberEmail:memberEmail,
                memberPass:memberPass
            },
            dataType: "text",
            success: function (ck) {
                console.log(ck)
                if(ck=="no") {
                   alert("이메일이나 비밀번호가 틀렸습니다.")
                }else if(ck=="yes"){
                    document.loginForm.submit();
                }
            },
            error: function (ck) {
                console.log(ck)
                console.log("실패")
            }
        })

    }
</script>
</html>
