<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>图书管理系统</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Long+Cang&family=Noto+Serif+SC:wght@200;400;600;700&family=Roboto:ital,wght@1,500&family=Ysabeau:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/public.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/book.css" />
    <link rel="shortcut icon" href="/statics/images/favicon.ico">
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>图书管理系统</h1>
    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: rgb(58, 71, 73)">${userSession.userName}</span> , 欢迎你！</p>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2023年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：推荐使用firefox 谷歌 edge safari浏览器）</a>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">

        <nav>
            <ul class="list">
                <li><a href="${pageContext.request.contextPath }/jsp/book.do">推荐</a></li>
                <li><a href="${pageContext.request.contextPath }/jsp/bill.do?method=query">借阅记录管理</a></li>
                <li><a href="${pageContext.request.contextPath }/jsp/provider.do?method=query">图书管理</a></li>
                <li><a href="${pageContext.request.contextPath }/jsp/user.do?method=query">用户管理</a></li>
                <li><a href="${pageContext.request.contextPath }/jsp/pwdmodify.jsp">密码修改</a></li>
                <li><a href="${pageContext.request.contextPath }/logout.do">退出系统</a></li>

            </ul>
        </nav>
    </div>
    <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
    <input type="hidden" id="referer" name="referer" value="<%=request.getHeader("Referer")%>"/>

