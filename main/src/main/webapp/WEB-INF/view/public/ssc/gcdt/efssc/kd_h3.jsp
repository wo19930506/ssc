<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-kd_q3')">前三跨度</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-kd_z3')">中三跨度</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-kd_h3')" class="active">后三跨度</a>
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
                    <td><strong class="color-red pl" data-plid="11168"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-0" data-plid="11168"></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11167"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-1" data-plid="11167"></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11166"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-2" data-plid="11166"></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11165"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-3" data-plid="11165"></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11164"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-4" data-plid="11164"></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11163"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-5" data-plid="11163"></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11162"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-6" data-plid="11162"></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11161"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-7" data-plid="11161"></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11160"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-8" data-plid="11160"></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11159"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三跨度-9" data-plid="11159"></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>


        <c:import url="common/bottom_zs.jsp"/>
    </div>

    <div class="fr main-right cl-10"></div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 16;
    var playId = 397;
    var playGroupName = '跨度';

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