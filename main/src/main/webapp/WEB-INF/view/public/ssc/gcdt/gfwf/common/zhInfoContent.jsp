<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="Betting wid1 reBetting" id="zhInfo">
    <div class="tabs">
        <ul>
            <li class="hy-info acti" data-opertype="tbzh">同倍追号</li>
            <li class="hy-info" data-opertype="fbzh">翻倍追号</li>
        </ul>
    </div>
    <div class="list_wrap_zh wdtz-list-rewith tbzh">

    </div>
    <div class="list_wrap_zh wdtz-list-rewith fbzh">

    </div>
</div>





