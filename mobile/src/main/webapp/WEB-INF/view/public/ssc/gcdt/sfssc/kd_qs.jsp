<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="cl-603">
    前三跨度
</div>
<div class="cl-604 bili_w">
    <table>
        <tbody>

        <tr>
            <td data-name="前三跨度-0">
                <span>0</span>
                <span class="pl" data-plid="10286"></span>
            </td>
            <td data-name="前三跨度-1">
                <span>1</span>
                <span class="pl" data-plid="10285"></span>
            </td>
        </tr>
        <tr>
            <td data-name="前三跨度-2">
                <span>2</span>
                <span class="pl" data-plid="10284"></span>
            </td>
            <td data-name="前三跨度-3">
                <span>3</span>
                <span class="pl" data-plid="10283"></span>
            </td>
        </tr>
        <tr>
            <td data-name="前三跨度-4">
                <span>4</span>
                <span class="pl" data-plid="10282"></span>
            </td>
            <td data-name="前三跨度-5">
                <span>5</span>
                <span class="pl" data-plid="10281"></span>
            </td>
        </tr>
        <tr>
            <td data-name="前三跨度-6">
                <span>6</span>
                <span class="pl" data-plid="10280"></span>
            </td>
            <td data-name="前三跨度-7">
                <span>7</span>
                <span class="pl" data-plid="10279"></span>
            </td>
        </tr>
        <tr>
            <td data-name="前三跨度-8">
                <span>8</span>
                <span class="pl" data-plid="10278"></span>
            </td>
            <td data-name="前三跨度-9">
                <span>9</span>
                <span class="pl" data-plid="10277"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 13;
    var playId = 342;
    var playGroupName = '跨度';

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