<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="wrap">
    <div class="cus_common zuxhzStr">
        <div class="wan_top">
            <span class="wanwei">和值</span>
        </div>
        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz n0" onclick="danSelect(this)">0</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n1" onclick="danSelect(this)">1</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n2" onclick="danSelect(this)">2</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n3" onclick="danSelect(this)">3</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n4" onclick="danSelect(this)">4</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n5" onclick="danSelect(this)">5</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n6" onclick="danSelect(this)">6</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n7" onclick="danSelect(this)">7</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n8" onclick="danSelect(this)">8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n9" onclick="danSelect(this)">9</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n10" onclick="danSelect(this)">10</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n11" onclick="danSelect(this)">11</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n12" onclick="danSelect(this)">12</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n13" onclick="danSelect(this)">13</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n14" onclick="danSelect(this)">14</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n15" onclick="danSelect(this)">15</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n16" onclick="danSelect(this)">16</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n17" onclick="danSelect(this)">17</span>
            </div>
        </div>
    </div>
</div>