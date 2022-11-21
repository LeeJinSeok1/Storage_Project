<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오후 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
<jsp:include page="layout/sideBar.jsp" flush="false"></jsp:include>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<div style="padding-top: 100px">
<h1 style="text-align: center">회원가입이 완료되었습니다.</h1> <br>
<h2 style="text-align: center">이제 Storage_Program 을 </h2> <br>
<h2 style="text-align: center">사용 할 수 있습니다! </h2> <br>
  <h2 style="text-align: center">로그인하러 가기 <a href="/loginPage">클릭</a> </h2> <br>
</div>
</body>
</html>
