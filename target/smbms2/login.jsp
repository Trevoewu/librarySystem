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

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/statics/css/index.css">
  <!--Stylesheet-->
  <style media="screen"></style>
</head>
<body>
<div class="background">
  <div class="shape"></div>
  <div class="shape"></div>
</div>
<form action="${pageContext.request.contextPath}/login.do" name="actionForm" id="actionForm" method="post">
  <h3>Login Here</h3>

  <label for="username">Username</label>
  <input type="text" placeholder="Email or Phone" id="username" name="userCode">

  <label for="password">Password</label>
  <input type="password" placeholder="Password" id="password" name="userPassword">
  <button>Log In</button>
</form>
</body>
</html>
