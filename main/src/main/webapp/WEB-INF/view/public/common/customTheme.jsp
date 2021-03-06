<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script>
    var fengge1 = '${fengge_1}';
</script>
<%--自定义风格--%>
<c:if test="${not empty fengge_1}">
    <style>

        .reResulttBg{background: #${fengge_1};} <%--开奖结果版块--%>
        .process .layout .monty ul li,.process .layout .list_tems .date:after,.list ul li .slide p.acti,.headmemberbg{background: #${fengge_1};}
        .process .layout .list_tems .date span, .process .layout .list_tems .date h3,.eveb_amount span,.color-e77c3c,.eveb_setting_table a,.xieyiCss，.gcdtgd{color: #${fengge_1}!important;}
        .eveb_sub_nav_type a:hover, .eveb_sub_nav_type li.on a:link, .eveb_sub_nav_type li.on a:visited{color: #${fengge_1}!important;font-weight: 700;border-bottom-color: #e1e1e1;background: #f8f8f8;}
        .list ul li .slide p:hover,.letterbtn-bg{background: #${fengge_1}!important;color: white;}
        .list h3 a{background: #${fengge_1};border-bottom: 3px solid #a92309; height: 47px; line-height: 47px;}
        .help_l_menu li .t.sli{border-left: 5px solid #${fengge_1};}
        .withdraw-bg-input{border: 2px solid #${fengge_1}!important;}
        .clearBet_template .l span i{background: #${fengge_1} url(${resPath}/img/tm-mdl-icon.png) no-repeat!important; border-radius: 50%;background-position: 0 41%!important;}



        .eveb_nav_sub .on,.button_1, .button_1:link, .button_1:visited,.alert_col h5,.onlineService,.layui-layer-popup .layui-layer-title,.xzqd,.xzqdlskj,.game_name .box2_stage p span i.acti,.Betting,.Single,.list_ject ul li .Result p a.acti,.list_ject ul li .Result p a.acti:hover,.top{background:#${fengge_1}!important}
        .eveb_nav_sub .on a,.bankInfo .name,.help_l_menu .title p .sum,.help_r_main .light,.game_name .box2_stage p span i,.game_name .box1_name  p i,.Account p a.red{color:#${fengge_1}!important}
        .eveb_nav_sub .on,.game_name .box2_stage p span{border:1px solid #${fengge_1}!important;}
        .eveb_nav_sub .on,.game_name .box2_stage p span i.acti{color:#fff!important;}
        .eveb_nav_sub .on a{border-top:1px #${fengge_1} solid!important;}
        .eveb_nav_sub ul{border-bottom:1px #${fengge_1} solid!important;}
        #apptop{background: #${fengge_1}}
        .alert_col div::-webkit-scrollbar-thumb {background-color: #${fengge_1}!important;}
    </style>
</c:if>
<c:if test="${not empty fengge_2}">
    <style>


        .head div h5,.Betting .tabs ul li,.top .nav h1{background:#${fengge_2}!important}
        .jf_box .url a,.eveb_form label.error,.eveb_transfer_box .center_wallet .money,.eveb_transfer_box .wallet_list li p{color:#${fengge_2}!important}
        .Betting .tabs ul li.acti{background:#fff!important}
        .button_1, .button_1:link, .button_1:visited{border:1px solid #${fengge_2}!important;}
    </style>
</c:if>