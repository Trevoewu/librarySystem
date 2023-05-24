
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/common/head.jsp" %>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>借阅记录管理页面</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath }/jsp/bill.do">
            <input name="method" value="query" class="input-text" type="hidden">
            <span>用户：</span>
<%--            <input name="queryProductName" type="text" value="${queryProductName }">--%>
            <input name="queryProductName" type="text" value="${queryProductName }">
            <span>图书：</span>
            <select name="queryProviderId">
                <c:if test="${providerList != null }">
                    <option value="0">--请选择--</option>
                    <c:forEach var="provider" items="${providerList}">
                        <option
                                <c:if test="${provider.id == queryProviderId }">selected="selected"</c:if>
                                value="${provider.id}">${provider.proName}</option>
                    </c:forEach>
                </c:if>
            </select>

            <span>是否归还：</span>
            <select name="queryIsPayment">
                <option value="0">--请选择--</option>
                <option value="1" ${queryIsPayment == 1 ? "selected=\"selected\"":"" }>未归还</option>
                <option value="2" ${queryIsPayment == 2 ? "selected=\"selected\"":"" }>已归还</option>
            </select>
            <button class="button-55" role="button">搜索</button>
            <a class="button-55" id="addBtn" href="${pageContext.request.contextPath }/jsp/billadd.jsp">添加借阅记录</a>

        </form>
    </div>
    <!--账单表格 样式和图书公用-->
    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">

            <th width="20%">用户</th>
            <th width="10%">图书</th>
            <th width="10%">金额</th>
            <th width="10%">是否归还</th>
            <th width="10%">创建时间</th>
            <th width="30%">操作</th>
        </tr>
        <c:forEach var="bill" items="${billList }" varStatus="status">
            <tr>
                <td>
                    <span>${bill.createdName }</span>
                </td>
                <td>
                    <span>${bill.providerName}</span>
                </td>
                <td>
                    <span>${bill.totalPrice}</span>
                </td>
                <td>
					<span>
						<c:if test="${bill.isPayment == 1}">未归还</c:if>
						<c:if test="${bill.isPayment == 2}">已归还</c:if>
					</span>
                </td>
                <td>
					<span>
					<fmt:formatDate value="${bill.creationDate}" pattern="yyyy-MM-dd"/>
					</span>
                </td>
                <td>
                    <span><a class="viewBill" href="javascript:;" billid=${bill.id } billcc=${bill.billCode }><img
                            src="${pageContext.request.contextPath }/statics/images/read.png" alt="查看" title="查看"/></a></span>
                    <span><a class="modifyBill" href="javascript:;" billid=${bill.id } billcc=${bill.billCode }><img
                            src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>
                    <span><a class="deleteBill" href="javascript:;" billid=${bill.id } billcc=${bill.billCode }><img
                            src="${pageContext.request.contextPath }/statics/images/schu.png" alt="删除" title="删除"/></a></span>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该借阅记录吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/billlist.js"></script>
