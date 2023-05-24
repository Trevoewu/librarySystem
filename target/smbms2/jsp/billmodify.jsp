<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/common/head.jsp"%>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>借阅记录管理页面 >> 借阅记录修改页面</span>
    </div>
    <div class="providerAdd">
        <form id="billForm" name="billForm" method="post" action="${pageContext.request.contextPath }/jsp/bill.do">
            <input type="hidden" name="method" value="modifysave">
            <input type="hidden" name="id" value="${bill.id }">
            <div class="providerView">
                <p><strong>借阅记录编号：</strong><span>${bill.id }</span></p>
                <p><strong>金额：</strong><span>${bill.totalPrice }</span></p>
                <p><strong>图书：</strong><span>${bill.providerName }</span></p>
                <p><strong>创建日期：</strong><span>${bill.creationDate }</span></p>
                <p><strong>创建人：</strong><span>${bill.createdName }</span></p>
                <p><strong>上一次修改日期：</strong><span>${bill.modifyDate }</span></p>
                <p><strong>是否归还：</strong>
                    <span>
         		<c:if test="${bill.isPayment == 1}">未归还</c:if>
				<c:if test="${bill.isPayment == 2}">已归还</c:if>
			        </span>
            </div>
            <!--div的class 为error是验证错误，ok是验证成功-->
<%--            <div class="">--%>
<%--                <label for="billCode">借阅记录编码：</label>--%>
<%--                <input type="text" name="billCode" id="billCode" value="${bill.id }" readonly="readonly">--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label for="productName">图书：</label>--%>
<%--                <input type="text" name="productName" id="productName" value="${bill.providerName }">--%>
<%--                <font color="red"></font>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label for="productUnit">定价：</label>--%>
<%--                <input type="text" name="productUnit" id="productUnit" value="${bill.totalPrice }">--%>
<%--                <font color="red"></font>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label for="productCount">创建人：</label>--%>
<%--                <input type="text" name="productCount" id="productCount" value="${bill.createdName }">--%>
<%--                <font color="red"></font>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label for="totalPrice">总金额：</label>--%>
<%--                <input type="text" name="totalPrice" id="totalPrice" value="${bill.totalPrice }">--%>
<%--                <font color="red"></font>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label for="providerId">供应商：</label>--%>
<%--                <input type="hidden" value="${bill.providerId }" id="pid" />--%>
<%--                <select name="providerId" id="providerId">--%>
<%--                </select>--%>
<%--                <font color="red"></font>--%>
<%--            </div>--%>
            <div>
                <label >是否归还：</label>
                <c:if test="${bill.isPayment == 1 }">
                    <input type="radio" name="isPayment" value="1" checked="checked">未归还
                    <input type="radio" name="isPayment" value="2" >已归还
                </c:if>
                <c:if test="${bill.isPayment == 2 }">
                    <input type="radio" name="isPayment" value="1">未归还
                    <input type="radio" name="isPayment" value="2" checked="checked">已归还
                </c:if>
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
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/billmodify.js"></script>
