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

<div class="cl-603">
    个定位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="个定位-0">
                <span>0</span>
                <span class="pl" data-plid="10577"></span>
            </td>
            <td data-name="个定位-1">
                <span>1</span>
                <span class="pl" data-plid="10576"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个定位-2">
                <span>2</span>
                <span class="pl" data-plid="10575"></span>
            </td>
            <td data-name="个定位-3">
                <span>3</span>
                <span class="pl" data-plid="10574"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个定位-4">
                <span>4</span>
                <span class="pl" data-plid="10573"></span>
            </td>
            <td data-name="个定位-5">
                <span>5</span>
                <span class="pl" data-plid="10572"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个定位-6">
                <span>6</span>
                <span class="pl" data-plid="10571"></span>
            </td>
            <td data-name="个定位-7">
                <span>7</span>
                <span class="pl" data-plid="10570"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个定位-8">
                <span>8</span>
                <span class="pl" data-plid="10569"></span>
            </td>
            <td data-name="个定位-9">
                <span>9</span>
                <span class="pl" data-plid="10568"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个定位-大">
                <span>大</span>
                <span class="pl" data-plid="10567"></span>
            </td>
            <td data-name="个定位-小">
                <span>小</span>
                <span class="pl" data-plid="10566"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个定位-单">
                <span>单</span>
                <span class="pl" data-plid="10565"></span>
            </td>
            <td data-name="个定位-双">
                <span>双</span>
                <span class="pl" data-plid="10564"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个定位-质">
                <span>质</span>
                <span class="pl" data-plid="10563"></span>
            </td>
            <td data-name="个定位-合">
                <span>合</span>
                <span class="pl" data-plid="10562"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 15;
    var playId = 383;
    var playGroupName = '一字定位';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        
        $(".cl-604 table tbody tr td.active").each(function() {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: $(this).data("name"),
                playPlId: $(this).find(".pl").data("plid"),
                playPl: $(this).find(".pl").data("pl")
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        });
        return betForm;
    }

    function getZhushu() {
        return $(".cl-604 table tbody tr td.active").length;
    }
</script>