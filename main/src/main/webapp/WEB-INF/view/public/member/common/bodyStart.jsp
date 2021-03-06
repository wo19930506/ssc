<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>会员中心</title>
    <link rel="stylesheet" type="text/css" href="${resPath}member/css/reset.css?v=20170715">
    <link rel="stylesheet" type="text/css" href="${resPath}member/css/hpn-common.css">
    <link rel="stylesheet" type="text/css" href="${resPath}member/css/index.css?v=20170715">
    <link rel="stylesheet" type="text/css" href="${resPath}member/css/global.css">
    <script>
        <!--
//        window.onerror=function(){return true;}
        // -->
    </script>
    <jsp:include page="../../common/commonHeader.jsp" />
    <jsp:include page="../../common/customTheme.jsp" />
</head>
<body>