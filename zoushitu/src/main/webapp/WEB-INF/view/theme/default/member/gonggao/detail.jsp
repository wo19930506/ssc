<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-gonggao-detail">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">公告</h1>
        </header>
        <div class="content">
            <div class="row cl-100">
                <div class="col-100">${data.title}</div>
            </div>
            <div class="cl-309 cl-506">
                ${data.content}
                <div style="text-align:right;">
                    发布时间：<fmt:formatDate value="${data.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>