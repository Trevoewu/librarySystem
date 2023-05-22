<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/common/head.jsp"%>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>图书管理页面 >> 图书添加页面</span>
    </div>
    <div class="providerAdd">
        <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/jsp/provider.do">
            <input type="hidden" name="method" value="add">
            <!--div的class 为error是验证错误，ok是验证成功-->
            <div class="">
                <label for="proCode">ISBN：</label>
                <input type="text" name="proCode" id="proCode" value="">
                <!-- 放置提示信息 -->
                <font color="red"></font>
            </div>
            <div>
                <label for="proName">图书名称：</label>
                <input type="text" name="proName" id="proName" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="proContact">作者：</label>
                <input type="text" name="proContact" id="proContact" value="">
                <font color="red"></font>

            </div>
            <div>
                <label for="proPhone">定价：</label>
                <input type="text" name="proPhone" id="proPhone" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="proAddress">供应商地址：</label>
                <input type="text" name="proAddress" id="proAddress" value="">
            </div>
            <div>
                <label for="proFax">出版社：</label>
                <input type="text" name="proFax" id="proFax" value="">
            </div>
            <div>
                <label for="proDesc">分类：</label>
                <input type="text" name="proDesc" id="proDesc" value="">
            </div>
            <div class="providerAddBtn">
                <input type="button" name="add" id="add" value="保存">
                <input type="button" id="back" name="back" value="返回" >
            </div>
        </form>
    </div>
</div>
</section>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/provideradd.js"></script>
