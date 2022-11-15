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
    <form action="/memberLogin" method="post" name="loginForm" class="form-control" style="width: 500px" id="loginBox">
        <img src="https://www.youthdaily.co.kr/data/photos/20191043/art_15719038053397_e0bbe4.jpg" alt="" style="width: 460px" class="">
        <br>
        이메일
        <input type="text" class="form-control" placeholder="이메일입력" name="memberEmail" id="memberEmail" onblur="emailLoginBox()">
        <span id="email1"></span>
        <br>
        비밀번호
        <input type="text" class="form-control" placeholder="비밀번호입력" name="memberPass" id="memberPass" onblur="passLoginBox()">
        <span id="pass1"></span>
        <br>
        <div class="form-group mb-5">
            <input type="button" onclick="loginCk()" value="로그인" class="btn btn-primary">
            <div class="form-group" style="float: right">
                <a href="/memberSavePage" class="btn btn-primary">회원가입</a>
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
    const emailLoginBox = () => {
        const memberEmail =document.getElementById("memberEmail").value;
        const b1=document.getElementById("email1");
        if(memberEmail==""){
            b1.innerHTML="이메일을 입력해주세요"
            b1.style.color="red"
        }
    }
    const passLoginBox = () => {
        const memberPass =document.getElementById("memberPass").value;
        const b2=document.getElementById("pass1");
        if(memberPass==""){
            b2.innerHTML="비밀번호를 입력해주세요"
            b2.style.color="red";
        }
    }
</script>
</html>
