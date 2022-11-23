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
  <h2 style="text-align: center">게시판</h2>
  <form action="/boardSave" method="post" class="form-control mt-5" style="width: 1000px; height: 700px; margin-right: auto; margin-left: auto" name="boardSaveForm" >
    <div class="mt-5">
    작성자
    <input id="board1" type="text" class="form-control" value="${sessionScope.loginEmail}" name="boardMember" readonly>
    </div>
    <div class="mt-5">
    제목
    <input id="board2" type="text" class="form-control" placeholder="제목입력" name="boardName">
    </div>
    <div class="mt-5">
    내용
    <textarea  name="boardContents" id="board3" cols="30" rows="10" class="form-control" ></textarea>
    </div>
    <div class="form-group mt-5">
      <input type="text" id="board4" class="form-control" placeholder="게시글 비밀번호" style="width: 300px" name="boardPass">
      <input type="button" class="btn btn-primary" value="작성 완료" style="float: right" onclick="boardSave()">
    </div>
  </form>
</div>
</body>
<script>
  const boardSave = () => {
    const board1 = document.getElementById("board1").value;
    const board2 = document.getElementById("board2").value;
    const board3 = document.getElementById("board3").value;
    const board4 = document.getElementById("board4").value;
    if(board1 ==""){
      alert("필수값입니다.")
    }else if(board2 ==""){
      alert("필수값입니다.")
    }else if(board3 =="") {
      alert("필수값입니다.")
    }else if(board4 ==""){
      alert("필수값입니다.")
    }else{
      alert("저장완료")
      document.boardSaveForm.submit();
    }

  }

</script>
</html>
