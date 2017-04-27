<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project28.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="cl-960">
    猜必出@<span class="pl red" data-plid="11683"></span>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-plid="11683"></span>
            </td>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-plid="11684"></span>
            </td>
        </tr>
        <tr>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-plid="11685"></span>
            </td>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-plid="11686"></span>
            </td>
        </tr>
        <tr>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-plid="11687"></span>
            </td>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-plid="11688"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 18;
    var playId = 444;
    var playGroupName = '猜必出';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".cl-604 table tbody tr td.active").each(function () {
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