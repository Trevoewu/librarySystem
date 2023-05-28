<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/common/head.jsp"%>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>借阅记录管理页面 >> 信息查看</span>
    </div>
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
        </p>
        <div class="providerAddBtn">
            <input type="button" id="back" name="back" value="返回" >
        </div>
    </div>
</div>
</section>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/billview.js"></script>
