<%@ page import="project38.ssc.mobile.interceptors.BasePathInterceptor" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<ul class="Bott">
    <li>
        <a>
            <img src=""/>
            <img src=""/>
        </a>
    </li>
    <li>
        <a>

        </a>
    </li>
    <li>
        <a>

        </a>
    </li>
    <li>
        <a>

        </a>
    </li>
    <li>
        <a>

        </a>
    </li>
</ul>