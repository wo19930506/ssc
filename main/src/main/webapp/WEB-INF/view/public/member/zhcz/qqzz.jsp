
<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="org.apache.commons.lang3.time.DateFormatUtils" %>
<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="eveb_content">
    <c:import url="common/nav.jsp" />
    <div class="eveb_content">
        <form name="qqzzForm" novalidate="novalidate" onsubmit="return false;">
            <ul class="eveb_form">
                <li>
                    <span>充值金额：</span>
                    <input type="text" size="5" name="money" id="money" class="suminp wxMoney">
                    <label for="money" class="error" id="moneyError"> </label>
                </li>
                <li>
                    <span>请输入QQ昵称：</span>
                    <input type="text" size="5" name="userQqName" class="suminp" id="name">
                    <label for="name" class="error" id="nameError"></label>
                </li>
                <li>
                    <span>收款账号：</span>
                    <select id="payId" name="qqId">
                        <c:forEach items="${qqzzList.skInfoList}" var="item">
                            <option value="${item.id}"
                                    data-id="${item.id}"
                                    data-username="${item.username}"
                                    data-account="${item.account}"
                                    data-imageid="${item.imageId}"
                                    data-description="${item.description}"
                                    data-minmoney="${item.minMoney}"
                                    data-maxmoney="${item.maxMoney}">
                                    ${item.account}
                            </option>
                        </c:forEach>
                    </select>
                </li>
                <li>
                    <span>存款时间：</span>
                    <input type="text" size="5" name="time" class="suminp" id="time" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})" readonly style="width:120px;" value="<%=DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm")%>">
                    <label for="time" class="error" id="timeError"></label>
                </li>
                <li id="qqxx">
                </li>
            </ul>
            <div class="eveb_form_submit">
                <input type="submit" value="提交" class="button_medium button_1">
            </div>
        </form>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>
    function getIdInfo() {
        var obj = $("#payId").children('option:selected');
        var id = $(obj).data("id");
        var username = $(obj).data("username");
        var account = $(obj).data("account");
        var imageId = $(obj).data("imageid");
        var description = $(obj).data("description");

        if ( $("#payId").val() > 0) {
            var str = '';
            str += '<span>QQ昵称信息：</span>';
            str += '<div class="bankInfo">';
            if (imageId) {
                str += '<p>';
                str += '<img src="<%=basePath%>images/' + imageId + '" alt="" width="240" height="240" class="img-responsive __web-inspector-hide-shortcut__" style="margin:auto;">';
                str += '</p>';
                str += '<div class="name">请使用QQ昵称扫码完成付款，或转账给以下QQ昵称号</div>';
            }
            str += '<p>收款帐号：' + account + '</p>';
            str += '<p>收款人：' + username + '</p>';
            str += '<p>' + description + '</p>';
            str += '</div>';
            $("#qqxx").html(str);
        } else {
            $("#qqxx").html('');
        }
    }

    $(function () {
        $("#money").keyup(function () {
            var obj = this;
            obj.value = obj.value.replace(/[^\d.]/g, "");
            obj.value = obj.value.replace(/^\./g, "");
            obj.value = obj.value.replace(/^0/g, "");
            obj.value = obj.value.replace(/\.{2,}/g, ".");
            //确保只有一次小数点出现
            obj.value = obj.value.replace(".", "#").replace(/\./g, "").replace("#", ".");
            //确保小数点后是两位数字
            if (obj.value.indexOf(".") > 0 && obj.value.indexOf(".") + 4 <= obj.value.length) {
                obj.value = obj.value.substr(0, obj.value.indexOf(".") + 3);
            }
            $("#money").val(obj.value);
        });
        if ($("#payId").find("option").length > 1) {
            $("#payId option").eq(1).attr("selected","selected");
            getIdInfo();
        }

        $("#payId").change(function () {
            getIdInfo();
        });
        checkInput();

        $("form[name='qqzzForm']").submit(function() {
            if (checkInput()) {
                return;
            }

            ajaxRequest({
                url: "<%=basePath%>member/ajaxSubmitQqzz.json",
                data: $("form[name='qqzzForm']").serialize(),
                beforeSend: function() {
                    parent.showLoading();
                },
                success: function(json) {
                    if (json.result == 1) {
                        alert("提交成功");
                        document.location.href = CONFIG.BASEURL + "member/lsjl.html?module=ckjl";
                    } else {
                        alert("提交失败：" + json.description);
                    }
                    parent.hideLoading();
                }
            });
        });

        $("#money").keyup(function() {
            checkInput();
        });

        $("#name").keyup(function() {
            checkInput();
        });

        $("#time").on('input',function(e){
            checkInput();
        });
    });

    function checkInput() {
        var hasError = false;

        getIdInfo();
        var minMoney = parseFloat($("#payId").children('option:selected').data("minmoney"));
        var maxMoney = parseFloat($("#payId").children('option:selected').data("maxmoney"));

        if ($("#money").val() == '' || $("#money").val() < minMoney || $("#money").val() > maxMoney) {
            $("#moneyError").html(" * 单笔金额最低" + minMoney + "元，最高" + maxMoney + "元");
            hasError = true;
        } else {
            $("#moneyError").html('');
        }

        if ($("#name").val() == '') {
            $("#nameError").html(" * 请输入QQ昵称");
            hasError = true;
        } else {
            $("#nameError").html('');
        }

        if ($("#time").val() == '') {
            $("#timeError").html(" * 请填入存款时间");
            hasError = true;
        } else {
            $("#timeError").html('');
        }
        return hasError;
    }
</script>
<c:import url="../common/bodyEnd.jsp"/>