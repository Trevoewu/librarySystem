<%--
  Created by IntelliJ IDEA.
  User: trevorwu
  Date: 2023/5/11
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%
    session.setAttribute("title", " ");
    pageContext.setAttribute("title","applet");
    application.setAttribute("title", " ");//servletContext

  %>
  <!-- Design by foolishdeveloper.com -->
  <title>Glassmorphism login Form Tutorial in html css</title>
  <link href="https://fonts.googleapis.com/css2?family=Long+Cang&family=Noto+Serif+SC:wght@200;400;600;700&family=Roboto:ital,wght@1,500&family=Ysabeau:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/statics/css/index.css">
  <!--Stylesheet-->
  <style media="screen"></style>
</head>
<body>
<form action="${pageContext.request.contextPath}/login.do" name="actionForm" id="actionForm" method="post">
  <h3>图书管理系统</h3>
  <div class="info" id="error">${error}</div>
  <label for="username">Username</label>
  <input type="text" placeholder="用户名" id="username" name="userCode">

  <label for="password">Password</label>
  <input type="password" placeholder="密码" id="password" name="userPassword">
  <button class="btn">登录</button>
</form>
</body>
</html>
