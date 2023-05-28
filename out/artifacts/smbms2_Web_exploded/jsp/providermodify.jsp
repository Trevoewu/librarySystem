<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/common/head.jsp"%>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>图书管理页面 >> 图书修改页</span>
    </div>
    <div class="providerAdd">
        <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/jsp/provider.do">
            <input type="hidden" name="method" value="modifysave">
            <input type="hidden" name="id" value="${provider.id }"/>
            <!--div的class 为error是验证错误，ok是验证成功-->
            <div class="">
                <label for="proCode">ISBN：</label>
                <input type="text" name="proCode" id="proCode" value="${provider.proCode }" readonly="readonly">
            </div>
            <div>
                <label for="proName">图书名称：</label>
                <input type="text" name="proName" id="proName" value="${provider.proName }">
                <font color="red"></font>
            </div>

            <div>
                <label for="proContact">作者：</label>
                <input type="text" name="proContact" id="proContact" value="${provider.proContact }">
                <font color="red"></font>
            </div>

            <div>
                <label for="proPhone">定价：</label>
                <input type="text" name="proPhone" id="proPhone" value="${provider.proPhone }">
                <font color="red"></font>
            </div>

            <div>
                <label for="proAddress">供应商地址：</label>
                <input type="text" name="proAddress" id="proAddress" value="${provider.proAddress }">
            </div>

            <div>
                <label for="proFax">出版社：</label>
                <input type="text" name="proFax" id="proFax" value="${provider.proFax }">
            </div>

            <div>
                <label for="proDesc">分类：</label>
                <input type="text" name="proDesc" id="proDesc" value="${provider.proDesc }">
            </div>
            <div class="providerAddBtn">
                <input type="button" name="save" id="save" value="保存">
                <input type="button" id="back" name="back" value="返回" >
            </div>
        </form>
    </div>
</div>
</section>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/providermodify.js"></script>
