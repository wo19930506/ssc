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
<div class="cl-603">
   通选<span class="pl red"></span>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="豹子">
                <span style="float: left;padding-left: 184px">豹子</span>
                <span class="pl" data-plid="11664" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="顺子">
                <span style="float: left;padding-left: 184px">顺子</span>
                <span class="pl" data-plid="11665"  style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="对子">
                <span style="float: left;padding-left: 184px">对子</span>
                <span class="pl" data-plid="11666"  style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="三不同">
                <span style="float: left;padding-left: 184px">三不同</span>
                <span class="pl" data-plid="11667"  style="float: left"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 18;
    var playId = 438;
    var playGroupName = '通选';

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