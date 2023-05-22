<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/2/2
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/common/head.jsp" %>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>图书管理页面</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath}/jsp/provider.do">
            <input name="method" value="query" type="hidden">
            <span>图书编码：</span>
            <input name="queryProCode" type="text" value="${queryProCode }">

            <span>图书名称：</span>
            <input name="queryProName" type="text" value="${queryProName }">

            <input value="查 询" type="submit" id="searchbutton">
            <a href="${pageContext.request.contextPath }/jsp/provideradd.jsp">添加图书</a>
        </form>
    </div>
    <!--图书操作表格-->
    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="10%">ISBN</th>
            <th width="20%">书名</th>
            <th width="10%">作者</th>
            <th width="10%">定价</th>
            <th width="10%">出版社</th>
            <th width="10%">创建时间</th>
            <th width="30%">操作</th>
        </tr>
        <c:forEach var="provider" items="${providerList}" varStatus="status">
            <tr>
                <td>
                    <span>${provider.proCode }</span>
                </td>
                <td>
                    <span>${provider.proName }</span>
                </td>
                <td>
                    <span>${provider.proContact}</span>
                </td>
                <td>
                    <span>${provider.proPhone}</span>
                </td>
                <td>
                    <span>${provider.proFax}</span>
                </td>
                <td>
					<span>
					<fmt:formatDate value="${provider.creationDate}" pattern="yyyy-MM-dd"/>
					</span>
                </td>
                <td>
                <span><a class="viewProvider" href="javascript:;"
                         proid=${provider.id } proname=${provider.proName }><img
                        src="${pageContext.request.contextPath }/statics/images/read.png" alt="查看"
                        title="查看"/></a></span>
                    <span><a class="modifyProvider" href="javascript:;"
                             proid=${provider.id } proname=${provider.proName }><img
                            src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="修改"
                            title="修改"/></a></span>
                    <span><a class="deleteProvider" href="javascript:;"
                             proid=${provider.id } proname=${provider.proName }><img
                            src="${pageContext.request.contextPath }/statics/images/schu.png" alt="删除" title="删除"/></a></span>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeProv">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该图书吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/providerlist.js"></script>