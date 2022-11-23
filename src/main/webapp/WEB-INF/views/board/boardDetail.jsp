<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-15
  Time: 오전 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
  <script src="/resources/js/jqurey.js"></script>
</head>
<body>
<jsp:include page="../layout/sideBar.jsp" flush="false"></jsp:include>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container" id="detail">
  <table class="table table-hover">
    <tr>
      <th>id</th>
      <td>${board.id}</td>
    </tr>
    <tr>
      <th>작성자</th>
      <td>${board.boardMember}</td>
    </tr>
    <tr>
      <th>제목</th>
      <td>${board.boardName}</td>
    </tr>
    <tr>
      <th>내용</th>
      <td>${board.boardContents}</td>
    </tr>
    <tr>
      <th>시간</th>
      <td>${board.boardTime}</td>
    </tr>
  </table>
  <div class="container mt-5" >

      <div class="input-group" style="float: right">
        <input id="boardId" type="text" value="${board.id}" name="boardId" hidden>
      <input id="commentMember" type="text" class="form-control" name="commentMember" placeholder="댓글 작성자" style="width: 100px">
      <input id="commentContents" type="text" class="form-control" name="commentContents" placeholder="댓글 내용" style="width: 900px; margin-left: 10px">
      </div>
        <button class="btn btn-primary mt-3" style="float: right" onclick="commentSave()">댓글 달기</button>


  </div>
  <div class="container mt-5" id="comment-list">
    <table class="table">
      <tr>
        <th>댓글번호</th>
        <th>작성자</th>
        <th>내용</th>
        <th>작성시간</th>
      </tr>
      <c:forEach items="${commentList}" var="comment">
        <tr>
          <td>${comment.id}</td>
          <td>${comment.commentMember}</td>
          <td>${comment.commentContents}</td>
          <td>${comment.commentTime}</td>
        </tr>
      </c:forEach>
    </table>
  </div>
<script>
  const commentSave = () => {
    const commentMember = document.getElementById("commentMember").value;
    const commentContents = document.getElementById("commentContents").value;
    const boardId = document.getElementById("boardId").value;
    $.ajax({
      type:"get",
      url:"/commentSave",
      data:{
        commentMember : commentMember,
        commentContents : commentContents,
        boardId : boardId
      },
      dateType: "json",
      success: function (commentList) {
        let output = "<table class='table'>";
        output += "<tr><th>댓글번호</th>";
        output += "<th>작성자</th>";
        output += "<th>내용</th>";
        output += "<th>작성시간</th></tr>";
        for(let i in commentList){
          output += "<tr>";
          output += "<td>"+commentList[i].id+"</td>";
          output += "<td>"+commentList[i].commentMember+"</td>";
          output += "<td>"+commentList[i].commentContents+"</td>";
          output += "<td>"+commentList[i].commentTime+"</td>";
          output += "</tr>";
        }
        output += "</table>";
        document.getElementById('comment-list').innerHTML = output;
        document.getElementById('commentWriter').value='';
        document.getElementById('commentContents').value='';

      },
      error: function (ck) {

      }
    })

  }

</script>

</body>
</html>
