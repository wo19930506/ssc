<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<!-- content -->
<div class="lot-content clearfix">

    <div class="fl main-left">

        <div class="hd clearfix">
            <%--<div class="fl">--%>
                <%--快捷金额：--%>
                <%--<input type="text" class="txt" />--%>
            <%--</div>--%>
            <div class="fr">
                <div class="T-tab clearfix"  style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzzh_q5')">全五一字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzzh_q3')">前三一字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzzh_z3')">中三一字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzzh_h3')" class="active">后三一字组合</a>
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
                    <td><strong class="color-red pl" data-plid="7363"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-0" data-plid="7363"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="7375"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-1" data-plid="7375"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="7387"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-2" data-plid="7387"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="7399"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-3" data-plid="7399"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="7411"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-4" data-plid="7411"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7423"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-5" data-plid="7423"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7435"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-6" data-plid="7435"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7447"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-7" data-plid="7447"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7459"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-8" data-plid="7459"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7471"></strong></td>
                    <td><input type="text" class="table-txt" data-name="后三一字组合-9" data-plid="7471"/></td>
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
<c:import url="../common/subPageCommonJs.jsp" />

<script>

    var playGroupId = 3;
    var playId = 245;
    var playGroupName = '一字定位  ';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common tbody input").each(function() {
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