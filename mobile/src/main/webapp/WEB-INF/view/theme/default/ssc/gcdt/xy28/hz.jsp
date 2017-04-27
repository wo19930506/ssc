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
<div class="cl-604 xy28">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span class="txt_1"><font class="ball-4 ball-orange">0</font></span>
                <span class="pl" data-plid="9350"></span>
            </td>
            <td data-name="1">
                <span class="txt_1"><font class="ball-4 ball-orange">1</font></span>
                <span class="pl" data-plid="9351"></span>
            </td>
            <td data-name="2">
                <span class="txt_1"><font class="ball-4 ball-orange">2</font></span>
                <span class="pl" data-plid="9352"></span>
            </td>
        </tr>
        <tr>
            <td data-name="3">
                <span class="txt_1"><font class="ball-4 ball-orange">3</font></span>
                <span class="pl" data-plid="9353"></span>
            </td>
            <td data-name="4">
                <span class="txt_1"><font class="ball-4 ball-orange">4</font></span>
                <span class="pl" data-plid="9354"></span>
            </td>
            <td data-name="5">
                <span class="txt_1"><font class="ball-4 ball-orange">5</font></span>
                <span class="pl" data-plid="9355"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span class="txt_1"><font class="ball-4 ball-orange">6</font></span>
                <span class="pl" data-plid="9356"></span>
            </td>
            <td data-name="7">
                <span class="txt_1"><font class="ball-4 ball-orange">7</font></span>
                <span class="pl" data-plid="9357"></span>
            </td>
            <td data-name="8">
                <span class="txt_1"><font class="ball-4 ball-orange">8</font></span>
                <span class="pl" data-plid="9358"></span>
            </td>
        </tr>
        <tr>
            <td data-name="9">
                <span class="txt_1"><font class="ball-4 ball-orange">9</font></span>
                <span class="pl" data-plid="9359"></span>
            </td>
            <td data-name="10">
                <span class="txt_1"><font class="ball-4 ball-orange">10</font></span>
                <span class="pl" data-plid="9360"></span>
            </td>
            <td data-name="11">
                <span class="txt_1"><font class="ball-4 ball-orange">11</font></span>
                <span class="pl" data-plid="9361"></span>
            </td>
        </tr>
        <tr>
            <td data-name="12">
                <span class="txt_1"><font class="ball-4 ball-orange">12</font></span>
                <span class="pl" data-plid="9362"></span>
            </td>
            <td data-name="13">
                <span class="txt_1"><font class="ball-4 ball-orange">13</font></span>
                <span class="pl" data-plid="9363"></span>
            </td>
            <td data-name="14">
                <span class="txt_1"><font class="ball-4 ball-orange">14</font></span>
                <span class="pl" data-plid="9364"></span>
            </td>
        </tr>
        <tr>
            <td data-name="15">
                <span class="txt_1"><font class="ball-4 ball-orange">15</font></span>
                <span class="pl" data-plid="9365"></span>
            </td>
            <td data-name="16">
                <span class="txt_1"><font class="ball-4 ball-orange">16</font></span>
                <span class="pl" data-plid="9366"></span>
            </td>
            <td data-name="17">
                <span class="txt_1"><font class="ball-4 ball-orange">17</font></span>
                <span class="pl" data-plid="9367"></span>
            </td>
        </tr>
        <tr>
            <td data-name="18">
                <span class="txt_1"><font class="ball-4 ball-orange">18</font></span>
                <span class="pl" data-plid="9368"></span>
            </td>
            <td data-name="19">
                <span class="txt_1"><font class="ball-4 ball-orange">19</font></span>
                <span class="pl" data-plid="9369"></span>
            </td>
            <td data-name="20">
                <span class="txt_1"><font class="ball-4 ball-orange">20</font></span>
                <span class="pl" data-plid="9370"></span>
            </td>
        </tr>
        <tr>
            <td data-name="21">
                <span class="txt_1"><font class="ball-4 ball-orange">21</font></span>
                <span class="pl" data-plid="9371"></span>
            </td>
            <td data-name="22">
                <span class="txt_1"><font class="ball-4 ball-orange">22</font></span>
                <span class="pl" data-plid="9372"></span>
            </td>
            <td data-name="23">
                <span class="txt_1"><font class="ball-4 ball-orange">23</font></span>
                <span class="pl" data-plid="9373"></span>
            </td>
        </tr>
        <tr>
            <td data-name="24">
                <span class="txt_1"><font class="ball-4 ball-orange">24</font></span>
                <span class="pl" data-plid="9374"></span>
            </td>
            <td data-name="25">
                <span class="txt_1"><font class="ball-4 ball-orange">25</font></span>
                <span class="pl" data-plid="9375"></span>
            </td>
            <td data-name="26">
                <span class="txt_1"><font class="ball-4 ball-orange">26</font></span>
                <span class="pl" data-plid="9376"></span>
            </td>
        </tr>
        <tr>
            <td data-name="27">
                <span class="txt_1"><font class="ball-4 ball-orange">27</font></span>
                <span class="pl" data-plid="9377"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 7;
    var playId = 293;
    var playGroupName = '和值';

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