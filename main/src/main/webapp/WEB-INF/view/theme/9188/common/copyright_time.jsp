<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String hostName = request.getServerName().replace("www.", "");
%>
    <p style="font-family:arial;">
        2009 -
        <script>
        var date = new Date;
        var year=date.getFullYear();
        document.write(year);
    </script>&nbsp;&nbsp;&copy;${webName}</p>