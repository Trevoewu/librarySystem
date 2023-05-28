<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/2/2
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/common/head.jsp"%>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>图书管理 >> 信息查看</span>
    </div>
    <div class="providerView">
        <p><strong>ISBN：</strong><span>${provider.proCode }</span></p>
        <p><strong>书名：</strong><span>${provider.proName }</span></p>
        <p><strong>作者：</strong><span>${provider.proContact }</span></p>
        <p><strong>定价：</strong><span>${provider.proPhone }</span></p>
        <p><strong>出版社：</strong><span>${provider.proFax }</span></p>
        <p><strong>分类：</strong><span>${provider.proDesc}</span></p>
        <div class="providerAddBtn">
            <input type="button" id="back" name="back" value="返回" >
        </div>
    </div>
</div>
</section>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/providerview.js"></script>
