<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
                <span class="pl" data-plid="10856"></span>
            </td>
            <td data-name="前三跨度-1">
                <span>1</span>
                <span class="pl" data-plid="10855"></span>
            </td>
        </tr>
        <tr>
            <td data-name="前三跨度-2">
                <span>2</span>
                <span class="pl" data-plid="10854"></span>
            </td>
            <td data-name="前三跨度-3">
                <span>3</span>
                <span class="pl" data-plid="10853"></span>
            </td>
        </tr>
        <tr>
            <td data-name="前三跨度-4">
                <span>4</span>
                <span class="pl" data-plid="10852"></span>
            </td>
            <td data-name="前三跨度-5">
                <span>5</span>
                <span class="pl" data-plid="10851"></span>
            </td>
        </tr>
        <tr>
            <td data-name="前三跨度-6">
                <span>6</span>
                <span class="pl" data-plid="10850"></span>
            </td>
            <td data-name="前三跨度-7">
                <span>7</span>
                <span class="pl" data-plid="10849"></span>
            </td>
        </tr>
        <tr>
            <td data-name="前三跨度-8">
                <span>8</span>
                <span class="pl" data-plid="10848"></span>
            </td>
            <td data-name="前三跨度-9">
                <span>9</span>
                <span class="pl" data-plid="10847"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 15;
    var playId = 385;
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