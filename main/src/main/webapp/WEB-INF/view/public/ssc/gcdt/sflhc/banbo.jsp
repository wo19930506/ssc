<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="108">号码</th>
                    <th width="80">赔率</th>
                    <th width="80">金额</th>
                    <th>号码</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td>红单</td>
                    <td><strong class="color-red pl" data-plid="13818"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红单" data-plid="13818"/></td>
                    <td>
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                </tr>
                <tr>
                    <td>红双</td>
                    <td><strong class="color-red pl" data-plid="13819"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红双" data-plid="13819"/></td>
                    <td>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-40"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                </tr>
                <tr>
                    <td>红大</td>
                    <td><strong class="color-red pl" data-plid="13822"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红大" data-plid="13822"/></td>
                    <td>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-40"></span>
                        <span class="ball-icon ball-45"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                </tr>
                <tr>
                    <td>红小</td>
                    <td><strong class="color-red pl" data-plid="13823"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红小" data-plid="13823"/></td>
                    <td>
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-24"></span>
                    </td>
                </tr>

                <tr>
                    <td>绿单</td>
                    <td><strong class="color-red pl" data-plid="13824"></strong></td>
                    <td><input type="text" class="table-txt" data-name="绿单" data-plid="13824"/></td>
                    <td>
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-39"></span>
                        <span class="ball-icon ball-43"></span>
                        <span class="ball-icon ball-49"></span>
                    </td>
                </tr>

                <tr>
                    <td>绿双</td>
                    <td><strong class="color-red pl" data-plid="13825"></strong></td>
                    <td><input type="text" class="table-txt" data-name="绿双" data-plid="13825"/></td>
                    <td>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-38"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                </tr>
                <tr>
                    <td>绿大</td>
                    <td><strong class="color-red pl" data-plid="13828"></strong></td>
                    <td><input type="text" class="table-txt" data-name="绿大" data-plid="13828"/></td>
                    <td>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-38"></span>
                        <span class="ball-icon ball-39"></span>
                        <span class="ball-icon ball-43"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                </tr>
                <tr>
                    <td>绿小</td>
                    <td><strong class="color-red pl" data-plid="13829"></strong></td>
                    <td><input type="text" class="table-txt" data-name="绿小" data-plid="13829"/></td>
                    <td>
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-22"></span>
                    </td>
                </tr>

                <tr>
                    <td>蓝单</td>
                    <td><strong class="color-red pl" data-plid="13830"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝单" data-plid="13830"/></td>
                    <td>
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-41"></span>
                        <span class="ball-icon ball-47"></span>
                    </td>
                </tr>
                <tr>
                    <td>蓝双</td>
                    <td><strong class="color-red pl" data-plid="13831"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝双" data-plid="13831"/></td>
                    <td>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-42"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                </tr>
                <tr>
                    <td>蓝大</td>
                    <td><strong class="color-red pl" data-plid="13834"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝大" data-plid="13834"/></td>
                    <td>
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-41"></span>
                        <span class="ball-icon ball-42"></span>
                        <span class="ball-icon ball-47"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                </tr>

                <tr>
                    <td>蓝小</td>
                    <td><strong class="color-red pl" data-plid="13835"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝小" data-plid="13835"/></td>
                    <td>
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-20"></span>
                    </td>
                </tr>

                <tr>
                    <td>红合单</td>
                    <td><strong class="color-red pl" data-plid="13820"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红合单" data-plid="13820"/></td>
                    <td>
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                </tr>
                <tr>
                    <td>红合双</td>
                    <td><strong class="color-red pl" data-plid="13821"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红合双" data-plid="13821"/></td>
                    <td>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-40"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                </tr>
                <tr>
                    <td>绿合单</td>
                    <td><strong class="color-red pl" data-plid="13826"></strong></td>
                    <td><input type="text" class="table-txt" data-name="绿合单" data-plid="13826"/></td>
                    <td>
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-38"></span>
                        <span class="ball-icon ball-43"></span>
                        <span class="ball-icon ball-49"></span>
                    </td>
                </tr>
                <tr>
                    <td>绿合双</td>
                    <td><strong class="color-red pl" data-plid="13827"></strong></td>
                    <td><input type="text" class="table-txt" data-name="绿合双" data-plid="13827"/></td>
                    <td>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-39"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                </tr>
                <tr>
                    <td>蓝合单</td>
                    <td><strong class="color-red pl" data-plid="13832"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝合单" data-plid="13832"/></td>
                    <td>
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-41"></span>
                        <span class="ball-icon ball-47"></span>
                        <span class="ball-icon ball-36"></span>
                    </td>
                </tr>
                <tr>
                    <td>蓝合双</td>
                    <td><strong class="color-red pl" data-plid="13833"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝合双" data-plid="13833"/></td>
                    <td>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-42"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right cl-10">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 22;
    var playId = 492;
    var playGroupName = '半波';

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