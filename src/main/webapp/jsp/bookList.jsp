<%--
  Created by IntelliJ IDEA.
  User: trevorwu
  Date: 2023/5/28
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/book.css" />
</head>
<body>
<div id="large-th">
  <div class="container">
    <br>
    <div class="choose">
      <a href="#list-th"><i class="fa fa-th-list" aria-hidden="true"></i></a>
      <a href="#large-th"><i class="fa fa-th-large" aria-hidden="true"></i></a>
    </div>
    <div id="list-th">
      <c:forEach var="book" items="${bookList}" varStatus="status">
        <a href="/jsp/billadd.jsp">
          <div class="book read">
            <div class="cover">
              <img src="https://tse1-mm.cn.bing.net/th/id/OIP-C._8Hd3FiolQE09us1Maa_vwHaHa?pid=ImgDet&rs=1">
            </div>
            <div class="description">
              <p class="title">${book.bookName}<br>
                <span class="author">${book.proContact}</span></p>
              <input type="hidden" value="${book.id}">
            </div>
          </div>
        </a>
      </c:forEach>
    </div>
  </div>
</div>
</body>
</html>
