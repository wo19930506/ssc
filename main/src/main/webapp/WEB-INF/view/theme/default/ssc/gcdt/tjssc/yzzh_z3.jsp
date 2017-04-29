<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <%--<div class="fl">--%>
                <%--快捷金额：--%>
                <%--<input type="text" class="txt"/>--%>
            <%--</div>--%>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('tjssc-yzzh_q5')">全五一字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('tjssc-yzzh_q3')">前三一字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('tjssc-yzzh_z3')" class="active">中三一字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('tjssc-yzzh_h3')">后三一字组合</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>0</strong></td>
                    <td><strong class="color-red pl" data-plid="7358"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-0" data-plid="7358"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="7370"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-1" data-plid="7370"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="7382"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-2" data-plid="7382"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="7394"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-3" data-plid="7394"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="7406"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-4" data-plid="7406"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7418"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-5" data-plid="7418"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7430"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-6" data-plid="7430"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7442"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-7" data-plid="7442"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7454"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-8" data-plid="7454"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7466"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三一字组合-9" data-plid="7466"/></td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="21">
                        <c:import url="../common/toptouzhu.jsp">
                            <c:param name="flagGroup" value="11"/>
                            <c:param name="navGroup" value="1"/>
                        </c:import>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
        <c:import url="common/bottom_zs.jsp"/>
    </div>
    <div class="fr main-right cl-10 re-cl-10">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 2;
    var playId = 233;
    var playGroupName = '中三一字组合';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common input").each(function () {
            var inputMoney = $(this).val();
            if (typeof inputMoney != 'undefined' && inputMoney != '') {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: $("#number").data("number"),
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: $(this).data("name"),
                    playPlId: $(this).data("plid"),
                    playPl: $(this).data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            }
        });
        return betForm;
    }

    function checkZhudan() {
        return true;
    }
</script>