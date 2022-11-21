<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-21
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
  <style>
    /* 사이드바 래퍼 스타일 */

    #page-wrapper {
      padding-left: 250px;
    }

    #sidebar-wrapper {
      position: fixed;
      width: 250px;
      height: 100%;
      margin-left: -250px;
      background: #000;
      overflow-x: hidden;
      overflow-y: auto;
    }

    #page-content-wrapper {
      width: 100%;
      padding: 20px;
    }
    /* 사이드바 스타일 */

    .sidebar-nav {
      width: 250px;
      margin: 0;
      padding: 0;
      list-style: none;
    }

    .sidebar-nav li {
      text-indent: 1.5em;
      line-height: 2.8em;
    }

    .sidebar-nav li a {
      display: block;
      text-decoration: none;
      color: #999;
    }

    .sidebar-nav li a:hover {
      color: #fff;
      background: rgba(255, 255, 255, 0.2);
    }

    .sidebar-nav > .sidebar-brand {
      font-size: 1.3em;
      line-height: 3em;
    }

  </style>
</head>
<body>
<div id="page-wrapper">
  <!-- 사이드바 -->
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a href="#">Menu</a>
      </li>
      <li><a href="/mainPage">메인</a></li>
      <li><a href="/saveProductPage">상품 등록</a></li>
      <li><a href="/paging2">매니저 조회</a></li>
      <li><a href="/paging">재고 조회</a></li>
      <li><a href="/inPage">입고 등록</a></li>
      <li><a href="/outPage">출고 등록</a></li>
      <li><a href="/paging3">입고기록 조회</a></li>
      <li><a href="/paging4">출고기록 조회</a></li>
      <li><a href="/myPage?memberEmail=${sessionScope.loginEmail}">내 정보</a></li>
      <li><a href="#">관리자 페이지</a></li>
      <li style="float: bottom"><h6 style="color: white"> ${sessionScope.loginEmail}님 환영합니다.</h6></li>
    </ul>
  </div>
  <!-- /사이드바 -->


</body>
</html>
