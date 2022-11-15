<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오후 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MemberSavePage</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
  <script src="/resources/js/jqurey.js"></script>
  <style>
    #saveBox{
      margin-left: auto;
      margin-right: auto;
    }
  </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container" style="padding-top:100px">
  <h2 style="text-align: center">회원 가입</h2>
  <form action="/memberSave" method="get" style="width: 500px" class="form-control" id="saveBox" name="memberSaveForm">
    <br>
    이름
    <input type="text" placeholder="ex)'홍길동-2센터' " class="form-control" onblur="nameBox()" id="nb" name="memberName">
    <span id="1"></span>
    <br>
    <input type="text" placeholder="ex)'010-0000-0000'" class="form-control" onblur="phoneBox()" id="phb" name="memberPhone">
    <span id="2"></span>
    <br>
    <input type="text" placeholder="이메일 입력" class="form-control" onblur="emailBox()" id="eb" name="memberEmail">
    <span id="3"></span>
    <br>
    <input type="text" placeholder="비밀번호 입력" class="form-control" onblur="passBox()" id="pb" name="memberPass">
    <span id="4"></span>
    <br>
    <input type="button" class="btn btn-success" value="가입하기" onclick="memberSave()">
  </form>
</div>
</body>
<script>
  const memberSave = () => {
    const name = document.getElementById("nb").value;
    const phone = document.getElementById("phb").value;
    const email =document.getElementById("eb").value;
    const pass =document.getElementById("pb").value;
  $.ajax({
      type:"get",
      url:"/nameCk",
      data:{
        memberName:name
      },
      dateType: "text",
      success: function (ck) {
        console.log(ck)
        if(ck=="no") {
          alert("이름중복입니다.")
        }else if(name ==""){
          alert("이름정보를 입력해주세요")
        }else if(phone =="") {
          alert("전화번호를 입력해주세요")
        }else if(email =="") {
          alert("이메일을 입력해주세요")
        }else if(pass =="")  {
          alert("비밀번호를 입력해주세요 ")
        }else {
          document.memberSaveForm.submit();
        }
      },
      error: function (ck) {

      }
    })

  }

  const nameBox =() => {
    const name = document.getElementById("nb").value;
    const b1 = document.getElementById("1")
    $.ajax({
      type:"get",
      url:"/nameCk",
      data:{
        memberName:name
      },
      dateType: "text",
      success: function (ck) {
        console.log(ck)
        if(ck=="no") {
          b1.innerHTML = "중복된 이름입니다.!"
          b1.style.color = "red";
        }else if(name=="") {
          b1.innerHTML = "필수 정보입니다."
          b1.style.color="red";
        }else if(ck=="good"){
          b1.innerHTML= "사용 가능한 이름입니다.!"
          b1.style.color="green";
        }
      },
      error: function (ck) {
        console.log(ck)
        console.log("실패")
      }
    })
  }

  const emailBox = () => {
    const email =document.getElementById("eb").value;
    const b3 =document.getElementById("3")
    if(email==""){
      b3.innerHTML="필수 정보입니다."
      b3.style.color="red"
    }else{
      b3.innerHTML="멋진 이메일이네요."
      b3.style.color="green"
    }

  }
  const passBox = () => {
    const pass =document.getElementById("pb").value;
    const b4 =document.getElementById("4")
    if(pass==""){
      b4.innerHTML="필수 정보입니다."
      b4.style.color="red"
    }else{
      b4.innerHTML=""
    }

  }

  const phoneBox = () => {
    const phone = document.getElementById("phb").value;
    const b2 = document.getElementById("2");
    if(phone=="") {
      b2.innerHTML="필수 정보입니다."
      b2.style.color="red"
    }else{
      b2.innerHTML="사용가능합니다."
      b2.style.color="green"
    }
  }
</script>
</html>
