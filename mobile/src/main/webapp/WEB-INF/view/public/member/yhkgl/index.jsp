<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-member-yhkgl-index">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left" href="<%=basePath%>member/index.html">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">银行卡管理</h1>
        </header>
        <div class="content">
            <c:if test="${not empty userBankCardList}">
                <div class="row cl-100 cl-305">
                    <div class="col-100">选择默认银行卡</div>
                </div>
            </c:if>
            <div class="cl-313">
                <div class="list-block">
                    <ul>
                        <c:forEach items="${userBankCardList}" var="item">
                            <li>
                                <label class="label-checkbox item-content item-link">
                                    <input type="radio" name="userBankId"
                                           <c:if test="${item['default'] == 'true'}">checked</c:if> value="${item.id}"/>
                                    <div class="item-media">
                                        <span><i class="icon icon-form-checkbox"></i></span>&nbsp;
                                    </div>
                                    <a href="<%=basePath%>member/yhkgl/detail.html?userBankCardId=${item.id}"
                                       class="item-inner">
                                        <div class="item-subtitle">
                                            <c:choose>
                                                <c:when test="${fn:contains(item.bankName,'工商银行')}">
                                                    <span class="banklogo bank_icbc"></span>
                                                    <div class="bank_w"><strong>中国工商银行</strong></div>
                                                    <%--<img src="${resPath}img/ico54.png" alt="工商银行">--%>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'农业银行')}">
                                                    <span class="banklogo bank-abchina"></span>
                                                    <div class="bank_w"><strong>中国农业银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'中国银行')}">
                                                    <span class="banklogo bank-chinabank"></span>
                                                    <div class="bank_w"><strong>中国银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'建设银行')}">
                                                    <span class="banklogo bank-ccb"></span>
                                                    <div class="bank_w"><strong>中国建设银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'交通银行')}">
                                                    <span class="banklogo bank-comm"></span>
                                                    <div class="bank_w"><strong>交通银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'招商银行')}">
                                                    <span class="banklogo bank-cmb"></span>
                                                    <div class="bank_w"><strong>招商银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'兴业银行')}">
                                                    <span class="banklogo bank-cib"></span>
                                                    <div class="bank_w"><strong>兴业银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'浦发银行')}">
                                                    <span class="banklogo bank-spdb"></span>
                                                    <div class="bank_w"><strong>浦发银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'华夏银行')}">
                                                    <span class="banklogo bank-hxb"></span>
                                                    <div class="bank_w"><strong>华夏银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'中信银行')}">
                                                    <span class="banklogo bank-ecitic"></span>
                                                    <div class="bank_w"><strong>中信银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'光大银行')}">
                                                    <span class="banklogo bank-cebbank"></span>
                                                    <div class="bank_w"><strong>中国光大银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'广发银行')}">
                                                    <span class="banklogo bank-cgbchina"></span>
                                                    <div class="bank_w"><strong>广发银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'邮政储蓄银行')}">
                                                    <span class="banklogo bank-psbc"></span>
                                                    <div class="bank_w"><strong>中国邮政储蓄银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'平安银行')}">
                                                    <span class="banklogo bank-pingan"></span>
                                                    <div class="bank_w"><strong>平安银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'上海银行')}">
                                                    <span class="banklogo bank-bankofshanghai"></span>
                                                    <div class="bank_w"><strong>上海银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'民生银行')}">
                                                    <span class="banklogo bank-cmsb"></span>
                                                    <div class="bank_w"><strong>民生银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'北京银行')}">
                                                    <span class="banklogo bank-bjbank"></span>
                                                    <div class="bank_w"><strong>北京银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'深圳发展银行')}">
                                                    <span class="banklogo bank-sdbbank"></span>
                                                    <div class="bank_w"><strong>深圳发展银行</strong></div>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'宁波银行')}">
                                                    <span class="banklogo bank-nbbank"></span>
                                                    <div class="bank_w"><strong>宁波银行</strong></div>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="banklogo bank-qtbank"></span>
                                                    <div class="bank_w"><strong>${item.bankName}</strong></div>
                                                </c:otherwise>
                                            </c:choose>
                                                <%--<c:set property="tmpBankAccountLength" value="${fn:length(item.bankAccount)}" />--%>
                                            <%--<i class="bank_text" data-bank="${item.bankAccount}">--%>
                                                <%--&nbsp;****&nbsp;${fn:substring(item.bankAccount, fn:length(item.bankAccount) - 7, fn:length(item.bankAccount) - 3)}&nbsp;${fn:substring(item.bankAccount, fn:length(item.bankAccount) - 3, fn:length(item.bankAccount))}</i>--%>
                                            <i class="bank_text accountSubStr" data-bank="${item.bankAccount}">

                                            </i>
                                        </div>
                                        <font class="cl-1400">
                                            <c:if test="${item['default'] == 'true'}">
                                                默认
                                            </c:if>
                                        </font>
                                    </a>
                                </label>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="row cl-100 cl-305">
                <div class="col-100">添加银行卡</div>
            </div>
            <div class="cl-302 cl-312">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-media"><i class="icon icon-form-yhmc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">选择银行：</div>
                                    <div class="item-input">
                                        <input type="text" id='yhmc' placeholder="请选择银行" name="bankName"/>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zhmc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">支行名称：</div>
                                    <div class="item-input">
                                        <input type="text" placeholder="请填写支行名称" name="subBankName"/>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-kh"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">卡号：</div>
                                    <div class="item-input">
                                        <input pattern="[0-9]*" type="text" placeholder="请填写卡号" name="bankAccount"/>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media">
                                    <i class="icon icon-form-khd"></i>
                                </div>
                                <div class="item-inner">
                                    <div class="item-title label">开户地：</div>
                                    <div class="item-input">
                                        <input type="text" placeholder="请填写开户地" id="city-picker" name="location"/>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-khr"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">开户人：</div>
                                    <div class="item-input">
                                        <%--<input id="one" type="text" placeholder="请填写开户人" value="${userSession.name}"--%>
                                        <%--readonly/>--%>
                                        <font style="font-size: 0.66rem ;padding-left: 15px;">
                                            <c:out value="${userSession.name}"/>
                                        </font>

                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-kh"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">确认卡号：</div>
                                    <div class="item-input">
                                        <input pattern="[0-9]*" type="text" placeholder="请填写确认卡号"
                                               name="confirmBankAccount"/>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cl-102">
                <c:if test="${not empty userBankCardList}"> <a href="javascript:void(0)" id="btn-setDefault"
                                                               class="cl-103 cl-314 yhkgl_moren"
                                                               data-id="35">设为默认</a></c:if>
                <a href="javascript:void(0)" id="btn-add-bankcard" class="cl-103">确认添加</a>
            </div>
            <c:import url="../../common/copyright.jsp"/>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>